package com.blaybus777.util.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum AIRole {

    USER("user"),
    ASSISTANT("assistant");

    private final String value;
}
