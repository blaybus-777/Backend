package com.blaybus777.domain.study.service;

import com.blaybus777.common.exception.BusinessException;
import com.blaybus777.common.response.ErrorCode;
import com.blaybus777.domain.model.Model;
import com.blaybus777.domain.model.controller.response.ListModelResponse;
import com.blaybus777.domain.model.controller.response.ModelDto;
import com.blaybus777.domain.model.repository.ModelRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class GetStudyService {

    private final ModelRepository modelRepository;

    /**
     * 특정 학습대상 조회
     */
    public ListModelResponse getStudy(Long modelId) {
        Model model = modelRepository.findById(modelId)
            .orElseThrow(() -> new BusinessException(ErrorCode.MODEL_NOT_FOUND));

        ModelDto modelDto = new ModelDto(model);
        return new ListModelResponse(List.of(modelDto), 1);
    }
}
