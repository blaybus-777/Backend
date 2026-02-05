package com.blaybus777.common.response;

import com.fasterxml.jackson.annotation.JsonFormat;
import io.swagger.v3.oas.annotations.media.Schema;
import java.time.ZonedDateTime;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
@Schema(description = "API 공통 응답")
public class ApiResponse<T> {

    @Schema(description = "성공 여부", example = "true", requiredMode = Schema.RequiredMode.REQUIRED)
    private boolean success;

    @Schema(description = "응답 상태 코드", example = "OK", requiredMode = Schema.RequiredMode.REQUIRED)
    private String status;

    @Schema(description = "응답 메시지", example = "요청 성공", requiredMode = Schema.RequiredMode.REQUIRED)
    private String message;

    @Schema(description = "응답 데이터", requiredMode = Schema.RequiredMode.NOT_REQUIRED)
    private T data;

    @Schema(description = "응답 시간", example = "2026-02-05T21:00:00+09:00", requiredMode = Schema.RequiredMode.REQUIRED, type = "string")
    @JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd'T'HH:mm:ssXXX")
    private ZonedDateTime timestamp;

    public static <T> ApiResponse<T> success(T data) {
        return new ApiResponse<>(
            true,
            "OK",
            "요청 성공",
            data,
            ZonedDateTime.now()
        );
    }

    public static <T> ApiResponse<T> success(String message, T data) {
        return new ApiResponse<>(
            true,
            "OK",
            message,
            data,
            ZonedDateTime.now()
        );
    }

    public static <T> ApiResponse<T> fail(String status, String message) {
        return new ApiResponse<>(
            false,
            status,
            message,
            null,
            ZonedDateTime.now()
        );
    }

    public static <T> ApiResponse<T> fail(ErrorCode errorCode) {
        return new ApiResponse<>(
            false,
            errorCode.getCode(),
            errorCode.getMessage(),
            null,
            ZonedDateTime.now()
        );
    }
}
