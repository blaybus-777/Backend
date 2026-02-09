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
     * 특정 학습대상의 부품 목록 조회
     * @param modelId 모델 ID
     * @param flat true: 평면 리스트, false: 계층 구조
     */
    public ListPartResponse getPartList(Long modelId, boolean flat) {
        return getPartListService.getPartList(modelId, flat);
    }
}
