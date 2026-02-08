package com.blaybus777.domain.model.repository;

import com.blaybus777.domain.model.Model;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ModelRepository extends JpaRepository<Model, Long>, ModelRepositoryCustom {

    /**
     * 모든 모델 조회 (ID 내림차순)
     */
    List<Model> findAllByOrderByModelIdDesc();
}
