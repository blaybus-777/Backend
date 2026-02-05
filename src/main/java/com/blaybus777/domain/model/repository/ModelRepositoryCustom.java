package com.blaybus777.domain.model.repository;

import com.blaybus777.domain.model.Model;

import java.util.List;

public interface ModelRepositoryCustom {

    /**
     * 태그와 제목으로 학습대상 검색
     *
     * @param tags 검색할 태그 목록 (빈 리스트면 태그 조건 무시)
     * @param search 검색어 (제목 검색, 빈 문자열이면 제목 조건 무시)
     * @return 검색 조건에 맞는 학습대상 목록
     */
    List<Model> searchModels(List<String> tags, String search);
}
