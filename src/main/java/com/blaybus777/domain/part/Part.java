package com.blaybus777.domain.part;

import com.blaybus777.domain.model.Model;
import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;

import java.util.ArrayList;
import java.util.List;

@Entity
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name = "part")
public class Part {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "part_id")
    private Long partId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "model_id", nullable = false)
    private Model model;

    @Column(name = "code", nullable = false, length = 50)
    private String code;

    @Column(name = "name", nullable = false, length = 255)
    private String name;

    @Column(name = "english_name", length = 255)
    private String englishName;

    @Column(name = "category", length = 100)
    private String category;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @Column(name = "metadata", columnDefinition = "json")
    private String metadata;

    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(
        name = "part_functional_role",
        joinColumns = @JoinColumn(name = "part_id")
    )
    @Column(name = "functional_role", columnDefinition = "TEXT")
    private List<String> functionalRoles = new ArrayList<>();

    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(
        name = "part_engineering_theory",
        joinColumns = @JoinColumn(name = "part_id")
    )
    @Column(name = "engineering_theory", columnDefinition = "TEXT")
    private List<String> keyEngineeringTheories = new ArrayList<>();

    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(
        name = "part_material",
        joinColumns = @JoinColumn(name = "part_id")
    )
    @Column(name = "material", length = 255)
    private List<String> commonMaterials = new ArrayList<>();

    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(
        name = "part_learning_topic",
        joinColumns = @JoinColumn(name = "part_id")
    )
    @Column(name = "learning_topic", length = 255)
    private List<String> learningTopics = new ArrayList<>();

    public Part(Model model, String code, String name, String englishName, String category,
                String description, List<String> functionalRoles, List<String> keyEngineeringTheories,
                List<String> commonMaterials, List<String> learningTopics) {
        this.model = model;
        this.code = code;
        this.name = name;
        this.englishName = englishName;
        this.category = category;
        this.description = description;
        this.functionalRoles = functionalRoles != null ? functionalRoles : new ArrayList<>();
        this.keyEngineeringTheories = keyEngineeringTheories != null ? keyEngineeringTheories : new ArrayList<>();
        this.commonMaterials = commonMaterials != null ? commonMaterials : new ArrayList<>();
        this.learningTopics = learningTopics != null ? learningTopics : new ArrayList<>();
    }
}
