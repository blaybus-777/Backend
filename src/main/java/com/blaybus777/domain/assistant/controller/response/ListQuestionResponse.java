package com.blaybus777.domain.assistant.controller.response;

import com.blaybus777.domain.part.controller.response.PartDto;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;

import java.util.List;
import lombok.Setter;

@Getter
@Setter
@Builder
@AllArgsConstructor
@Schema(description = "질문 목록 응답 객체")
public class ListQuestionResponse {

    @Schema(description = "질문 목록", requiredMode = Schema.RequiredMode.REQUIRED)
    private List<PartDto> items;

    @Schema(description = "페이지 번호", example = "1", requiredMode = Schema.RequiredMode.REQUIRED)
    private int page;
}
