package com.blaybus777.domain.part;

import com.blaybus777.domain.model.Model;
import jakarta.persistence.*;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Getter
@Setter
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

    @Column(name = "quality", nullable = false, length = 255)
    private String quality;

    @Column(name = "introduction", columnDefinition = "TEXT")
    private String introduction;

    @Column(name = "theory", columnDefinition = "TEXT")
    private String theory;

    @Column(name = "image_url")
    private String imageUrl;

    public Part(Model model, String code, String name, String quality, String introduction, String theory, String imageUrl) {
        this.model = model;
        this.code = code;
        this.name = name;
        this.quality = quality;
        this.introduction = introduction;
        this.theory = theory;
        this.imageUrl = imageUrl;
    }
}
