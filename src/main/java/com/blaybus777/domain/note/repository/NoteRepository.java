package com.blaybus777.domain.note.repository;

import com.blaybus777.domain.model.Model;
import com.blaybus777.domain.note.Note;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface NoteRepository extends JpaRepository<Note, Long> {
    List<Note> findByModel(Model model);
}
