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

    @ElementCollection(fetch = FetchType.LAZY)
    @CollectionTable(
        name = "model_tag",
        joinColumns = @JoinColumn(name = "model_id")
    )
    @Column(name = "tag")
    @Enumerated(EnumType.STRING)
    private List<Tag> tags = new ArrayList<>();

    public Model(String code, String title, List<Tag> tags) {
        this.code = code;
        this.title = title;
        this.tags = tags != null ? tags : new ArrayList<>();
    }
}
