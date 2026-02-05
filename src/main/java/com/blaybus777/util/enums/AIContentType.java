package com.blaybus777.util.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum AIContentType {

    QUESTION("질문"),
    QUICK("퀵액션"),
    AI_RESPONSE("AI 답변");

    private final String value;
}
