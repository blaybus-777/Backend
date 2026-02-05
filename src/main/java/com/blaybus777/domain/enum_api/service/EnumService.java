package com.blaybus777.domain.enum_api.service;

import com.blaybus777.domain.enum_api.controller.response.EnumDto;
import com.blaybus777.domain.enum_api.controller.response.EnumResponse;
import com.blaybus777.util.enums.AIRole;
import com.blaybus777.util.enums.Model;
import com.blaybus777.util.enums.Tag;
import java.util.List;
import java.util.stream.Stream;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
@Transactional(readOnly = true)
public class EnumService {

    /**
     * 학습 모델 ENUM 목록 조회
     * @return Model List
     */
    public EnumResponse getModelList() {
        List<EnumDto> dayList =
            Stream.of(Model.values())
                .map(value -> EnumDto.builder()
                    .name(value.name())
                    .code(value.getValue())
                    .build()
                )
                .toList();

        return EnumResponse.builder()
                .items(dayList)
                .build();
    }

    /**
     * 학습 태그 ENUM 목록 조회
     * @return Tag List
     */
    public EnumResponse getTagList() {
        List<EnumDto> dayList =
            Stream.of(Tag.values())
                .map(value -> EnumDto.builder()
                    .name(value.name())
                    .code(value.getValue())
                    .build()
                )
                .toList();

        return EnumResponse.builder()
                .items(dayList)
                .build();
    }

    /**
     * AI Role ENUM 목록 조회
     * @return AI Role List
     */
    public EnumResponse getAIRoleList() {
        List<EnumDto> dayList =
            Stream.of(AIRole.values())
                .map(value -> EnumDto.builder()
                    .name(value.name())
                    .code(value.getValue())
                    .build()
                )
                .toList();

        return EnumResponse.builder()
                .items(dayList)
                .build();
    }

    /**
     * AI Content-Type ENUM 목록 조회
     * @return AI Content-Type List
     */
    public EnumResponse getAIContentTypeList() {
        List<EnumDto> dayList =
            Stream.of(Model.values())
                .map(value -> EnumDto.builder()
                    .name(value.name())
                    .code(value.getValue())
                    .build()
                )
                .toList();

        return EnumResponse.builder()
                .items(dayList)
                .build();
    }
}
