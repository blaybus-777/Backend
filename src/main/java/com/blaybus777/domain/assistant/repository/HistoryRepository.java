package com.blaybus777.domain.assistant.repository;

import com.blaybus777.domain.assistant.History;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HistoryRepository extends JpaRepository<History, Long> {

}
