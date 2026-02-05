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
        summary = "특정 학습대상의 특정 부품 조회",
        description = "modelId와 partId로 특정 학습대상의 특정 부품을 조회합니다. 해당 부품의 ID, 코드, 이름, 소개, 재질, 이론 정보를 반환합니다."
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
                                "code": "MAIN_FRAME",
                                "name": "Main Frame",
                                "introduction": "해당 부품은 ~~입니다.",
                                "quality": "~~ 재질",
                                "theory": "드론의 모든 하위 시스템 ~.."
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
                          "status": "ENTITY_NOT_FOUND",
                          "message": "엔티티를 찾을 수 없습니다.",
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
}
