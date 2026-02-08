package com.blaybus777.domain.model;

import com.blaybus777.util.enums.Tag;
import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name = "model")
public class Model {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "model_id")
    private Long modelId;

    @Column(name = "code", nullable = false, unique = true, length = 50)
    private String code;

    @Column(name = "title", nullable = false, length = 255)
    private String title;

    @Column(name = "english_name", length = 255)
    private String englishName;

    @Column(name = "category", length = 100)
    private String category;

    @Column(name = "product_type", length = 255)
    private String productType;

    @Column(name = "configuration_type", length = 255)
    private String configurationType;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    /**
     * AI 전달용 원본 메타데이터 (JSON)
     */
    @Column(name = "metadata", columnDefinition = "json")
    private String metadata;

    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(
        name = "model_tag",
        joinColumns = @JoinColumn(name = "model_id")
    )
    @Column(name = "tag")
    @Enumerated(EnumType.STRING)
    private List<Tag> tags = new ArrayList<>();

    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(
        name = "model_functional_role",
        joinColumns = @JoinColumn(name = "model_id")
    )
    @Column(name = "functional_role", columnDefinition = "TEXT")
    private List<String> functionalRoles = new ArrayList<>();

    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(
        name = "model_engineering_theory",
        joinColumns = @JoinColumn(name = "model_id")
    )
    private List<EngineeringTheory> keyEngineeringTheories = new ArrayList<>();

    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(
        name = "model_applicable_level",
        joinColumns = @JoinColumn(name = "model_id")
    )
    @Column(name = "applicable_level", length = 255)
    private List<String> applicableLevels = new ArrayList<>();

    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(
        name = "model_learning_topic",
        joinColumns = @JoinColumn(name = "model_id")
    )
    @Column(name = "learning_topic", length = 255)
    private List<String> learningTopics = new ArrayList<>();

    public Model(String code, String title, String englishName, String category,
                 String productType, String configurationType, String description,
                 List<Tag> tags, List<String> functionalRoles, List<EngineeringTheory> keyEngineeringTheories,
                 List<String> applicableLevels, List<String> learningTopics) {
        this.code = code;
        this.title = title;
        this.englishName = englishName;
        this.category = category;
        this.productType = productType;
        this.configurationType = configurationType;
        this.description = description;
        this.tags = tags != null ? tags : new ArrayList<>();
        this.functionalRoles = functionalRoles != null ? functionalRoles : new ArrayList<>();
        this.keyEngineeringTheories = keyEngineeringTheories != null ? keyEngineeringTheories : new ArrayList<>();
        this.applicableLevels = applicableLevels != null ? applicableLevels : new ArrayList<>();
        this.learningTopics = learningTopics != null ? learningTopics : new ArrayList<>();
    }
}
