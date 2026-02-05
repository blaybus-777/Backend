package com.blaybus777.domain.note.controller.response;

import io.swagger.v3.oas.annotations.media.Schema;
import java.time.LocalDate;
import lombok.Builder;

@Builder
@Schema(description = "메모 정보 DTO")
public class NoteDto {

    @Schema(description = "메모 ID")
    private Long noteId;

    @Schema(description = "모델 ID")
    private Long modelId;

    @Schema(description = "제목")
    private String title;

    @Schema(description = "내용")
    private String content;

    @Schema(description = "날짜")
    private LocalDate date;
}
