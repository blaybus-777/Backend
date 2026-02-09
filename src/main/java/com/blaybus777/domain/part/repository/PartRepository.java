package com.blaybus777.domain.part.repository;

import com.blaybus777.domain.part.Part;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Optional;

public interface PartRepository extends JpaRepository<Part, Long> {

    /**
     * modelId와 partId로 부품 조회
     */
    @Query("SELECT p FROM Part p WHERE p.model.modelId = :modelId AND p.partId = :partId")
    Optional<Part> findByModelIdAndPartId(@Param("modelId") Long modelId, @Param("partId") Long partId);

    /**
     * modelId로 모든 부품 조회 (ID 내림차순)
     */
    @Query("SELECT p FROM Part p WHERE p.model.modelId = :modelId ORDER BY p.partId DESC")
    List<Part> findAllByModelId(@Param("modelId") Long modelId);

    /**
     * modelId로 루트 부품만 조회 (계층 구조 - parent가 null인 것만)
     * orderIndex 오름차순 정렬
     */
    @Query("SELECT p FROM Part p WHERE p.model.modelId = :modelId AND p.parent IS NULL ORDER BY p.orderIndex ASC")
    List<Part> findRootPartsByModelId(@Param("modelId") Long modelId);

    /**
     * modelId로 단일 부품만 조회 (평면 리스트 - hierarchyLevel=2)
     * orderIndex 오름차순 정렬
     */
    @Query("SELECT p FROM Part p WHERE p.model.modelId = :modelId AND p.hierarchyLevel = 2 ORDER BY p.orderIndex ASC")
    List<Part> findFlatPartsByModelId(@Param("modelId") Long modelId);
}
