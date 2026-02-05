package com.blaybus777.domain.note.controller.request;

import io.swagger.v3.oas.annotations.media.Schema;

@Schema(description = "메모 수정 요청 객체")
public record UpdateNoteRequest(

    @Schema(description = "제목")
    String title,

    @Schema(description = "내용")
    String content
) { }