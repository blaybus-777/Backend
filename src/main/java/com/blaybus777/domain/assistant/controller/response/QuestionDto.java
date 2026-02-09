package com.blaybus777.domain.assistant.controller.response;

import com.blaybus777.util.enums.AIRole;
import io.swagger.v3.oas.annotations.media.Schema;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
@Schema(description = "질문 응답 DTO")
public class QuestionDto {

    @Schema(description = "AI 어시스턴트 ID")
    Long assistantId;

    @Schema(description = "학습 대상 모델 ID")
    Long modelId;

    @Schema(description = "부품 ID")
    Long partId;

    @Schema(description = "기록 ID")
    Long historyId;

    @Schema(description = "역할")
    AIRole role;

    @Schema(description = "파일 목록")
    List<String> files;

    @Schema(description = "질문")
    String question;

    @Schema(description = "AI 응답")
    String promptRes;

    @Schema(description = "기록 조회 할 시")
    String message;
}
