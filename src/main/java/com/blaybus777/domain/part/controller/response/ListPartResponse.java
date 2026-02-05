package com.blaybus777.domain.part.controller.response;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.List;

@Getter
@AllArgsConstructor
@Schema(description = "부품 목록 응답")
public class ListPartResponse {

    @Schema(description = "부품 목록", requiredMode = Schema.RequiredMode.REQUIRED)
    private List<PartDto> items;

    @Schema(description = "페이지 번호", example = "1", requiredMode = Schema.RequiredMode.REQUIRED)
    private int page;
}
