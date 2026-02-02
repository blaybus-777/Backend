package com.blaybus777.domain.test.repository;

import static com.blaybus777.domain.test.QTest.test;

import com.blaybus777.domain.test.controller.response.ListTestDto;
import com.querydsl.core.types.Projections;
import com.querydsl.jpa.impl.JPAQueryFactory;
import java.util.List;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Repository;

@Repository
@RequiredArgsConstructor
public class ListTestRepository {

    private final JPAQueryFactory queryFactory;

    /**
     * 테스트 목록 조회
     */
    public List<ListTestDto> getTestList() {
        return queryFactory
            .select(
                Projections.fields(
                    ListTestDto.class,
                    test.id.as("testId"),
                    test.title,
                    test.content
                )
            )
            .from(test)
            .fetch();
    }
}
