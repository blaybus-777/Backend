package com.blaybus777.domain.part.controller;

import com.blaybus777.common.response.ApiResponse;
import com.blaybus777.domain.part.controller.response.ListPartResponse;
import com.blaybus777.domain.part.service.PartService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "부품 관련 API", description = "학습대상 부품 조회 API")
@RestController
@RequestMapping("/v1/part")
@RequiredArgsConstructor
public class PartController {

    private final PartService partService;

    @Operation(
        summary = "학습대상 특정 부품 조회",
        description = "modelId와 partId로 특정 부품의 상세 정보를 조회합니다. 부품의 기본 정보(ID, 코드, 이름, 영문명, 카테고리, 설명), 기능적 역할, 핵심 공학 이론, 일반적인 재질, 학습 주제를 반환합니다."
    )
    @ApiResponses(value = {
        @io.swagger.v3.oas.annotations.responses.ApiResponse(
            responseCode = "200",
            description = "조회 성공",
            content = @Content(
                mediaType = "application/json",
                schema = @Schema(implementation = ApiResponse.class),
                examples = @ExampleObject(
                    value = """
                        {
                          "success": true,
                          "status": "OK",
                          "message": "요청 성공",
                          "data": {
                            "items": [
                              {
                                "partId": 1,
                                "code": "arm_gear",
                                "name": "암 기어",
                                "englishName": "Arm Gear",
                                "category": "단일 부품",
                                "description": "드론 암의 회전이나 위치 고정을 위해 사용되는 기어 부품으로, 구동부의 회전 운동을 구조물로 전달한다.",
                                "functionalRoles": [
                                  "회전 운동을 암 구조에 전달",
                                  "암의 각도와 위치를 일정하게 유지",
                                  "구동부와 구조부를 기계적으로 연결"
                                ],
                                "keyEngineeringTheories": [
                                  "기어 맞물림을 통한 회전 운동 전달 원리",
                                  "기어비에 따른 속도 및 토크 변화 개념"
                                ],
                                "commonMaterials": [
                                  "POM(아세탈)",
                                  "나일론(PA)",
                                  "알루미늄"
                                ],
                                "learningTopics": [
                                  "기어 전달 메커니즘",
                                  "기계식 구동 구조 이해"
                                ]
                              }
                            ],
                            "page": 1
                          },
                          "timestamp": "2026-02-05T22:00:00+09:00"
                        }
                        """
                )
            )
        ),
        @io.swagger.v3.oas.annotations.responses.ApiResponse(
            responseCode = "400",
            description = "잘못된 요청 - modelId 또는 partId 타입 오류",
            content = @Content(
                mediaType = "application/json",
                schema = @Schema(implementation = ApiResponse.class),
                examples = @ExampleObject(
                    value = """
                        {
                          "success": false,
                          "status": "INVALID_TYPE_VALUE",
                          "message": "입력 타입이 올바르지 않습니다.",
                          "data": null,
                          "timestamp": "2026-02-05T22:00:00+09:00"
                        }
                        """
                )
            )
        ),
        @io.swagger.v3.oas.annotations.responses.ApiResponse(
            responseCode = "404",
            description = "부품을 찾을 수 없음",
            content = @Content(
                mediaType = "application/json",
                schema = @Schema(implementation = ApiResponse.class),
                examples = @ExampleObject(
                    value = """
                        {
                          "success": false,
                          "status": "PART_NOT_FOUND",
                          "message": "부품을 찾을 수 없습니다.",
                          "data": null,
                          "timestamp": "2026-02-05T22:00:00+09:00"
                        }
                        """
                )
            )
        )
    })
    @GetMapping("/{modelId}/{partId}")
    public ResponseEntity<ApiResponse<ListPartResponse>> getPart(
        @Parameter(description = "모델 ID", required = true, example = "1")
        @PathVariable Long modelId,
        @Parameter(description = "부품 ID", required = true, example = "1")
        @PathVariable Long partId
    ) {
        return ResponseEntity.ok(ApiResponse.success(partService.getPart(modelId, partId)));
    }

