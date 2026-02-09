package com.blaybus777.domain.assistant.dto;

import lombok.Builder;
import lombok.Getter;

@Getter
@Builder
public class ImageInputBody {
    String type;
    String image_url;
}
