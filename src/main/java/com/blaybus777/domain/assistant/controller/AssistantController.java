package com.blaybus777.domain.assistant.controller;

import com.blaybus777.domain.assistant.service.AssistantService;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/v1/ai")
@Tag(name = "AI 어시스턴트 관련 API")
public class AssistantController {

    private final AssistantService assistantService;
}
