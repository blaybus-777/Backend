package com.blaybus777.util.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum Tag {

    QUADCOPTER("쿼드콥터"),
    AVIATION_DRONES("항공/무인기"),
    ASSEMBLY_DISASSEMBLY_UNDERSTANDING("분해/조립 이해"),
    SUSPENSION_STRUCTURE("현가장치 구조"),
    MECHANICAL_PRINCIPLE("탄성/하중 원리"),
    MULTI_JOINT_STRUCTURE("다관절 구조"),
    MANUFACTURING_AUTOMATION("제조/자동화"),
    JOINT_ACTUATION_KINEMATICS("관절 구동/운동학"),
    ROBOT_APPLICATION("로봇 응용"),
    LINK_GEAR_TRANSMISSION("링크/기어 전달"),
    GRIPPING_MECHANISM("파지 매커니즘"),
    MOBILITY_CAR("모빌리티/자동차"),
    SUSPENSION_DYNAMICS("충격 흡수/차체 안정"),
    SUSPENSION_SUB_COMPONENT("서브 부품 이해"),
    VENGIN_STRUCTURE("V형 엔진 구조"),
    POWER_GENERATION_SYSTEM("동력 발생 시스템"),
    PISTON_MOTION("피스톤 운동 원리"),
    ADVANCED("고급 과정"),
    INTERMEDIATE("중급 과정"),
    BEGINNER("초급 과정");

    private final String value;
}
