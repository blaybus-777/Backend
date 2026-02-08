package com.blaybus777.domain.assistant.controller;

import com.blaybus777.common.response.ApiResponse;
import com.blaybus777.domain.assistant.controller.request.AIQuestionRequest;
import com.blaybus777.domain.assistant.controller.request.AIQuickRequest;
import com.blaybus777.domain.assistant.controller.response.ListQuestionResponse;
import com.blaybus777.domain.assistant.service.AssistantService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/v1/ai")
@Tag(name = "AI 어시스턴트 관련 API")
public class AssistantController {

    private final AssistantService assistantService;

    /**
     * AI 질문 API
     * @param file 이미지/PDF 파일
     * @param request AIQuestionRequest 객체
     * @return ListQuestionResponse 객체 반환
     */
    @PostMapping(value = "/question", consumes = { MediaType.MULTIPART_FORM_DATA_VALUE })
    @Operation(summary = "AI 질문", description = "AI 질문/답변 엔드포인트")
    public ApiResponse<ListQuestionResponse> question(
        @RequestPart MultipartFile file,
        @RequestBody AIQuestionRequest request
    ) {
        return ApiResponse.success(null);
    }

    /**
     * AI 퀵액션 질문 API
     * @param request AIQuickRequest 객체
     * @return AI 퀵액션 질문에 대한 답변 반환
     */
    @PostMapping(value = "/quick-action/question")
    @Operation(summary = "AI 퀵액션 질문", description = "AI 퀵액션 질문/답변 엔드포인트")
    public ApiResponse<ListQuestionResponse> question(@RequestBody AIQuickRequest request) {
        return ApiResponse.success(null);
    }

    /**
     * 특정 AI 채팅 기록 조회 API
     * @param modelId 학습 대상 모델 ID
     * @return 채팅 기록 반환
     */
    @GetMapping(value = "/history/list/{modelId}")
    @Operation(summary = "채팅 기록 조회", description = "채팅 기록 조회 엔드포인트")
    public ApiResponse<ListQuestionResponse> question(@PathVariable Long modelId) {
        return ApiResponse.success(null);
    }

    /**
     * 특정 AI 채팅 초기화 API
     * @param modelId 학습 대상 모델 ID
     * @return 없음
     */
    @DeleteMapping(value = "/reset/{modelId}")
    @Operation(summary = "채팅 초기화", description = "채팅 초기화 엔드포인트")
    public ApiResponse<Void> reset(@PathVariable Long modelId) {
        return ApiResponse.success(null);
    }
}
