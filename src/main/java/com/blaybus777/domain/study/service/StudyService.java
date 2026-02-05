package com.blaybus777.domain.study.service;

import com.blaybus777.domain.model.controller.response.ListModelResponse;
import com.blaybus777.domain.study.controller.request.SearchRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class StudyService {

    private final GetStudyService getStudyService;
    private final SearchStudyService searchStudyService;

    /**
     * 특정 학습대상 조회
     */
    public ListModelResponse getStudy(Long modelId) {
        return getStudyService.getStudy(modelId);
    }

    /**
     * 태그와 제목으로 학습대상 검색
     */
    public ListModelResponse searchStudy(SearchRequest request) {
        return searchStudyService.searchStudy(request);
    }
}
