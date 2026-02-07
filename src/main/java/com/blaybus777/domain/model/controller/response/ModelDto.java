package com.blaybus777.domain.model.controller.response;

import com.blaybus777.domain.model.Model;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Getter
@Schema(description = "학습대상 모델 정보")
public class ModelDto {

    @Schema(description = "모델 ID", example = "1", requiredMode = Schema.RequiredMode.REQUIRED)
    private Long modelId;

    @Schema(description = "모델 코드", example = "quadcopter_drone", requiredMode = Schema.RequiredMode.REQUIRED)
    private String code;

    @Schema(description = "모델 제목 (한글)", example = "쿼드콥터 드론", requiredMode = Schema.RequiredMode.REQUIRED)
    private String title;

    @Schema(description = "모델 제목 (영문)", example = "Quadcopter Drone", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private String englishName;

    @Schema(description = "카테고리", example = "조립도", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private String category;

    @Schema(description = "제품 타입", example = "무인 항공기(UAV)", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private String productType;

    @Schema(description = "구성 타입", example = "X-type Quadcopter", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private String configurationType;

    @Schema(description = "모델 설명", example = "중앙 프레임을 기준으로 네 개의 회전익을 배치한 무인 항공기로...", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private String description;

    @Schema(description = "모델 태그 목록", example = "[\"QUADCOPTER\", \"ADVANCED\", \"AVIATION_DRONES\"]", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private List<String> tag;

    @Schema(description = "기능적 역할 목록", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private List<String> functionalRoles;

    @Schema(description = "핵심 공학 이론 목록", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private List<EngineeringTheoryDto> keyEngineeringTheories;

    @Schema(description = "적용 가능 수준 목록", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private List<String> applicableLevels;

    @Schema(description = "학습 주제 목록", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private List<String> learningTopics;

    public ModelDto(Model model) {
        this.modelId = model.getModelId();
        this.code = model.getCode();
        this.title = model.getTitle();
        this.englishName = model.getEnglishName();
        this.category = model.getCategory();
        this.productType = model.getProductType();
        this.configurationType = model.getConfigurationType();
        this.description = model.getDescription();
        this.tag = model.getTags().stream()
            .map(Enum::name)
            .collect(Collectors.toList());
        this.functionalRoles = new ArrayList<>(model.getFunctionalRoles());
        this.keyEngineeringTheories = model.getKeyEngineeringTheories().stream()
            .map(EngineeringTheoryDto::new)
            .collect(Collectors.toList());
        this.applicableLevels = new ArrayList<>(model.getApplicableLevels());
        this.learningTopics = new ArrayList<>(model.getLearningTopics());
    }
}
