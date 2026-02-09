package com.blaybus777.domain.assistant.dto;

import java.util.List;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class TextRequestInputList {
    String role;
    List<InputBody> content;
}
