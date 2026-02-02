package com.blaybus777.domain.test.service;

import com.blaybus777.domain.test.controller.response.DetailTestResponse;
import com.blaybus777.domain.test.repository.DetailTestRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.server.ResponseStatusException;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class DetailTestService {

    private final DetailTestRepository detailTestRepository;

    /**
     * 테스트 상세 조회
     */
    public DetailTestResponse getTest(Long testId) {
        DetailTestResponse response = detailTestRepository.getTest(testId);
        if (response == null) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "존재하지 않는 TEST ID입니다.");
        }

        return response;
    }
}
