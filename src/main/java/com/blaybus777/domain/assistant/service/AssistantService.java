package com.blaybus777.domain.assistant.service;

import com.blaybus777.common.exception.BusinessException;
import com.blaybus777.common.response.ErrorCode;
import com.blaybus777.domain.assistant.Assistant;
import com.blaybus777.domain.assistant.History;
import com.blaybus777.domain.assistant.controller.request.AIQuestionRequest;
import com.blaybus777.domain.assistant.controller.response.ListQuestionResponse;
import com.blaybus777.domain.assistant.controller.response.QuestionDto;
import com.blaybus777.domain.assistant.dto.FileInputBody;
import com.blaybus777.domain.assistant.dto.FileRequestInputList;
import com.blaybus777.domain.assistant.dto.ImageInputBody;
import com.blaybus777.domain.assistant.dto.ImageRequestInputList;
import com.blaybus777.domain.assistant.dto.InputBody;
import com.blaybus777.domain.assistant.dto.Question;
import com.blaybus777.domain.assistant.dto.TextFileRequestInputList;
import com.blaybus777.domain.assistant.dto.TextRequestBody;
import com.blaybus777.domain.assistant.dto.TextRequestInputList;
import com.blaybus777.domain.assistant.repository.AssistantRepository;
import com.blaybus777.domain.assistant.repository.HistoryRepository;
import com.blaybus777.domain.model.Model;
import com.blaybus777.domain.model.repository.ModelRepository;
import com.blaybus777.domain.part.Part;
import com.blaybus777.domain.part.controller.response.ListPartResponse;
import com.blaybus777.domain.part.repository.PartRepository;
import com.blaybus777.domain.part.service.PartService;
import com.blaybus777.domain.s3_file.service.S3FileService;
import com.blaybus777.util.enums.AIContentType;
import com.blaybus777.util.enums.AIRole;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import jakarta.transaction.Transactional;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import java.util.stream.Collectors;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.reactive.function.client.WebClient;

@Service
@RequiredArgsConstructor
public class AssistantService {

    private final AssistantRepository assistantRepository;
    private final HistoryRepository historyRepository;
    private final S3FileService s3Service;
    private final WebClient webClient;
    private final ObjectMapper objectMapper;

    private final ModelRepository modelRepository;
    private final PartRepository partRepository;
    private final PartService partService;

