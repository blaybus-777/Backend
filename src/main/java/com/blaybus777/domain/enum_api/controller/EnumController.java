package com.blaybus777.domain.enum_api.controller;

import com.blaybus777.domain.enum_api.service.EnumService;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/v1/enum")
@Tag(name = "ENUM(선택형 필드) 관련 API")
public class EnumController {

    private final EnumService enumService;
}
