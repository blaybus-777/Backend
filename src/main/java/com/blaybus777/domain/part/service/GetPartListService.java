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
     * 특정 학습대상의 모든 부품 목록 조회
     */
    public ListPartResponse getPartList(Long modelId) {
        // modelId가 존재하는지 확인
        if (!modelRepository.existsById(modelId)) {
            throw new BusinessException(ErrorCode.MODEL_NOT_FOUND);
        }

        List<Part> parts = partRepository.findAllByModelId(modelId);

        List<PartDto> partDtos = parts.stream()
            .map(PartDto::new)
            .collect(Collectors.toList());

        return new ListPartResponse(partDtos, partDtos.size());
    }
}
