package com.blaybus777.domain.s3_file.controller;

import com.blaybus777.common.response.ApiResponse;
import com.blaybus777.domain.s3_file.service.S3FileService;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

/**
 * S3FileController : S3 파일 관련 Controller
 */

@RestController
@RequestMapping(value = "/v1/s3")
@RequiredArgsConstructor
@Tag(name = "S3 관련 API")
public class S3FileController {
  private final S3FileService s3Service;

  /**
   * S3 파일 업로드 엔드포인트
   * @param file : 파일
   * @return : S3 파일 Url 반환
   */
  @PostMapping(value = "/upload/{partId}", consumes = { MediaType.MULTIPART_FORM_DATA_VALUE })
  @Operation(summary = "S3 파일 업로드", description = "S3 파일 업로드 엔드포인트")
  public ApiResponse<String> uploadFile(@RequestPart MultipartFile file, @PathVariable Long partId) {
    return ApiResponse.success(s3Service.uploadFile(file, partId));
  }

  /**
   * S3 파일 삭제 엔드포인트
   * @param s3Url : S3 Url
   * @return : 공통 응답 객체 반환
   */
  @DeleteMapping(value = "/delete/{partId}")
  @Operation(summary = "S3 파일 삭제", description = "S3 파일 삭제 엔드포인트")
  public ApiResponse<Void> deleteFile(@RequestParam("s3Url") String s3Url, @PathVariable Long partId) {
    s3Service.deleteFile(s3Url, partId);
    return ApiResponse.success(null);
  }
}
