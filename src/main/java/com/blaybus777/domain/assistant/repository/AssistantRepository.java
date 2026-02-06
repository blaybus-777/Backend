package com.blaybus777.domain.assistant.repository;

import com.blaybus777.domain.assistant.Assistant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AssistantRepository extends JpaRepository<Assistant, Long> {

}
