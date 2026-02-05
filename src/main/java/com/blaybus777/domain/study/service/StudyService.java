package com.blaybus777.domain.study.service;

import com.blaybus777.domain.model.controller.response.ListModelResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class StudyService {

    private final GetStudyService getStudyService;

    /**
     * 특정 학습대상 조회
     */
    public ListModelResponse getStudy(Long modelId) {
        return getStudyService.getStudy(modelId);
    }
}
