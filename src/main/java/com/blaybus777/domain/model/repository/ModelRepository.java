package com.blaybus777.domain.model.repository;

import com.blaybus777.domain.model.Model;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ModelRepository extends JpaRepository<Model, Long>, ModelRepositoryCustom {
}
