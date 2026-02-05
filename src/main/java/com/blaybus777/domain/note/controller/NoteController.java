package com.blaybus777.domain.note.controller;

import com.blaybus777.domain.note.service.NoteService;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequiredArgsConstructor
@RequestMapping(value = "/v1/note")
@Tag(name = "메모 관련 API")
public class NoteController {

    private final NoteService noteService;
}
