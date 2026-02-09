package com.blaybus777.domain.part.service;

import com.blaybus777.common.exception.BusinessException;
import com.blaybus777.common.response.ErrorCode;
import com.blaybus777.domain.model.repository.ModelRepository;
import com.blaybus777.domain.part.Part;
import com.blaybus777.domain.part.controller.response.ListPartResponse;
import com.blaybus777.domain.part.controller.response.PartDto;
import com.blaybus777.domain.part.repository.PartRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class GetPartListService {

    private final PartRepository partRepository;
    private final ModelRepository modelRepository;

    /**
     * 특정 학습대상의 부품 목록 조회
     * @param modelId 모델 ID
     * @param flat true: 평면 리스트 (단일 부품만), false: 계층 구조 (트리)
     */
    public ListPartResponse getPartList(Long modelId, boolean flat) {
        // modelId가 존재하는지 확인
        if (!modelRepository.existsById(modelId)) {
            throw new BusinessException(ErrorCode.MODEL_NOT_FOUND);
        }

        List<Part> parts;

        if (flat) {
            // 평면 리스트: hierarchyLevel=2인 단일 부품만 조회
            parts = partRepository.findFlatPartsByModelId(modelId);
        } else {
            // 트리 구조: 루트 부품만 조회 (children은 재귀적으로 포함됨)
            parts = partRepository.findRootPartsByModelId(modelId);
        }

        // PartDto로 변환
        List<PartDto> partDtos = parts.stream()
            .map(PartDto::new)
            .collect(Collectors.toList());

        return new ListPartResponse(partDtos, partDtos.size());
    }
}
