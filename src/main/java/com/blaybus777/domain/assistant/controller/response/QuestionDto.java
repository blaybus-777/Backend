package com.blaybus777.domain.assistant.controller.response;

import com.blaybus777.util.enums.AIRole;
import io.swagger.v3.oas.annotations.media.Schema;
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

    @Schema(description = "학습 대상 모델 ID")
    Long modelId;

    @Schema(description = "부품 ID")
    Long partId;

    @Schema(description = "역할")
    AIRole role;

    @Schema(description = "질문")
    String question;

    @Schema(description = "AI 응답")
    String promptRes;
}
