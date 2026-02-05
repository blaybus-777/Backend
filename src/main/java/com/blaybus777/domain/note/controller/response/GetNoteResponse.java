package com.blaybus777.domain.note.controller.response;

import io.swagger.v3.oas.annotations.media.Schema;
import java.util.List;
import lombok.Builder;

@Builder
@Schema(description = "메모 조회 응답 객체")
public class GetNoteResponse {

    @Schema(description = "학습대상 모델 목록")
    private List<NoteDto> items;

    @Schema(description = "페이지 번호", example = "1", defaultValue = "1")
    private int page;
}
