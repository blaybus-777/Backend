package com.blaybus777.domain.assistant.controller.request;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "AI 질문 요청 객체")
public record AIQuestionRequest(

    @Schema(description = "학습 대상 모델 ID")
    Long modelId,

    @Schema(description = "부품 ID")
    Long partId,

    @Schema(description = "질문")
    String question
) { }
