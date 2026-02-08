package com.blaybus777.domain.assistant;

import com.blaybus777.util.enums.AIContentType;
import com.blaybus777.util.enums.AIRole;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.Comment;

@Entity
@Builder
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor(access = AccessLevel.PROTECTED)
@Table(name = "history")
public class History {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "history_id")
    private Long historyId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "assistant_id")
    private Assistant assistant;

    @Enumerated(EnumType.STRING)
    @Comment("역할(user/assistant)")
    private AIRole role;

    @Enumerated(EnumType.STRING)
    @Comment("역할(user/assistant)")
    private AIContentType type;

    @Comment("부품 코드")
    @Column(name = "part_code")
    private String partCode;

    @Comment("메시지(질문/답변)")
    private String message;

    @Comment("이미지/PDF 파일")
    private String fileUrl;
}
