package com.blaybus777.domain.part.service;

import com.blaybus777.domain.part.controller.response.ListPartResponse;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class PartService {

    private final GetPartService getPartService;

    /**
     * 특정 학습대상의 특정 부품 조회
     */
    public ListPartResponse getPart(Long modelId, Long partId) {
        return getPartService.getPart(modelId, partId);
    }
}
