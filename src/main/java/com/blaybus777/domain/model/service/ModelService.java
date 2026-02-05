package com.blaybus777.domain.model.service;

import com.blaybus777.domain.model.controller.response.ListModelResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ModelService {

    private final ListModelService listModelService;

    /**
     * 학습대상 목록 조회
     */
    public ListModelResponse getModelList() {
        return listModelService.getModelList();
    }
}
