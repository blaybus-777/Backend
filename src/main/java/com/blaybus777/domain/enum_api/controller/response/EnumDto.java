package com.blaybus777.domain.enum_api.controller.response;

import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Builder
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Schema(description = "ENUM 목록 응답 DTO")
public class EnumDto {

  @Schema(description = "ENUM 이름")
  private String name;

  @Schema(description = "ENUM 코드")
  private String code;
}