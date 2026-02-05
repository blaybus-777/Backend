package com.blaybus777.domain.model.controller.response;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;

import java.util.List;

@Getter
@Schema(description = "학습대상 목록 응답")
public class ListModelResponse {

    @Schema(description = "학습대상 모델 목록", requiredMode = Schema.RequiredMode.REQUIRED)
    private List<ModelDto> items;

    @Schema(description = "페이지 번호", example = "1", requiredMode = Schema.RequiredMode.REQUIRED, defaultValue = "1")
    private int page;

    public ListModelResponse(List<ModelDto> items, int page) {
        this.items = items;
        this.page = page;
    }
}
