package com.blaybus777.domain.assistant.repository;

import com.blaybus777.domain.assistant.History;
import java.util.List;
import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HistoryRepository extends JpaRepository<History, Long> {

    @EntityGraph(attributePaths = {"files"})
    List<History> findByAssistant_AssistantId(Long assistantId);
    void deleteHistoryByAssistantAssistantId(Long assistantAssistantId);
}
