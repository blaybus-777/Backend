package com.blaybus777.domain.assistant.dto;

import java.util.List;
import java.util.Objects;
import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class TextFileRequestInputList {
    String role;
    List<Object> content;
}
