package com.blaybus777.domain.note.service;

import com.blaybus777.common.exception.BusinessException;
import com.blaybus777.common.response.ErrorCode;
import com.blaybus777.domain.model.Model;
import com.blaybus777.domain.model.repository.ModelRepository;
import com.blaybus777.domain.note.Note;
import com.blaybus777.domain.note.controller.request.NoteCreateRequest;
import com.blaybus777.domain.note.controller.request.UpdateNoteRequest;
import com.blaybus777.domain.note.controller.response.GetNoteResponse;
import com.blaybus777.domain.note.controller.response.NoteDto;
import com.blaybus777.domain.note.repository.NoteRepository;
import jakarta.validation.constraints.NotNull;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class NoteService {

    private final NoteRepository noteRepository;
    private final ModelRepository modelRepository;

    /**
     * 메모 생성
     * @param request 생성 요청 객체
     */
    public void create(@NotNull NoteCreateRequest request) {
        Model model = modelRepository.findById(request.modelId())
                .orElseThrow(() -> new BusinessException(ErrorCode.ENTITY_NOT_FOUND));

        noteRepository.save(
            Note.builder()
                .model(model)
                .title(request.title())
                .content(request.content())
                .date(LocalDate.now())
                .build()
        );
    }

    /**
     * 특정 메모 조회
     * @param noteId 메모 ID
     * @return 특정 메모에 대한 정보 반환
     */
    public GetNoteResponse getNote(Long noteId) {
        Note note = noteRepository.findById(noteId)
                .orElseThrow(() -> new BusinessException(ErrorCode.ENTITY_NOT_FOUND));

        return GetNoteResponse.builder()
                .items(
                    List.of(
                        NoteDto.builder()
                            .noteId(noteId)
                            .modelId(note.getModel().getModelId())
                            .title(note.getTitle())
                            .content(note.getContent())
                            .date(note.getDate())
                            .build()
                    )
                ).page(1)
                .build();
    }

    /**
     * 모델에 대한 메모 목록 조회
     * @param modelId 모델 ID
     * @return 모델에 대한 메모 목록 반환
     */
    public GetNoteResponse geNoteList(Long modelId) {
        Model model = modelRepository.findById(modelId)
                .orElseThrow(() -> new BusinessException(ErrorCode.ENTITY_NOT_FOUND));
        List<Note> note = noteRepository.findByModel(model);

        List<NoteDto> noteList = new ArrayList<>();
        note.forEach(n -> noteList.add(
               NoteDto.builder()
                   .noteId(n.getId())
                   .modelId(n.getModel().getModelId())
                   .title(n.getTitle())
                   .content(n.getContent())
                   .date(n.getDate())
                   .build()
        ));


        return GetNoteResponse.builder()
                .items(noteList)
                .page(note.size())
                .build();
    }

    /**
     * 특정 메모 수정
     * @param noteId 메모 ID
     * @param request 메모 수정 요청 객체
     */
    public void update(Long noteId, UpdateNoteRequest request) {
        Note note = noteRepository.findById(noteId)
                .orElseThrow(() -> new BusinessException(ErrorCode.ENTITY_NOT_FOUND));

        // 값 수정
        note.setTitle(request.title());
        note.setContent(request.content());
        note.setDate(LocalDate.now());

        // Entity 수정
        noteRepository.save(note);
    }

    /**
     * 특정 메모 삭제
     * @param noteId 메모 ID
     */
    public void delete(Long noteId) {
        noteRepository.deleteById(noteId);
    }
}
