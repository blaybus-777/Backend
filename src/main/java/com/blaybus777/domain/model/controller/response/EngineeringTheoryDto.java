package com.blaybus777.domain.model.controller.response;

import com.blaybus777.domain.model.EngineeringTheory;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;

@Getter
@Schema(description = "핵심 공학 이론")
public class EngineeringTheoryDto {

    @Schema(description = "이론 이름", example = "비행역학", requiredMode = Schema.RequiredMode.REQUIRED)
    private String theoryName;

    @Schema(description = "이론 설명", example = "각 프로펠러에서 발생하는 추력의 합과 중력의 균형을 통해 호버링 및 기동 비행을 수행한다.", requiredMode = Schema.RequiredMode.REQUIRED)
    private String description;

    public EngineeringTheoryDto(EngineeringTheory engineeringTheory) {
        this.theoryName = engineeringTheory.getTheoryName();
        this.description = engineeringTheory.getDescription();
    }
}
