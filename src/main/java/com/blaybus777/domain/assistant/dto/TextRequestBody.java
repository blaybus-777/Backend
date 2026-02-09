package com.blaybus777.domain.assistant.dto;

import jakarta.annotation.Nullable;
import java.util.List;
import java.util.Map;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class TextRequestBody {
    String model;
    String instructions;
    @Nullable
    String previous_response_id;
    List<Object> input;
    List<Map<String, String>> tools;
//    String input;
}
