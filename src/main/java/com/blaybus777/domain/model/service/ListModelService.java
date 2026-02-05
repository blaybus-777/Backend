package com.blaybus777.domain.model.service;

import com.blaybus777.domain.model.Model;
import com.blaybus777.domain.model.controller.response.ListModelResponse;
import com.blaybus777.domain.model.controller.response.ModelDto;
import com.blaybus777.domain.model.repository.ModelRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class ListModelService {

    private final ModelRepository modelRepository;

    /**
     * 학습대상 목록 조회
     */
    public ListModelResponse getModelList() {
        List<Model> models = modelRepository.findAll();

        List<ModelDto> items = models.stream()
            .map(ModelDto::new)
            .collect(Collectors.toList());

        return new ListModelResponse(items, 1);
    }
}
