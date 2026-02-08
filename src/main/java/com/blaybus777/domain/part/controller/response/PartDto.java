package com.blaybus777.domain.part.controller.response;

import com.blaybus777.domain.part.Part;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;

import java.util.ArrayList;
import java.util.List;

@Getter
@Schema(description = "부품 정보")
public class PartDto {

    @Schema(description = "부품 ID", example = "1", requiredMode = Schema.RequiredMode.REQUIRED)
    private Long partId;

    @Schema(description = "부품 코드", example = "arm_gear", requiredMode = Schema.RequiredMode.REQUIRED)
    private String code;

    @Schema(description = "부품 이름 (한글)", example = "암 기어", requiredMode = Schema.RequiredMode.REQUIRED)
    private String name;

    @Schema(description = "부품 이름 (영문)", example = "Arm Gear", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private String englishName;

    @Schema(description = "부품 카테고리", example = "단일 부품", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private String category;

    @Schema(description = "부품 설명", example = "드론 암의 회전이나 위치 고정을 위해 사용되는 기어 부품으로...", requiredMode = Schema.RequiredMode.REQUIRED)
    private String description;

    @Schema(description = "기능적 역할 목록", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private List<String> functionalRoles;

    @Schema(description = "핵심 공학 이론 목록", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private List<String> keyEngineeringTheories;

    @Schema(description = "일반적인 재질 목록", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private List<String> commonMaterials;

    @Schema(description = "학습 주제 목록", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private List<String> learningTopics;

    public PartDto(Part part) {
        this.partId = part.getPartId();
        this.code = part.getCode();
        this.name = part.getName();
        this.englishName = part.getEnglishName();
        this.category = part.getCategory();
        this.description = part.getDescription();
        this.functionalRoles = new ArrayList<>(part.getFunctionalRoles());
        this.keyEngineeringTheories = new ArrayList<>(part.getKeyEngineeringTheories());
        this.commonMaterials = new ArrayList<>(part.getCommonMaterials());
        this.learningTopics = new ArrayList<>(part.getLearningTopics());
    }
}
