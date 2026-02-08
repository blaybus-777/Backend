package com.blaybus777.domain.assistant.service;

import com.blaybus777.domain.assistant.repository.AssistantRepository;
import com.blaybus777.domain.assistant.repository.HistoryRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AssistantService {

    private final AssistantRepository assistantRepository;
    private final HistoryRepository historyRepository;


}
