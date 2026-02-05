package com.blaybus777.domain.test.controller;

import com.blaybus777.domain.test.controller.request.CreateTestRequest;
import com.blaybus777.domain.test.controller.response.DetailTestResponse;
import com.blaybus777.domain.test.controller.response.ListTestResponse;
import com.blaybus777.domain.test.service.TestService;
import io.swagger.v3.oas.annotations.Hidden;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@Hidden
@RestController
@RequestMapping("/test")
@RequiredArgsConstructor
@Tag(name = "테스트 관련 API")
public class TestController {

    private final TestService testService;

    @PostMapping
    public ResponseEntity<Void> createTest(@RequestBody @Valid CreateTestRequest request) {
        testService.createTest(request);
        return ResponseEntity.ok().build();
    }

    @GetMapping("/{testId}")
    public ResponseEntity<DetailTestResponse> getTest(@PathVariable Long testId) {
        return ResponseEntity.ok(testService.getTest(testId));
    }

    @GetMapping
    public ResponseEntity<ListTestResponse> getTestList() {
        return ResponseEntity.ok(testService.getTestList());
    }
}
