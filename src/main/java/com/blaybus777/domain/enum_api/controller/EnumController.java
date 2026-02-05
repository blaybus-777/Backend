package com.blaybus777.domain.enum_api.controller;

import com.blaybus777.common.response.ApiResponse;
import com.blaybus777.domain.enum_api.controller.response.EnumResponse;
import com.blaybus777.domain.enum_api.service.EnumService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/v1/enum")
@Tag(name = "ENUM(선택형 필드) 관련 API")
public class EnumController {

    private final EnumService enumService;

    @GetMapping("/model")
    @Operation(summary = "학습 모델 목록 조회")
    public ApiResponse<EnumResponse> getModelList() {
        return ApiResponse.success(enumService.getModelList());
    }

    @GetMapping("/tag")
    @Operation(summary = "학습 태그 목록 조회")
    public ApiResponse<EnumResponse> getTagList() {
        return ApiResponse.success(enumService.getTagList());
    }

    @GetMapping("/ai-role")
    @Operation(summary = "AI 어시스턴트 역할(Role) 목록 조회")
    public ApiResponse<EnumResponse> getAIRoleList() {
        return ApiResponse.success(enumService.getAIRoleList());
    }

    @GetMapping("/ai/content-type")
    @Operation(summary = "AI 어시스턴트 응답 타입 목록 조회")
    public ApiResponse<EnumResponse> getAIContentTypeList() {
        return ApiResponse.success(enumService.getAIContentTypeList());
    }
}
