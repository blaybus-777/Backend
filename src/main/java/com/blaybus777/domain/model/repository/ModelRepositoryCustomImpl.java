package com.blaybus777.domain.model.repository;

import com.blaybus777.domain.model.Model;
import com.blaybus777.domain.model.QModel;
import com.blaybus777.util.enums.Tag;
import com.querydsl.core.BooleanBuilder;
import com.querydsl.jpa.impl.JPAQueryFactory;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.stream.Collectors;

@Repository
@RequiredArgsConstructor
public class ModelRepositoryCustomImpl implements ModelRepositoryCustom {

    private final JPAQueryFactory queryFactory;

    @Override
    public List<Model> searchModels(List<String> tags, String search) {
        QModel model = QModel.model;

        BooleanBuilder builder = new BooleanBuilder();

        // 제목 검색 (search가 빈 문자열이 아닌 경우)
        if (search != null && !search.trim().isEmpty()) {
            builder.and(model.title.containsIgnoreCase(search.trim()));
        }

        // 태그 검색 (tags가 비어있지 않은 경우)
        if (tags != null && !tags.isEmpty()) {
            // String 태그를 Tag enum으로 변환
            List<Tag> tagEnums = tags.stream()
                .map(Tag::valueOf)
                .collect(Collectors.toList());

            // 제공된 태그 중 하나라도 포함하는 모델 검색
            for (Tag tag : tagEnums) {
                builder.and(model.tags.contains(tag));
            }
        }

        return queryFactory
            .selectFrom(model)
            .where(builder)
            .fetch();
    }
}