    /**
     * AI 답변 조회
     * @return AI 답변 반환
     */
    public ListQuestionResponse question(List<MultipartFile> files, AIQuestionRequest request) {
        List<QuestionDto> responseList = new ArrayList<>();

        Model model = modelRepository.findById(request.modelId())
            .orElseThrow(() -> new BusinessException(ErrorCode.ENTITY_NOT_FOUND));

        Part part = null;
        if (!request.partId().equals(0L)) {
            part = partRepository.findById(request.partId())
                .orElseThrow(() -> new BusinessException(ErrorCode.ENTITY_NOT_FOUND));
        }

        // 퀵액션
        AtomicReference<String> res = new AtomicReference<>();
        if (request.contentType().equals(AIContentType.QUICK)) {
            ListPartResponse listPartRes = partService.getPartList(request.modelId(), false);
            listPartRes.getItems().forEach(item -> {
                if (item.getHierarchyLevel() == 1 && item.getCode().equals(request.code())) {
                    Long partId = item.getPartId();
                    Part partEntity = partRepository.findById(partId)
                        .orElseThrow(() -> new BusinessException(ErrorCode.ENTITY_NOT_FOUND));

                    try {
                        JsonNode json = objectMapper.readTree(partEntity.getQuickMetadata());

                        Map<String, Question> questions = objectMapper.convertValue(
                                json.get("questions"),
                                new TypeReference<Map<String, Question>>() {}
                        );

                        List<Question> questionList = new ArrayList<>(questions.values());
                        questionList.forEach(question -> {
                            if (question.getQuestion().equals(request.question())) {
                                res.set(question.getAnswer());
                            }
                        });
                    } catch (JsonProcessingException e) {
                        throw new RuntimeException(e);
                    }
                }
            });

            Assistant assistant = assistantRepository.findById(model.getModelId()).orElse(null);
            if (assistant == null) { // 처음이라면 생성하고 ID 반환
                assistantRepository.save(
                    Assistant.builder()
                        .assistantId(model.getModelId())
                        .model(model)
                        .previousResId(null)
                        .build()
                );

                assistant = assistantRepository.findById(model.getModelId())
                        .orElseThrow(() -> new BusinessException(ErrorCode.ENTITY_NOT_FOUND));
            } else {
                assistant.setPreviousResId(null);
                assistantRepository.save(assistant);
            }

            // History 저장
            historySave(assistant, part, request.question(), null, AIRole.USER, request.contentType());
            historySave(assistant, part, res.get(), null, AIRole.ASSISTANT, AIContentType.QUICK);

            // 최종 API 응답 객체
            responseList.add(
                QuestionDto.builder()
                    .assistantId(model.getModelId())
                    .role(AIRole.ASSISTANT)
                    .modelId(model.getModelId())
                    .partId(part == null ? null : part.getPartId())
                    .question(request.question())
                    .promptRes(res.get())
                    .build()
            );

            return ListQuestionResponse.builder()
                    .items(responseList)
                    .page(responseList.size())
                    .build();
        } else { // 퀵액션이 아닐 때
            // 요청 객체 목록
            List<Object> requestJson = new ArrayList<>();
            List<String> fileList = new ArrayList<>();

            if (files != null && !files.isEmpty()) {
                // 파일(이미지/PDF)
                files.forEach(file -> {
                    String s3FileUrl = s3Service.uploadFile(file);
                    fileList.add(s3FileUrl);

                    switch (Objects.requireNonNull(file.getContentType())) {
                        case "text/plain" -> requestJson.add(
                            TextFileRequestInputList.builder()
                                .role("user")
                                .content(
                                    List.of(
                                        InputBody.builder()
                                            .type("input_text")
                                            .text(readMultipartText(file))
                                            .build()
                                    )
                                ).build()
                        );
                        case "image/jpeg", "image/png" -> requestJson.add(
                            ImageRequestInputList.builder()
                                .role("user")
                                .content(
                                    List.of(
                                        ImageInputBody.builder()
                                            .type("input_image")
                                            .image_url(s3FileUrl)
                                            .build()
                                    )
                                ).build()
                        );
                        case "application/pdf" -> requestJson.add(
                            FileRequestInputList.builder()
                                .role("user")
                                .content(
                                    List.of(
                                        FileInputBody.builder()
                                            .type("input_file")
                                            .file_url(s3FileUrl)
                                            .build()
                                    )
                                ).build()
                        );
                        default -> throw new IllegalStateException(
                                "Unexpected value: " + Objects.requireNonNull(
                                        file.getContentType()));
                    }
                });
            }

            boolean isModel = (part == null);

            // 특정 메타데이터 파일
            requestJson.add(
                ImageRequestInputList.builder()
                    .role("user")
                    .content(
                        List.of(
                            ImageInputBody.builder()
                                .type("input_image")
                                .image_url(isModel ? model.getImageUrl() : part.getImageUrl())
                                .build()
                        )
                    ).build()
            );
            requestJson.add(
                TextRequestInputList.builder()
                    .role("user")
                    .content(
                        List.of(
                            InputBody.builder()
                                .type("input_text")
                                .text(isModel ? model.getMetadata() : part.getMetadata())
                                .build()
                        )
                    ).build()
            );

            // 질문
            requestJson.add(
                TextRequestInputList.builder()
                    .role("user")
                    .content(
                        List.of(
                            InputBody.builder()
                                .type("input_text")
                                .text("질문: " + request.question())
                                .build()
                        )
                    ).build()
            );

            Assistant assistant = assistantRepository.findById(model.getModelId()).orElse(null);

            // 이전 내용 기억 메모리 ID 얻기
            String previousResId = null;
            if (assistant != null) {
                previousResId = assistant.getPreviousResId();
            }

            // LLM API에 보낼 요청 객체
            String json;
            String system = """
                       당신의 이름은 AI Tutor이며, 3D 공학 제품 학습을 돕는 데 특화된 학습 지원 전문가이다.
                       당신은 현재 화면에 표시된 단일 3D 오브젝트를 전제로 공학적·학술적 설명을 제공한다.
                       당신은 화면 이해를 위해 다음의 정보를 함께 사용한다.
                       시스템에 전달된 3D 오브젝트 메타데이터
                       AI가 현재 화면을 통해 직접 인식한 시각적 특징
                       3D 오브젝트 메타데이터는 오브젝트의 구조, 부품 구성, 명칭, 연결 관계, 기능을 판단하기 위한 최우선 기준 정보로 사용한다.
                       메타데이터에 포함된 정보로 설명 가능한 내용은 반드시 이를 기준으로 일관성 있게 설명한다.
                       메타데이터에 명시되지 않은 공학적 특성(재질의 일반적 성질, 작동 원리, 설계 의도, 관련 이론, 사용 맥락 등)에 대해서는 다음의 기준을 따른다.
                       • 일반적인 공학 지식
                       • 합리적인 공학적 추론
                       • 필요 시 검색 기반의 최신·표준 공학 정보
                       단, 이러한 보완 설명은 현재 화면의 오브젝트 구조 및 메타데이터와 공학적으로 타당한 범위 내에서만 제공한다.
                       AI의 시각적 인식 결과는 메타데이터를 보완하기 위한 보조 근거로만 사용한다.
                       두 정보가 충돌할 경우, 메타데이터에 기반한 판단을 항상 우선한다.
                       당신은 인식된 오브젝트를 전제로, 해당 오브젝트와 직접적으로 연관된 공학적·학술적 질문에 대해 정확하고 교육적인 답변을 제공해야 한다.
                       대상 학습자는 초급~고급 수준의 대학교 공학 전공자 및 직업훈련소 수강생이다.
                    
                       기본 규칙
                       존댓말을 사용한다.
                       차분하고 논리적인 어조를 유지한다.
                       필요한 경우 간단한 수식이나 물리 법칙의 이름을 제시하되, 반드시 개념 설명을 함께 제공한다.
                       답변은 문단 구성과 내용 전개만으로 논리 흐름이 드러나도록 구성한다.
                       답변의 첫 문장은 주제에 대한 결론 또는 결과를 자연스러운 서술형 문장으로 바로 제시한다.
                    
                       행동 원칙
                       항상 현재 화면에 보이는 오브젝트를 전제로 설명하되, 오브젝트의 명칭이나 “현재 화면에 보이는 ○○은”과 같은 표현을 반복적으로 사용하지 않는다.
                       메타데이터에 포함된 정보는 사실로서 단정적으로 설명한다.
                       메타데이터에 없는 내용은 일반적인 공학 원리 또는 설계 관점에서 설명하되, 추측임이 드러나는 표현은 사용하지 않는다.
                       설명의 깊이는 학습자의 질문 수준에 따라 조절한다.
                       o 초급: 직관적 설명과 간단한 예시
                       o 중급: 구조·작동 원리 및 기본 공식
                       o 고급: 수식, 설계 의사결정, 공학적 트레이드오프
                       오브젝트의 형태, 구조, 부품 간 연결 관계를 항상 우선적으로 고려한다.
                       하나의 질문에 대해 여러 원인, 영향, 문제점, 설계 고려사항을 설명하는 경우, 가독성과 학습 효율이 더 높다고 판단되면 문단형 설명 대신 불릿 포인트 형식으로 정리한다.
                    
                       제약 사항
                       메타데이터 및 화면에서 확인할 수 없는 요소를 임의로 가정하지 않는다.
                       정보가 불충분한 경우, 단정하지 말고 설명의 한계를 명확히 드러낸다.
                       오브젝트 및 질문과 직접적인 관련이 없는 이론이나 용어는 설명하지 않는다.
                       학습자의 질문이 불명확한 경우, 가장 가능성 높은 해석을 제시한 뒤 공학적으로 의미 있는 추가 질문 1개만 제시한다.
                       화면과 무관한 질문에 대해서는 다음 순서를 따른다.
                       현재 화면과 직접적인 연관성이 없음을 정중히 밝힌다.
                       억지로 공학적 추론이나 연관 사례를 생성하지 않는다..
                       연결이 어려운 경우, 화면과 관련된 질문을 공손하게 요청한다.
                    
                       다음 행동을 금지합니다:
                       - "메타데이터"라는 단어 금지
                       - 의미 추측
                       - 일반적인 공학 상식으로 보완
                       - 가장 가능성이 높은 해석 제시
                    
                       정보가 없거나 불명확하면 반드시 다음 형식으로 답하세요:
                       "현재 화면의 오브젝트 및 공학적 학습 주제와는 직접적인 연관이 없는 질문입니다. 화면과 관련된 공학적 질문을 해 주시면 설명드리겠습니다."
                    """;

            TextRequestBody requestBody = TextRequestBody.builder()
                    .model("gpt-5-mini")
                    .previous_response_id(previousResId)
                    .instructions(system)
                    .input(requestJson)
                    .tools(List.of(
                        Map.of("type", "web_search")
                    )).build();

            try {
                // DTO를 JSON으로 변환
                json = objectMapper.writerWithDefaultPrettyPrinter().writeValueAsString(requestBody);
            } catch (Exception e) {
                e.printStackTrace();
                throw new BusinessException(ErrorCode.INTERNAL_SERVER_ERROR);
            }

            // LLM API 호출
            String modelResponse = webClient.post()
                    .uri("/responses")
                    .bodyValue(json)
                    .retrieve()
                    .onStatus(
                    status -> status.isError(),
                    response -> response.bodyToMono(String.class)
                            .map(body -> new RuntimeException("OpenAI Error: " + body))
                    )
                    .bodyToMono(String.class)
                    .block();

            try {
                JsonNode jsonNode = objectMapper.readTree(modelResponse);
                String previous_response_id = jsonNode.get("id").asText(); // 이전 내용 기억 ID 얻기

                if (assistant == null) { // 처음이라면 생성하고 ID 반환
                    assistantRepository.save(
                        Assistant.builder()
                            .assistantId(model.getModelId())
                            .model(model)
                            .previousResId(previous_response_id)
                            .build()
                    );

                    assistant = assistantRepository.findById(model.getModelId())
                            .orElseThrow(() -> new BusinessException(ErrorCode.ENTITY_NOT_FOUND));
                } else {
                    assistant.setPreviousResId(previous_response_id);
                    assistantRepository.save(assistant);
                }

                String response = jsonNode.get("output").get(1).get("content").get(0).get("text").asText();

                // History 저장
                historySave(assistant, part, request.question(), fileList, AIRole.USER, request.contentType());
                historySave(assistant, part, response, null, AIRole.ASSISTANT, AIContentType.AI_RESPONSE);

                // 최종 API 응답 객체
                responseList.add(
                    QuestionDto.builder()
                        .assistantId(model.getModelId())
                        .role(AIRole.ASSISTANT)
                        .modelId(model.getModelId())
                        .partId(part == null ? null : part.getPartId())
                        .question(request.question())
                        .promptRes(response)
                        .files(fileList)
                        .build()
                );

                return ListQuestionResponse.builder()
                        .items(responseList)
                        .page(responseList.size())
                        .build();
            } catch (Exception e) {
                e.printStackTrace();
                throw new BusinessException(ErrorCode.INTERNAL_SERVER_ERROR);
            }
        }
    }

