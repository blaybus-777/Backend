package com.blaybus777.domain.test.service;

import com.blaybus777.domain.test.Test;
import com.blaybus777.domain.test.controller.request.CreateTestRequest;
import com.blaybus777.domain.test.repository.TestRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional
public class CreateTestService {

    private final TestRepository testRepository;

    /**
     * 테스트 생성
     */
    public void createTest(CreateTestRequest request) {
        testRepository.save(
            Test.builder()
                .title(request.title())
                .content(request.content())
                .build()
        );
    }
}
