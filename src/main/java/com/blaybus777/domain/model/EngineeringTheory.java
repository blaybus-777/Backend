package com.blaybus777.domain.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import lombok.AccessLevel;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Embeddable
@Getter
@NoArgsConstructor(access = AccessLevel.PROTECTED)
public class EngineeringTheory {

    @Column(name = "theory_name", length = 255)
    private String theoryName;

    @Column(name = "theory_description", columnDefinition = "TEXT")
    private String description;

    public EngineeringTheory(String theoryName, String description) {
        this.theoryName = theoryName;
        this.description = description;
    }
}