    public ListQuestionResponse history(Long modelId) {
        List<History> historyList = historyRepository.findByAssistant_AssistantId(modelId);

        List<QuestionDto> responseList = new ArrayList<>();
        historyList.forEach(history -> {
            responseList.add(
                QuestionDto.builder()
                    .historyId(history.getHistoryId())
                    .assistantId(history.getAssistant().getAssistantId())
                    .role(history.getRole())
                    .modelId(modelId)
                    .partId(history.getPartId() == null ? null : history.getPartId().getPartId())
                    .message(history.getMessage())
                    .files(new ArrayList<>(history.getFiles()))
                    .build()
            );
        });

        // 오름차순 정렬
        responseList.sort(Comparator.comparingLong(QuestionDto::getHistoryId));

        return ListQuestionResponse.builder()
                .items(responseList)
                .page(responseList.size())
                .build();
    }

    @Transactional
    public void delete(Long modelId) {
        historyRepository.deleteHistoryByAssistantAssistantId(modelId);
        assistantRepository.deleteById(modelId);
    }

    public String readMultipartText(MultipartFile file) {
        try (BufferedReader reader = new BufferedReader(
                new InputStreamReader(file.getInputStream(), StandardCharsets.UTF_8))) {

            return reader.lines()
                    .collect(Collectors.joining("\n"));

        } catch (IOException e) {
            throw new RuntimeException("파일 읽기 실패", e);
        }
    }
    private void historySave(Assistant assistant, Part part, String question, List<String> fileList, AIRole role, AIContentType contentType) {
        History history = History.builder()
                .assistant(assistant)
                .partId(part)
                .message(question)
                .role(role)
                .type(contentType)
                .files(fileList)
                .build();
        historyRepository.save(history);
    }

}
