package com.blaybus777.common.response;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.time.ZonedDateTime;
import lombok.AllArgsConstructor;
import lombok.Getter;

@Getter
@AllArgsConstructor
public class ApiResponse<T> {

    private boolean success;
    private String status;
    private String message;
    private T data;
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
