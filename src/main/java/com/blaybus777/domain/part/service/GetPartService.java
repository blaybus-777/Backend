package com.blaybus777.domain.part.service;

import com.blaybus777.common.exception.BusinessException;
import com.blaybus777.common.response.ErrorCode;
import com.blaybus777.domain.part.Part;
import com.blaybus777.domain.part.controller.response.ListPartResponse;
import com.blaybus777.domain.part.controller.response.PartDto;
import com.blaybus777.domain.part.repository.PartRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class GetPartService {

    private final PartRepository partRepository;

    /**
     * 특정 학습대상의 특정 부품 조회
     */
    public ListPartResponse getPart(Long modelId, Long partId) {
        Part part = partRepository.findByModelIdAndPartId(modelId, partId)
            .orElseThrow(() -> new BusinessException(ErrorCode.ENTITY_NOT_FOUND));

        PartDto partDto = new PartDto(part);
        return new ListPartResponse(List.of(partDto), 1);
    }
}
