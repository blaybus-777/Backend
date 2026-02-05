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
     * modelId로 모든 부품 조회
     */
    @Query("SELECT p FROM Part p WHERE p.model.modelId = :modelId")
    List<Part> findAllByModelId(@Param("modelId") Long modelId);
}
