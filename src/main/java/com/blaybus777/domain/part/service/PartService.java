package com.blaybus777.domain.part.service;

import com.blaybus777.domain.part.controller.response.ListPartResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PartService {

    private final GetPartService getPartService;
    private final GetPartListService getPartListService;

    /**
     * 특정 학습대상의 특정 부품 조회
     */
    public ListPartResponse getPart(Long modelId, Long partId) {
        return getPartService.getPart(modelId, partId);
    }

    /**
     * 특정 학습대상의 모든 부품 목록 조회
     */
    public ListPartResponse getPartList(Long modelId) {
        return getPartListService.getPartList(modelId);
    }
}
