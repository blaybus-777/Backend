package com.blaybus777.domain.note.controller.request;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "메모 생성 요청 객체")
public record NoteCreateRequest(

    @Schema(description = "모델 ID", type = "integer", format = "int64", example = "1")
    Long modelId,

    @Schema(description = "제목")
    String title,

    @Schema(description = "내용")
    String content
) { }
