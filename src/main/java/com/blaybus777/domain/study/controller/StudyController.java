package com.blaybus777.domain.study.controller;

import com.blaybus777.common.response.ApiResponse;
import com.blaybus777.domain.model.controller.response.ListModelResponse;
import com.blaybus777.domain.model.service.ModelService;
import com.blaybus777.domain.study.controller.request.SearchRequest;
import com.blaybus777.domain.study.service.StudyService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.Parameter;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;



@Tag(name = "학습 관련 API", description = "학습대상 조회 API")
@RestController
@RequestMapping("/v1/study")
@RequiredArgsConstructor
public class StudyController {

    private final StudyService studyService;
    private final ModelService modelService;

    @Operation(
        summary = "학습대상 목록 조회",
        description = "모든 학습대상 조립도 목록을 조회합니다. 각 조립도는 기본 정보(ID, 코드, 제목, 영문명, 카테고리, 제품 타입, 구성 타입, 설명), 태그, 기능적 역할, 핵심 공학 이론, 적용 가능 수준, 학습 주제를 포함합니다."
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
                                "modelId": 1,
                                "code": "quadcopter_drone",
                                "title": "쿼드콥터 드론",
                                "englishName": "Quadcopter Drone",
                                "category": "조립도",
                                "productType": "무인 항공기(UAV)",
                                "configurationType": "X-type Quadcopter",
                                "description": "중앙 프레임을 기준으로 네 개의 회전익을 배치한 무인 항공기로, 수직 이착륙과 정밀 제어가 가능한 대표적인 멀티로터 드론",
                                "tag": ["QUADCOPTER", "ADVANCED", "AVIATION_DRONES", "ASSEMBLY_DISASSEMBLY_UNDERSTANDING"],
                                "functionalRoles": [
                                  "네 개의 회전 추력원을 이용한 수직 이착륙(VTOL)",
                                  "롤, 피치, 요 제어를 통한 6자유도 비행"
                                ],
                                "keyEngineeringTheories": [
                                  {
                                    "theoryName": "비행역학",
                                    "description": "각 프로펠러에서 발생하는 추력의 합과 중력의 균형을 통해 호버링 및 기동 비행을 수행한다."
                                  },
                                  {
                                    "theoryName": "구조역학",
                                    "description": "메인 프레임과 암 구조는 굽힘, 비틀림, 진동 하중을 견디도록 설계된다."
                                  }
                                ],
                                "applicableLevels": [
                                  "대학교 기계공학 전공",
                                  "항공우주공학 전공"
                                ],
                                "learningTopics": [
                                  "쿼드콥터 구조와 작동 원리",
                                  "조립도 기반 시스템 이해"
                                ]
                              }
                            ],
                            "page": 1
                          },
                          "timestamp": "2026-02-05T21:00:00+09:00"
                        }
                        """
                )
            )
        ),
        @io.swagger.v3.oas.annotations.responses.ApiResponse(
            responseCode = "500",
            description = "서버 내부 오류",
            content = @Content(
                mediaType = "application/json",
                schema = @Schema(implementation = ApiResponse.class),
                examples = @ExampleObject(
                    value = """
                        {
                          "success": false,
                          "status": "INTERNAL_SERVER_ERROR",
                          "message": "서버 내부 오류가 발생했습니다.",
                          "data": null,
                          "timestamp": "2026-02-05T21:00:00+09:00"
                        }
                        """
                )
            )
        )
    })
    @GetMapping("/list")
    public ResponseEntity<ApiResponse<ListModelResponse>> getModelList() {
        return ResponseEntity.ok(ApiResponse.success(modelService.getModelList()));
    }

    @Operation(
        summary = "특정 학습대상 조회",
        description = "modelId로 특정 학습대상 조립도를 조회합니다. 조립도의 모든 상세 정보(기본 정보, 태그, 기능적 역할, 핵심 공학 이론, 적용 가능 수준, 학습 주제)를 반환합니다."
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
                                "modelId": 1,
                                "code": "quadcopter_drone",
                                "title": "쿼드콥터 드론",
                                "englishName": "Quadcopter Drone",
                                "category": "조립도",
                                "productType": "무인 항공기(UAV)",
                                "configurationType": "X-type Quadcopter",
                                "description": "중앙 프레임을 기준으로 네 개의 회전익을 배치한 무인 항공기로, 수직 이착륙과 정밀 제어가 가능한 대표적인 멀티로터 드론",
                                "tag": ["QUADCOPTER", "ADVANCED", "AVIATION_DRONES", "ASSEMBLY_DISASSEMBLY_UNDERSTANDING"],
                                "functionalRoles": [
                                  "네 개의 회전 추력원을 이용한 수직 이착륙(VTOL)",
                                  "롤, 피치, 요 제어를 통한 6자유도 비행",
                                  "중앙 집중 질량 배치를 통한 비행 안정성 확보"
                                ],
                                "keyEngineeringTheories": [
                                  {
                                    "theoryName": "비행역학",
                                    "description": "각 프로펠러에서 발생하는 추력의 합과 중력의 균형을 통해 호버링 및 기동 비행을 수행한다."
                                  },
                                  {
                                    "theoryName": "구조역학",
                                    "description": "메인 프레임과 암 구조는 굽힘, 비틀림, 진동 하중을 견디도록 설계된다."
                                  },
                                  {
                                    "theoryName": "진동 및 공진 이론",
                                    "description": "모터 회전에 의한 주기적 진동이 구조물의 고유진동수와 일치하지 않도록 설계한다."
                                  }
                                ],
                                "applicableLevels": [
                                  "대학교 기계공학 전공",
                                  "항공우주공학 전공",
                                  "드론 제작 및 구조 실습 과정"
                                ],
                                "learningTopics": [
                                  "쿼드콥터 구조와 작동 원리",
                                  "조립도 기반 시스템 이해",
                                  "부품 간 역할 분담과 인터페이스",
                                  "기계·비행 시스템 통합 개념"
                                ]
                              }
                            ],
                            "page": 1
                          },
                          "timestamp": "2026-02-05T21:00:00+09:00"
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
                          "timestamp": "2026-02-05T21:00:00+09:00"
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
                          "timestamp": "2026-02-05T21:00:00+09:00"
                        }
                        """
                )
            )
        )
    })
    @GetMapping("/{modelId}")
    public ResponseEntity<ApiResponse<ListModelResponse>> getStudy(
        @Parameter(description = "모델 ID", required = true, example = "1")
        @PathVariable Long modelId
    ) {
        return ResponseEntity.ok(ApiResponse.success(studyService.getStudy(modelId)));
    }

    @Operation(
        summary = "학습대상 검색",
        description = "태그와 제목으로 학습대상 조립도를 검색합니다. 태그 목록이 비어있으면 제목으로만 검색하고, 검색어가 비어있으면 태그로만 검색합니다. 둘 다 제공되면 두 조건을 모두 만족하는 결과를 반환합니다. 검색 결과는 조립도의 모든 상세 정보를 포함합니다."
    )
    @ApiResponses(value = {
        @io.swagger.v3.oas.annotations.responses.ApiResponse(
            responseCode = "200",
            description = "검색 성공",
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
                                "modelId": 1,
                                "code": "quadcopter_drone",
                                "title": "쿼드콥터 드론",
                                "englishName": "Quadcopter Drone",
                                "category": "조립도",
                                "productType": "무인 항공기(UAV)",
                                "configurationType": "X-type Quadcopter",
                                "description": "중앙 프레임을 기준으로 네 개의 회전익을 배치한 무인 항공기로, 수직 이착륙과 정밀 제어가 가능한 대표적인 멀티로터 드론",
                                "tag": ["QUADCOPTER", "ADVANCED", "AVIATION_DRONES", "ASSEMBLY_DISASSEMBLY_UNDERSTANDING"],
                                "functionalRoles": [
                                  "네 개의 회전 추력원을 이용한 수직 이착륙(VTOL)",
                                  "롤, 피치, 요 제어를 통한 6자유도 비행"
                                ],
                                "keyEngineeringTheories": [
                                  {
                                    "theoryName": "비행역학",
                                    "description": "각 프로펠러에서 발생하는 추력의 합과 중력의 균형을 통해 호버링 및 기동 비행을 수행한다."
                                  }
                                ],
                                "applicableLevels": [
                                  "대학교 기계공학 전공",
                                  "항공우주공학 전공"
                                ],
                                "learningTopics": [
                                  "쿼드콥터 구조와 작동 원리",
                                  "조립도 기반 시스템 이해"
                                ]
                              }
                            ],
                            "page": 1
                          },
                          "timestamp": "2026-02-05T21:00:00+09:00"
                        }
                        """
                )
            )
        ),
        @io.swagger.v3.oas.annotations.responses.ApiResponse(
            responseCode = "400",
            description = "잘못된 요청 - 입력값 검증 실패",
            content = @Content(
                mediaType = "application/json",
                schema = @Schema(implementation = ApiResponse.class),
                examples = @ExampleObject(
                    value = """
                        {
                          "success": false,
                          "status": "INVALID_INPUT_VALUE",
                          "message": "입력값이 올바르지 않습니다.",
                          "data": null,
                          "timestamp": "2026-02-05T21:00:00+09:00"
                        }
                        """
                )
            )
        ),
        @io.swagger.v3.oas.annotations.responses.ApiResponse(
            responseCode = "500",
            description = "서버 내부 오류",
            content = @Content(
                mediaType = "application/json",
                schema = @Schema(implementation = ApiResponse.class),
                examples = @ExampleObject(
                    value = """
                        {
                          "success": false,
                          "status": "INTERNAL_SERVER_ERROR",
                          "message": "서버 내부 오류가 발생했습니다.",
                          "data": null,
                          "timestamp": "2026-02-05T21:00:00+09:00"
                        }
                        """
                )
            )
        )
    })
    @PostMapping("/search")
    public ResponseEntity<ApiResponse<ListModelResponse>> searchStudy(
        @io.swagger.v3.oas.annotations.parameters.RequestBody(
            description = "검색 요청 정보",
            required = true,
            content = @Content(
                schema = @Schema(implementation = SearchRequest.class),
                examples = @ExampleObject(
                    value = """
                        {
                          "tag": ["QUADCOPTER", "ADVANCED"],
                          "search": "쿼드콥터 드론"
                        }
                        """
                )
            )
        )
        @Valid @RequestBody SearchRequest request
    ) {
        return ResponseEntity.ok(ApiResponse.success(studyService.searchStudy(request)));
    }
}
