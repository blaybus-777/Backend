package com.blaybus777.domain.study.controller.request;

import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.NotNull;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Getter
@NoArgsConstructor
@Schema(description = "학습대상 검색 요청")
public class SearchRequest {

    @Schema(
        description = "태그 목록 (빈 리스트 가능, 제목으로만 검색 시 빈 리스트)",
        example = "[\"QUADCOPTER\", \"ADVANCED\"]",
        requiredMode = Schema.RequiredMode.REQUIRED
    )
    @NotNull(message = "tag는 필수입니다. 빈 리스트라도 전달해야 합니다.")
    private List<String> tag = new ArrayList<>();

    @Schema(
        description = "검색어 (제목 검색)",
        example = "쿼드콥터 드론",
        requiredMode = Schema.RequiredMode.REQUIRED
    )
    @NotNull(message = "search는 필수입니다.")
    private String search;
}
