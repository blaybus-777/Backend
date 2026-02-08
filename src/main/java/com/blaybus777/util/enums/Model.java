package com.blaybus777.util.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum Model {

    Quadcopter_DRONE("쿼트콥터 드론"),
    LEAF_SPRING("리프 스프링"),
    MACHINE_VICE("머신 바이스"),
    ROBOT_ARM("로봇 암"),
    ROBOT_GRIPPER("로봇 그리퍼"),
    SUSPENSION("서스펜션"),
    V4_ENGINE("V4 엔진");

    private final String value;
}
