package com.blaybus777.domain.assistant.dto;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class FileInputBody {
    String type;
    String file_url;
}
