package com.blaybus777.domain.part.controller.response;

import com.blaybus777.domain.part.Part;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;

@Getter
@Schema(description = "부품 정보")
public class PartDto {

    @Schema(description = "부품 ID", example = "1", requiredMode = Schema.RequiredMode.REQUIRED)
    private Long partId;

    @Schema(description = "부품 코드", example = "MAIN_FRAME", requiredMode = Schema.RequiredMode.REQUIRED)
    private String code;

    @Schema(description = "부품 이름", example = "Main Frame", requiredMode = Schema.RequiredMode.REQUIRED)
    private String name;

    @Schema(description = "부품 소개", example = "해당 부품은 ~~입니다.", requiredMode = Schema.RequiredMode.REQUIRED)
    private String introduction;

    @Schema(description = "부품 재질", example = "~~ 재질", requiredMode = Schema.RequiredMode.REQUIRED)
    private String quality;

    @Schema(description = "부품 이론 (학습 포인트 상세 정보)", example = "드론의 모든 하위 시스템 ~..", requiredMode = Schema.RequiredMode.REQUIRED)
    private String theory;

    public PartDto(Part part) {
        this.partId = part.getPartId();
        this.code = part.getCode();
        this.name = part.getName();
        this.introduction = part.getIntroduction();
        this.quality = part.getQuality();
        this.theory = part.getTheory();
    }
}
