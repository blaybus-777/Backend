package com.blaybus777.domain.model.controller.response;

import com.blaybus777.domain.model.Model;
import com.blaybus777.util.enums.Tag;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;

import java.util.List;
import java.util.stream.Collectors;

@Getter
@Schema(description = "학습대상 모델 정보")
public class ModelDto {

    @Schema(description = "모델 ID", example = "1", requiredMode = Schema.RequiredMode.REQUIRED)
    private Long modelId;

    @Schema(description = "모델 코드", example = "DRONE", requiredMode = Schema.RequiredMode.REQUIRED)
    private String code;

    @Schema(description = "모델 제목", example = "쿼드콥터 드론 시스템 구조 시뮬레이션", requiredMode = Schema.RequiredMode.REQUIRED)
    private String title;

    @Schema(description = "모델 태그 목록", example = "[\"QUADCOPTER\", \"ADVANCED\", \"AVIATION_DRONES\", \"ASSEMBLY_DISASSEMBLY_UNDERSTANDING\"]", requiredMode = Schema.RequiredMode.REQUIRED)
    private List<String> tag;

    public ModelDto(Model model) {
        this.modelId = model.getModelId();
        this.code = model.getCode();
        this.title = model.getTitle();
        this.tag = model.getTags().stream()
            .map(Enum::name)
            .collect(Collectors.toList());
    }
}
