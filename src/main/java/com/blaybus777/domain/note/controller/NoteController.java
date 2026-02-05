package com.blaybus777.domain.note.controller;

import com.blaybus777.common.response.ApiResponse;
import com.blaybus777.domain.note.controller.request.NoteCreateRequest;
import com.blaybus777.domain.note.controller.request.UpdateNoteRequest;
import com.blaybus777.domain.note.controller.response.GetNoteResponse;
import com.blaybus777.domain.note.service.NoteService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.constraints.NotNull;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/v1/note")
@Tag(name = "메모 관련 API")
public class NoteController {

    private final NoteService noteService;

    @PostMapping("/create")
    @Operation(summary = "메모 생성")
    public ApiResponse<Void> createNote(@RequestBody @NotNull NoteCreateRequest request) {
        noteService.create(request);
        return ApiResponse.success(null);
    }

    @GetMapping("/{noteId}")
    @Operation(summary = "특정 메모 조회")
    public ApiResponse<GetNoteResponse> getNote(@PathVariable Long noteId) {
        return ApiResponse.success(noteService.getNote(noteId));
    }

    @GetMapping("/list/{modelId}")
    @Operation(summary = "메모 목록 조회")
    public ApiResponse<GetNoteResponse> getNoteList(@PathVariable Long modelId) {
        return ApiResponse.success(noteService.geNoteList(modelId));
    }

    @PatchMapping("/update/{noteId}")
    @Operation(summary = "메모 수정")
    public ApiResponse<Void> updateNote(@PathVariable Long noteId, @RequestBody @NotNull UpdateNoteRequest request) {
        noteService.update(noteId, request);
        return ApiResponse.success(null);
    }

    @GetMapping("/delete/{noteId}")
    @Operation(summary = "메모 삭제")
    public ApiResponse<Void> deleteNote(@PathVariable Long noteId) {
        noteService.delete(noteId);
        return ApiResponse.success(null);
    }
}
