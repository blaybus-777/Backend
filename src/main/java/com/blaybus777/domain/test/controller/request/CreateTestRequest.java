package com.blaybus777.domain.test.controller.request;

/**
 * 요청 객체는 getter, 불변성 등이 제공되는 record 사용합니다.
 */

public record CreateTestRequest(
    String title,
    String content
) { }