    @Operation(
        summary = "학습대상 부품 목록 조회",
        description = "modelId로 해당 학습대상 조립도에 포함된 모든 단일 부품 목록을 조회합니다. 각 부품의 상세 정보(기본 정보, 기능적 역할, 핵심 공학 이론, 일반적인 재질, 학습 주제)를 배열로 반환합니다."
    )
    @ApiResponses(value = {
        @io.swagger.v3.oas.annotations.responses.ApiResponse(
            responseCode = "200",
            description = "조회 성공",
            content = @Content(
                mediaType = "application/json",
                schema = @Schema(implementation = ApiResponse.class),
                examples = @ExampleObject(
                    value = """
                        {
                          "success": true,
                          "status": "OK",
                          "message": "요청 성공",
                          "data": {
                            "items": [
                              {
                                "partId": 1,
                                "code": "main_frame",
                                "name": "메인 프레임",
                                "englishName": "Main Frame",
                                "category": "단일 부품",
                                "description": "드론의 모든 부품이 결합되는 중심 구조물로, 기체의 전체 형상을 결정한다.",
                                "functionalRoles": [
                                  "모든 부품의 기준 구조 제공",
                                  "하중을 전체 구조로 분산",
                                  "드론의 형태 유지"
                                ],
                                "keyEngineeringTheories": [
                                  "하중 분산을 고려한 프레임 구조 원리",
                                  "대칭 구조에 의한 안정성 확보"
                                ],
                                "commonMaterials": [
                                  "ABS 플라스틱",
                                  "나일론 강화 소재",
                                  "카본 복합재"
                                ],
                                "learningTopics": [
                                  "구조 프레임 설계",
                                  "드론 전체 구조 이해"
                                ]
                              },
                              {
                                "partId": 2,
                                "code": "main_frame_mir",
                                "name": "메인 프레임(미러)",
                                "englishName": "Main Frame_MIR",
                                "category": "단일 부품",
                                "description": "메인 프레임의 좌우 대칭 구조를 이루는 부품으로, 동일 구조를 반대 방향으로 사용한다.",
                                "functionalRoles": [
                                  "반대편 구조 구성",
                                  "기체 무게 균형 유지",
                                  "조립 단순화"
                                ],
                                "keyEngineeringTheories": [
                                  "좌우 대칭 설계의 구조적 장점",
                                  "부품 공용화 설계 개념"
                                ],
                                "commonMaterials": [
                                  "ABS 플라스틱",
                                  "나일론 강화 소재"
                                ],
                                "learningTopics": [
                                  "대칭 구조 설계",
                                  "제조 효율성 개념"
                                ]
                              }
                            ],
                            "page": 2
                          },
                          "timestamp": "2026-02-05T23:00:00+09:00"
                        }
                        """
                )
            )
        ),
        @io.swagger.v3.oas.annotations.responses.ApiResponse(
            responseCode = "400",
            description = "잘못된 요청 - modelId 타입 오류",
            content = @Content(
                mediaType = "application/json",
                schema = @Schema(implementation = ApiResponse.class),
                examples = @ExampleObject(
                    value = """
                        {
                          "success": false,
                          "status": "INVALID_TYPE_VALUE",
                          "message": "입력 타입이 올바르지 않습니다.",
                          "data": null,
                          "timestamp": "2026-02-05T23:00:00+09:00"
                        }
                        """
                )
            )
        ),
        @io.swagger.v3.oas.annotations.responses.ApiResponse(
            responseCode = "404",
            description = "학습대상을 찾을 수 없음",
            content = @Content(
                mediaType = "application/json",
                schema = @Schema(implementation = ApiResponse.class),
                examples = @ExampleObject(
                    value = """
                        {
                          "success": false,
                          "status": "MODEL_NOT_FOUND",
                          "message": "학습대상을 찾을 수 없습니다.",
                          "data": null,
                          "timestamp": "2026-02-05T23:00:00+09:00"
                        }
                        """
                )
            )
        )
    })
    @GetMapping("/list/{modelId}")
    public ResponseEntity<ApiResponse<ListPartResponse>> getPartList(
        @Parameter(description = "모델 ID", required = true, example = "1")
        @PathVariable Long modelId
    ) {
        return ResponseEntity.ok(ApiResponse.success(partService.getPartList(modelId)));
    }
}
