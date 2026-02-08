package com.blaybus777.domain.note.repository;

import com.blaybus777.domain.model.Model;
import com.blaybus777.domain.note.Note;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NoteRepository extends JpaRepository<Note, Long> {
    /**
     * 특정 모델의 메모 목록 조회 (ID 내림차순)
     */
    List<Note> findByModelOrderByIdDesc(Model model);
}
