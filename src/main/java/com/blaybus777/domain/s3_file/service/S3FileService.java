package com.blaybus777.domain.s3_file.service;

import com.blaybus777.common.exception.BusinessException;
import com.blaybus777.common.response.ErrorCode;
import com.blaybus777.domain.part.Part;
import com.blaybus777.domain.part.repository.PartRepository;
import jakarta.transaction.Transactional;
import java.util.UUID;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import software.amazon.awssdk.core.sync.RequestBody;
import software.amazon.awssdk.services.s3.S3Client;
import software.amazon.awssdk.services.s3.model.DeleteObjectRequest;
import software.amazon.awssdk.services.s3.model.PutObjectRequest;

/**
 * S3FileService : S3 파일 관련 Service
 */

@Service
@RequiredArgsConstructor
public class S3FileService {

  @Value("${spring.cloud.aws.s3.bucket}")
  private String bucket;

  private final S3Client s3Client;
  private final PartRepository partRepository;

  /**
   * S3 파일 업로드 메서드
   * @param file : 파일
   * @return : 업로드된 S3 Url 반환
   */
  public String uploadFile(MultipartFile file, Long partId) {
    String originalFileName = file.getOriginalFilename();
    String fileName = UUID.randomUUID() + "-" + originalFileName;

    Part part = this.partRepository.findById(partId)
            .orElseThrow(() -> new BusinessException(ErrorCode.ENTITY_NOT_FOUND));

    PutObjectRequest putObjectRequest = PutObjectRequest.builder()
      .bucket(bucket)
      .key(fileName)
      .contentType(file.getContentType())
      .build();

    try {
      s3Client.putObject(putObjectRequest, RequestBody.fromInputStream(file.getInputStream(), file.getSize()));
      String s3FileUrl = String.format("https://%s.s3.ap-northeast-2.amazonaws.com/%s", bucket, fileName);

      // 부품의 이미지 저장
      part.setImageUrl(s3FileUrl);
      this.partRepository.save(part); // 수정

      return s3FileUrl;
    } catch (Exception e) {
      throw new BusinessException(ErrorCode.INTERNAL_SERVER_ERROR);
    }
  }

  /**
   * S3 파일 삭제 메서드
   * @param fileUrl : S3 Url
   */
  @Transactional
  public void deleteFile(String fileUrl, Long partId) {
    String fileName = fileUrl.substring(fileUrl.lastIndexOf("/") + 1);

    Part part = partRepository.findById(partId)
            .orElseThrow(() -> new BusinessException(ErrorCode.ENTITY_NOT_FOUND));

    DeleteObjectRequest deleteObjectRequest = DeleteObjectRequest.builder()
      .bucket(bucket)
      .key(fileName)
      .build();

    s3Client.deleteObject(deleteObjectRequest);
    part.setImageUrl(null);
    this.partRepository.save(part); // 수정
  }
}
