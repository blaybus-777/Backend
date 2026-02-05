package com.blaybus777.domain.study.service;

import com.blaybus777.domain.model.Model;
import com.blaybus777.domain.model.controller.response.ListModelResponse;
import com.blaybus777.domain.model.controller.response.ModelDto;
import com.blaybus777.domain.model.repository.ModelRepository;
import com.blaybus777.domain.study.controller.request.SearchRequest;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class SearchStudyService {

    private final ModelRepository modelRepository;

    /**
     * 태그와 제목으로 학습대상 검색
     */
    public ListModelResponse searchStudy(SearchRequest request) {
        List<Model> models = modelRepository.searchModels(request.getTag(), request.getSearch());

        List<ModelDto> modelDtos = models.stream()
            .map(ModelDto::new)
            .collect(Collectors.toList());

        return new ListModelResponse(modelDtos, modelDtos.size());
    }
}
