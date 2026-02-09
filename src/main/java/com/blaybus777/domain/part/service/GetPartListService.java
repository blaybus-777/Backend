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
     * 특정 학습대상의 부품 목록 조회 (계층 구조)
     * 루트 부품만 반환하며, 각 부품의 하위 부품은 children 필드에 재귀적으로 포함됨
     */
    public ListPartResponse getPartList(Long modelId) {
        // modelId가 존재하는지 확인
        if (!modelRepository.existsById(modelId)) {
            throw new BusinessException(ErrorCode.MODEL_NOT_FOUND);
        }

        // 루트 부품만 조회 (parent가 null인 것)
        List<Part> rootParts = partRepository.findRootPartsByModelId(modelId);

        // PartDto로 변환 (재귀적으로 children 포함)
        List<PartDto> partDtos = rootParts.stream()
            .map(PartDto::new)
            .collect(Collectors.toList());

        return new ListPartResponse(partDtos, partDtos.size());
    }
}
