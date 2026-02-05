package com.blaybus777.domain.model.controller;

import com.blaybus777.common.response.ApiResponse;
import com.blaybus777.domain.model.controller.response.ListModelResponse;
import com.blaybus777.domain.model.service.ModelService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.media.Content;
import io.swagger.v3.oas.annotations.media.ExampleObject;
import io.swagger.v3.oas.annotations.media.Schema;
import io.swagger.v3.oas.annotations.responses.ApiResponses;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Tag(name = "Model", description = "학습대상 API")
@RestController
@RequestMapping("/v1/model")
@RequiredArgsConstructor
public class ModelController {

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
    @GetMapping
    public ResponseEntity<ApiResponse<ListModelResponse>> getModelList() {
        return ResponseEntity.ok(ApiResponse.success(modelService.getModelList()));
    }
}
