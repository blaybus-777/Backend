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
        description = "모든 학습대상 모델 목록을 조회합니다. 각 모델은 고유 ID, 코드, 제목, 태그 목록을 포함합니다."
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
                                "code": "DRONE",
                                "title": "쿼드콥터 드론 시스템 구조 시뮬레이션",
                                "tag": ["QUADCOPTER", "ADVANCED", "AVIATION_DRONES", "ASSEMBLY_DISASSEMBLY_UNDERSTANDING"]
                              },
                              {
                                "modelId": 2,
                                "code": "LEAF_SPRING",
                                "title": "리프 스프링 시스템 구조 3D 시뮬레이션",
                                "tag": ["MECHANICAL_PRINCIPLE", "BEGINNER", "SUSPENSION_STRUCTURE", "MOBILITY_CAR"]
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
        description = "modelId로 특정 학습대상을 조회합니다. 해당 모델의 ID, 코드, 제목, 태그 정보를 반환합니다."
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
                                "code": "DRONE",
                                "title": "쿼드콥터 드론 시스템 구조 시뮬레이션",
                                "tag": ["QUADCOPTER", "ADVANCED", "AVIATION_DRONES", "ASSEMBLY_DISASSEMBLY_UNDERSTANDING"]
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
        description = "태그와 제목으로 학습대상을 검색합니다. 태그 목록이 비어있으면 제목으로만 검색하고, 검색어가 비어있으면 태그로만 검색합니다. 둘 다 제공되면 두 조건을 모두 만족하는 결과를 반환합니다."
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
                                "code": "DRONE",
                                "title": "쿼드콥터 드론 시스템 구조 시뮬레이션",
                                "tag": ["QUADCOPTER", "ADVANCED", "AVIATION_DRONES", "ASSEMBLY_DISASSEMBLY_UNDERSTANDING"]
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
