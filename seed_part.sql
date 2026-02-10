-- 1. Arm Gear
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (1, 'arm_gear', '암 기어', 'Arm Gear', '단일 부품', '드론 암의 회전이나 위치 고정을 위해 사용되는 기어 부품으로, 구동부의 회전 운동을 구조물로 전달한다.', '모터 회전을 암 구조로 전달', '{
  "object_id": "arm_gear",
  "object_name": "암 기어",
  "english_name": "Arm Gear",
  "object_category": "단일 부품",

  "description": "드론 암의 회전이나 위치 고정을 위해 사용되는 기어 부품으로, 구동부의 회전 운동을 구조물로 전달한다.",

  "functional_roles": [
    "회전 운동을 암 구조에 전달",
    "암의 각도와 위치를 일정하게 유지",
    "구동부와 구조부를 기계적으로 연결"
  ],

  "key_engineering_theories": [
    "기어 맞물림을 통한 회전 운동 전달 원리",
    "기어비에 따른 속도 및 토크 변화 개념"
  ],

  "common_materials": [
    "POM(아세탈)",
    "나일론(PA)",
    "알루미늄"
  ],

  "educational_usage": {
    "learning_topics": [
      "기어 전달 메커니즘",
      "기계식 구동 구조 이해"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/drone/Arm+Gear.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '회전 운동을 암 구조에 전달'),
(LAST_INSERT_ID(), '암의 각도와 위치를 일정하게 유지'),
(LAST_INSERT_ID(), '구동부와 구조부를 기계적으로 연결');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '기어 맞물림을 통한 회전 운동 전달 원리'),
(LAST_INSERT_ID(), '기어비에 따른 속도 및 토크 변화 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), 'POM(아세탈)'),
(LAST_INSERT_ID(), '나일론(PA)'),
(LAST_INSERT_ID(), '알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '기어 전달 메커니즘'),
(LAST_INSERT_ID(), '기계식 구동 구조 이해');

-- 2. Beater Disc
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (1, 'beater_disc', '비터 디스크', 'Beater Disc', '단일 부품', '외부에서 눌리거나 접촉되는 입력부를 보호하는 커버형 부품으로, 버튼 또는 상태 표시부 상단에 위치한다.', '외부 입력 충격을 완화·보호', '{
  "object_id": "beater_disc",
  "object_name": "비터 디스크",
  "english_name": "Beater Disc",
  "object_category": "단일 부품",

  "description": "외부에서 눌리거나 접촉되는 입력부를 보호하는 커버형 부품으로, 버튼 또는 상태 표시부 상단에 위치한다.",

  "functional_roles": [
    "외부 힘이 내부로 직접 전달되는 것을 방지",
    "사용자의 입력을 부드럽게 전달",
    "내부 전자 부품 보호"
  ],

  "key_engineering_theories": [
    "탄성체의 압축 변형과 복원 원리",
    "외부 하중 차단을 통한 보호 설계 개념"
  ],

  "common_materials": [
    "실리콘 러버",
    "TPU",
    "ABS"
  ],

  "educational_usage": {
    "learning_topics": [
      "탄성 재료의 거동",
      "입력 인터페이스 보호 설계"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/drone/Beater+Disc.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '외부 힘이 내부로 직접 전달되는 것을 방지'),
(LAST_INSERT_ID(), '사용자의 입력을 부드럽게 전달'),
(LAST_INSERT_ID(), '내부 전자 부품 보호');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '탄성체의 압축 변형과 복원 원리'),
(LAST_INSERT_ID(), '외부 하중 차단을 통한 보호 설계 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '실리콘 러버'),
(LAST_INSERT_ID(), 'TPU'),
(LAST_INSERT_ID(), 'ABS');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '탄성 재료의 거동'),
(LAST_INSERT_ID(), '입력 인터페이스 보호 설계');

-- 3. Gearing
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (1, 'gearing', '기어링', 'Gearing', '단일 부품', '회전력을 전달하거나 감속하는 축 결합형 기어 부품으로, 드론 구동계의 일부로 작동한다.', '회전력의 속도와 토크 조절', '{
  "object_id": "gearing",
  "object_name": "기어링",
  "english_name": "Gearing",
  "object_category": "단일 부품",

  "description": "회전력을 전달하거나 감속하는 축 결합형 기어 부품으로, 드론 구동계의 일부로 작동한다.",

  "functional_roles": [
    "회전력을 다음 구동 부품으로 전달",
    "회전 속도 조절",
    "기계적 동작의 연속성 유지"
  ],

  "key_engineering_theories": [
    "회전축을 통한 동력 전달 원리",
    "감속 기어에 의한 토크 증폭 개념"
  ],

  "common_materials": [
    "강철",
    "황동",
    "강화 플라스틱"
  ],

  "educational_usage": {
    "learning_topics": [
      "동력 전달 시스템",
      "감속 기어 설계 개념"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/drone/Gearing.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '회전력을 다음 구동 부품으로 전달'),
(LAST_INSERT_ID(), '회전 속도 조절'),
(LAST_INSERT_ID(), '기계적 동작의 연속성 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '회전축을 통한 동력 전달 원리'),
(LAST_INSERT_ID(), '감속 기어에 의한 토크 증폭 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철'),
(LAST_INSERT_ID(), '황동'),
(LAST_INSERT_ID(), '강화 플라스틱');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '동력 전달 시스템'),
(LAST_INSERT_ID(), '감속 기어 설계 개념');

-- 4. Impeller Blade
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (1, 'impeller_blade', '임펠러 블레이드', 'Impeller Blade', '단일 부품', '회전하며 공기를 아래로 밀어내 추력을 생성하는 프로펠러로, 드론 비행의 핵심 부품이다.', '공기를 밀어 추력을 생성', '{
  "object_id": "impeller_blade",
  "object_name": "임펠러 블레이드",
  "english_name": "Impeller Blade",
  "object_category": "단일 부품",

  "description": "회전하며 공기를 아래로 밀어내 추력을 생성하는 프로펠러로, 드론 비행의 핵심 부품이다.",

  "functional_roles": [
    "공기를 아래 방향으로 가속",
    "드론을 공중에 띄움",
    "비행 중 방향 제어에 기여"
  ],

  "key_engineering_theories": [
    "공기 가속에 의한 추력 발생 원리",
    "회전 운동과 유체 흐름의 관계"
  ],

  "common_materials": [
    "ABS 플라스틱",
    "나일론",
    "카본 강화 플라스틱"
  ],

  "educational_usage": {
    "learning_topics": [
      "추력 발생 원리",
      "회전익 항공역학 기초"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/drone/Impeller+Blade.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '공기를 아래 방향으로 가속'),
(LAST_INSERT_ID(), '드론을 공중에 띄움'),
(LAST_INSERT_ID(), '비행 중 방향 제어에 기여');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '공기 가속에 의한 추력 발생 원리'),
(LAST_INSERT_ID(), '회전 운동과 유체 흐름의 관계');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), 'ABS 플라스틱'),
(LAST_INSERT_ID(), '나일론'),
(LAST_INSERT_ID(), '카본 강화 플라스틱');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '추력 발생 원리'),
(LAST_INSERT_ID(), '회전익 항공역학 기초');

-- 5. Leg
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (1, 'leg', '랜딩 레그', 'Leg', '단일 부품', '드론 착륙 시 기체를 지면으로부터 지지하는 구조물로, 하부 부품을 보호한다.', '착륙 시 기체를 지지·보호', '{
  "object_id": "leg",
  "object_name": "랜딩 레그",
  "english_name": "Leg",
  "object_category": "단일 부품",

  "description": "드론 착륙 시 기체를 지면으로부터 지지하는 구조물로, 하부 부품을 보호한다.",

  "functional_roles": [
    "착륙 시 기체 지지",
    "하부 센서 및 구조 보호",
    "지면과의 직접 충돌 방지"
  ],

  "key_engineering_theories": [
    "하중 전달과 충격 분산 원리",
    "구조물의 탄성 변형 개념"
  ],

  "common_materials": [
    "나일론",
    "TPU",
    "ABS"
  ],

  "educational_usage": {
    "learning_topics": [
      "충격 흡수 구조 설계",
      "착륙 하중 분산 개념"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/drone/Leg.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '착륙 시 기체 지지'),
(LAST_INSERT_ID(), '하부 센서 및 구조 보호'),
(LAST_INSERT_ID(), '지면과의 직접 충돌 방지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '하중 전달과 충격 분산 원리'),
(LAST_INSERT_ID(), '구조물의 탄성 변형 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '나일론'),
(LAST_INSERT_ID(), 'TPU'),
(LAST_INSERT_ID(), 'ABS');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '충격 흡수 구조 설계'),
(LAST_INSERT_ID(), '착륙 하중 분산 개념');

-- 6. Main Frame
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (1, 'main_frame', '메인 프레임', 'Main Frame', '단일 부품', '드론의 모든 부품이 결합되는 중심 구조물로, 기체의 전체 형상을 결정한다.', '모든 부품을 지지하는 구조', '{
  "object_id": "main_frame",
  "object_name": "메인 프레임",
  "english_name": "Main Frame",
  "object_category": "단일 부품",

  "description": "드론의 모든 부품이 결합되는 중심 구조물로, 기체의 전체 형상을 결정한다.",

  "functional_roles": [
    "모든 부품의 기준 구조 제공",
    "하중을 전체 구조로 분산",
    "드론의 형태 유지"
  ],

  "key_engineering_theories": [
    "하중 분산을 고려한 프레임 구조 원리",
    "대칭 구조에 의한 안정성 확보"
  ],

  "common_materials": [
    "ABS 플라스틱",
    "나일론 강화 소재",
    "카본 복합재"
  ],

  "educational_usage": {
    "learning_topics": [
      "구조 프레임 설계",
      "드론 전체 구조 이해"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/drone/Main+Frame.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '모든 부품의 기준 구조 제공'),
(LAST_INSERT_ID(), '하중을 전체 구조로 분산'),
(LAST_INSERT_ID(), '드론의 형태 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '하중 분산을 고려한 프레임 구조 원리'),
(LAST_INSERT_ID(), '대칭 구조에 의한 안정성 확보');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), 'ABS 플라스틱'),
(LAST_INSERT_ID(), '나일론 강화 소재'),
(LAST_INSERT_ID(), '카본 복합재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '구조 프레임 설계'),
(LAST_INSERT_ID(), '드론 전체 구조 이해');

-- 7. Main Frame_MIR
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (1, 'main_frame_mir', '메인 프레임(미러)', 'Main Frame_MIR', '단일 부품', '메인 프레임의 좌우 대칭 구조를 이루는 부품으로, 동일 구조를 반대 방향으로 사용한다.', '좌우 대칭 프레임 구조물', '{
  "object_id": "main_frame_mir",
  "object_name": "메인 프레임(미러)",
  "english_name": "Main Frame_MIR",
  "object_category": "단일 부품",

  "description": "메인 프레임의 좌우 대칭 구조를 이루는 부품으로, 동일 구조를 반대 방향으로 사용한다.",

  "functional_roles": [
    "반대편 구조 구성",
    "기체 무게 균형 유지",
    "조립 단순화"
  ],

  "key_engineering_theories": [
    "좌우 대칭 설계의 구조적 장점",
    "부품 공용화 설계 개념"
  ],

  "common_materials": [
    "ABS 플라스틱",
    "나일론 강화 소재"
  ],

  "educational_usage": {
    "learning_topics": [
      "대칭 구조 설계",
      "제조 효율성 개념"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/drone/Main+Frame_MIR.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '반대편 구조 구성'),
(LAST_INSERT_ID(), '기체 무게 균형 유지'),
(LAST_INSERT_ID(), '조립 단순화');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '좌우 대칭 설계의 구조적 장점'),
(LAST_INSERT_ID(), '부품 공용화 설계 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), 'ABS 플라스틱'),
(LAST_INSERT_ID(), '나일론 강화 소재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '대칭 구조 설계'),
(LAST_INSERT_ID(), '제조 효율성 개념');

-- 8. Nut
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (1, 'nut', '너트', 'Nut', '단일 부품', '나사와 함께 사용되어 부품을 고정하는 체결 부품이다.', '나사 체결을 고정하는 부품', '{
  "object_id": "nut",
  "object_name": "너트",
  "english_name": "Nut",
  "object_category": "단일 부품",

  "description": "나사와 함께 사용되어 부품을 고정하는 체결 부품이다.",

  "functional_roles": [
    "나사를 고정",
    "부품 간 결합 유지"
  ],

  "key_engineering_theories": [
    "나사산을 통한 체결력 유지 원리",
    "진동 환경에서의 풀림 방지 개념"
  ],

  "common_materials": [
    "강철",
    "스테인리스",
    "황동"
  ],

  "educational_usage": {
    "learning_topics": [
      "체결 요소의 역할",
      "기계 결합 기초"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/drone/Nut.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '나사를 고정'),
(LAST_INSERT_ID(), '부품 간 결합 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '나사산을 통한 체결력 유지 원리'),
(LAST_INSERT_ID(), '진동 환경에서의 풀림 방지 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철'),
(LAST_INSERT_ID(), '스테인리스'),
(LAST_INSERT_ID(), '황동');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '체결 요소의 역할'),
(LAST_INSERT_ID(), '기계 결합 기초');

-- 9. Screw
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (1, 'screw', '나사', 'Screw', '단일 부품', '회전시키며 부품을 조여 고정하는 체결 요소로, 드론 구조를 하나로 묶는다.', '부품을 조여 결합하는 요소', '{
  "object_id": "screw",
  "object_name": "나사",
  "english_name": "Screw",
  "object_category": "단일 부품",

  "description": "회전시키며 부품을 조여 고정하는 체결 요소로, 드론 구조를 하나로 묶는다.",

  "functional_roles": [
    "부품 간 고정",
    "구조적 안정성 유지",
    "분해 가능한 구조 제공"
  ],

  "key_engineering_theories": [
    "회전 운동의 직선 고정력 변환",
    "마찰에 의한 풀림 방지 개념"
  ],

  "common_materials": [
    "강철",
    "스테인리스",
    "알루미늄"
  ],

  "educational_usage": {
    "learning_topics": [
      "나사 체결 원리",
      "정비 및 분해 설계"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/drone/Screw.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '부품 간 고정'),
(LAST_INSERT_ID(), '구조적 안정성 유지'),
(LAST_INSERT_ID(), '분해 가능한 구조 제공');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '회전 운동의 직선 고정력 변환'),
(LAST_INSERT_ID(), '마찰에 의한 풀림 방지 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철'),
(LAST_INSERT_ID(), '스테인리스'),
(LAST_INSERT_ID(), '알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '나사 체결 원리'),
(LAST_INSERT_ID(), '정비 및 분해 설계');

-- 10. xyz
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (1, 'xyz', '보조 구조 부품', 'xyz', '단일 부품', '내부 공간을 채우거나 부품 배치를 보조하는 구조 부품으로, 기능 수행보다는 내부 형상 유지와 배치 안정성을 확보하기 위한 목적을 가진다.', '내부 부품 위치를 보조', '{
  "object_id": "xyz",
  "object_name": "보조 구조 부품",
  "english_name": "xyz",
  "object_category": "단일 부품",

  "description": "내부 공간을 채우거나 부품 배치를 보조하는 구조 부품으로, 기능 수행보다는 내부 형상 유지와 배치 안정성을 확보하기 위한 목적을 가진다.",

  "functional_roles": [
    "내부 부품의 위치를 잡음",
    "내부 공간을 채워 배치 안정성 확보",
    "구조 균형 유지에 기여"
  ],

  "key_engineering_theories": [
    "내부 공간 설계 개념",
    "무게 중심과 배치의 중요성"
  ],

  "common_materials": [
    "ABS 플라스틱",
    "PLA",
    "폼 소재"
  ],

  "educational_usage": {
    "learning_topics": [
      "내부 공간 설계",
      "무게 중심과 배치 설계",
      "시제품(프로토타입) 구조 보조 요소 활용"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/drone/xyz.png');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
(LAST_INSERT_ID(), '내부 부품의 위치를 잡음'),
(LAST_INSERT_ID(), '내부 공간을 채워 배치 안정성 확보'),
(LAST_INSERT_ID(), '구조 균형 유지에 기여');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(LAST_INSERT_ID(), '내부 공간 설계 개념'),
(LAST_INSERT_ID(), '무게 중심과 배치의 중요성');

INSERT INTO part_material (part_id, material) VALUES
(LAST_INSERT_ID(), 'ABS 플라스틱'),
(LAST_INSERT_ID(), 'PLA'),
(LAST_INSERT_ID(), '폼 소재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(LAST_INSERT_ID(), '내부 공간 설계'),
(LAST_INSERT_ID(), '무게 중심과 배치 설계'),
(LAST_INSERT_ID(), '시제품(프로토타입) 구조 보조 요소 활용');

-- 1. Clamp-Center
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (2, 'clamp_center', '센터 클램프', 'Clamp-Center', '단일 부품', '판스프링의 중앙을 고정하여 여러 장의 리프 스프링을 하나로 묶는 클램프 부품', '리프 중앙을 고정', '{
  "object_id": "clamp_center",
  "object_name": "센터 클램프",
  "english_name": "Clamp-Center",
  "object_category": "단일 부품",

  "description": "판스프링의 중앙을 고정하여 여러 장의 리프 스프링을 하나로 묶는 클램프 부품",

  "functional_roles": [
    "판스프링 전체를 중앙에서 고정",
    "스프링 어긋남 방지",
    "하중이 균등하게 전달되도록 보조"
  ],

  "key_engineering_theories": [
    "중앙 고정에 의한 하중 분산 원리",
    "체결력을 통한 구조 일체화 개념"
  ],

  "common_materials": [
    "탄소강",
    "합금강"
  ],

  "educational_usage": {
    "learning_topics": [
      "중앙 체결 구조",
      "다중 판 구조 고정 방식"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/leaf_spring/Clamp-Center.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
(75, '판스프링 전체를 중앙에서 고정'),
(75, '스프링 어긋남 방지'),
(75, '하중이 균등하게 전달되도록 보조');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(75, '중앙 고정에 의한 하중 분산 원리'),
(75, '체결력을 통한 구조 일체화 개념');

INSERT INTO part_material (part_id, material) VALUES
(75, '탄소강'),
(75, '합금강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(75, '중앙 체결 구조'),
(75, '다중 판 구조 고정 방식');

-- 2. Clamp-Primary
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (2, 'clamp_primary', '1차 클램프', 'Clamp-Primary', '단일 부품','판스프링을 1차적으로 고정하여 스프링 묶음을 안정적으로 유지하는 클램프 부품', '1차 스프링 고정', '{
  "object_id": "clamp_primary",
  "object_name": "1차 클램프",
  "english_name": "Clamp-Primary",
  "object_category": "단일 부품",

  "description": "판스프링을 1차적으로 고정하여 스프링 묶음을 안정적으로 유지하는 클램프 부품",

  "functional_roles": [
    "스프링 판 위치 고정",
    "주행 중 진동 억제",
    "판스프링 정렬 유지"
  ],

  "key_engineering_theories": [
    "국부 고정을 통한 형상 유지 원리",
    "반복 진동 환경에서의 체결 안정성"
  ],

  "common_materials": [
    "탄소강",
    "도금 강재"
  ],

  "educational_usage": {
    "learning_topics": [
      "국부 체결 구조",
      "진동 환경 체결 설계"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/leaf_spring/Clamp-Primary.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (76, '스프링 판 위치 고정'),
(76, '주행 중 진동 억제'),
(76, '판스프링 정렬 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (76, '국부 고정을 통한 형상 유지 원리'),
(76, '반복 진동 환경에서의 체결 안정성');

INSERT INTO part_material (part_id, material) VALUES
    (76, '탄소강'),
(76, '도금 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (76, '국부 체결 구조'),
(76, '진동 환경 체결 설계');

-- 3. Clamp-Secondary
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (2, 'clamp_secondary', '보조 클램프', 'Clamp-Secondary', '단일 부품', '판스프링을 보조적으로 묶어 주 클램프의 하중을 분산시키는 클램프 부품', '하중 분산 보조 고정', '{
  "object_id": "clamp_secondary",
  "object_name": "보조 클램프",
  "english_name": "Clamp-Secondary",
  "object_category": "단일 부품",

  "description": "판스프링을 보조적으로 묶어 주 클램프의 하중을 분산시키는 클램프 부품",

  "functional_roles": [
    "보조 고정 지점 제공",
    "스프링 판 벌어짐 방지",
    "구조적 안정성 향상"
  ],

  "key_engineering_theories": [
    "하중 분산에 의한 피로 감소 원리",
    "다점 고정 구조 개념"
  ],

  "common_materials": [
    "강철",
    "합금강"
  ],

  "educational_usage": {
    "learning_topics": [
      "다점 고정 설계",
      "피로 수명 향상 구조"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/leaf_spring/Clamp-Secondary.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (77, '보조 고정 지점 제공'),
(77, '스프링 판 벌어짐 방지'),
(77, '구조적 안정성 향상');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (77, '하중 분산에 의한 피로 감소 원리'),
(77, '다점 고정 구조 개념');

INSERT INTO part_material (part_id, material) VALUES
    (77, '강철'),
(77, '합금강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (77, '다점 고정 설계'),
(77, '피로 수명 향상 구조');

-- 5. Support
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (2, 'support', '지지 브래킷', 'Support', '단일 부품', '판스프링과 다른 구조물을 연결하는 지지 부품으로, 하중 전달 경로의 일부를 이룬다.', '스프링 지지 브래킷', '{
  "object_id": "support",
  "object_name": "지지 브래킷",
  "english_name": "Support",
  "object_category": "단일 부품",

  "description": "판스프링과 다른 구조물을 연결하는 지지 부품으로, 하중 전달 경로의 일부를 이룬다.",

  "functional_roles": [
    "스프링과 차체 연결",
    "하중 전달",
    "판스프링 위치 유지"
  ],

  "key_engineering_theories": [
    "하중 전달 경로 설계 개념",
    "지지 구조물의 강성 원리"
  ],

  "common_materials": [
    "강철",
    "알루미늄"
  ],

  "educational_usage": {
    "learning_topics": [
      "지지 구조 설계",
      "하중 전달 메커니즘"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/leaf_spring/Support.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
(79, '스프링과 차체 연결'),
(79, '하중 전달'),
(79, '판스프링 위치 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(79, '하중 전달 경로 설계 개념'),
(79, '지지 구조물의 강성 원리');

INSERT INTO part_material (part_id, material) VALUES
(79, '강철'),
(79, '알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(79, '지지 구조 설계'),
(79, '하중 전달 메커니즘');

-- 6. Support-Chassis Rigid
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (2, 'support_chassis_rigid', '차체 고정 지지대', 'Support-Chassis Rigid', '단일 부품', '차체와 판스프링을 강체로 연결하는 고정형 지지 부품', '차체에 강체 고정', '{
  "object_id": "support_chassis_rigid",
  "object_name": "차체 고정 지지대",
  "english_name": "Support-Chassis Rigid",
  "object_category": "단일 부품",

  "description": "차체와 판스프링을 강체로 연결하는 고정형 지지 부품",

  "functional_roles": [
    "판스프링을 차체에 단단히 고정",
    "불필요한 움직임 제한",
    "서스펜션 정렬 유지"
  ],

  "key_engineering_theories": [
    "강체 연결에 의한 변형 최소화",
    "구조물 고정 원리"
  ],

  "common_materials": [
    "강철",
    "주철"
  ],

  "educational_usage": {
    "learning_topics": [
      "강체 연결 구조",
      "서스펜션 고정 방식"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/leaf_spring/Support-Chassis+Rigid.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
(80, '판스프링을 차체에 단단히 고정'),
(80, '불필요한 움직임 제한'),
(80, '서스펜션 정렬 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(80, '강체 연결에 의한 변형 최소화'),
(80, '구조물 고정 원리');

INSERT INTO part_material (part_id, material) VALUES
(80, '강철'),
(80, '주철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(80, '강체 연결 구조'),
(80, '서스펜션 고정 방식');

-- 7. Support-Chassis
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (2, 'support_chassis', '차체 지지대', 'Support-Chassis', '단일 부품', '차체와 판스프링을 연결하며 일정 수준의 움직임을 허용하는 지지 부품', '차체와 유연 연결', '{
  "object_id": "support_chassis",
  "object_name": "차체 지지대",
  "english_name": "Support-Chassis",
  "object_category": "단일 부품",

  "description": "차체와 판스프링을 연결하며 일정 수준의 움직임을 허용하는 지지 부품",

  "functional_roles": [
    "판스프링과 차체 연결",
    "주행 중 움직임 허용",
    "구조적 안정성 유지"
  ],

  "key_engineering_theories": [
    "제한된 자유도를 가진 연결 구조 개념",
    "하중과 움직임의 균형 설계"
  ],

  "common_materials": [
    "강철",
    "합금강"
  ],

  "educational_usage": {
    "learning_topics": [
      "유연 연결 구조",
      "차체–서스펜션 인터페이스"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/leaf_spring/Support-Chassis.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (81, '판스프링과 차체 연결'),
(81, '주행 중 움직임 허용'),
(81, '구조적 안정성 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (81, '제한된 자유도를 가진 연결 구조 개념'),
(81, '하중과 움직임의 균형 설계');

INSERT INTO part_material (part_id, material) VALUES
    (81, '강철'),
(81, '합금강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (81, '유연 연결 구조'),
(81, '차체–서스펜션 인터페이스');

-- 8. Support-Rubber 60mm
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (2, 'support_rubber_60mm', '고무 지지대 60mm', 'Support-Rubber 60mm','단일 부품', '판스프링과 차체 사이에 삽입되는 일정 두께의 고무 완충 지지 부품', '고무 완충 지지대', '{
  "object_id": "support_rubber_60mm",
  "object_name": "고무 지지대 60mm",
  "english_name": "Support-Rubber 60mm",
  "object_category": "단일 부품",

  "description": "판스프링과 차체 사이에 삽입되는 일정 두께의 고무 완충 지지 부품",

  "functional_roles": [
    "진동 및 충격 흡수",
    "금속 간 직접 접촉 방지",
    "승차감 향상"
  ],

  "key_engineering_theories": [
    "탄성체의 압축 변형과 복원",
    "진동 감쇠 원리"
  ],

  "common_materials": [
    "천연고무",
    "합성고무"
  ],

  "educational_usage": {
    "learning_topics": [
      "고무 탄성 특성",
      "완충 요소 설계"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/leaf_spring/Support-Rubber+60mm.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
(82, '진동 및 충격 흡수'),
(82, '금속 간 직접 접촉 방지'),
(82, '승차감 향상');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(82, '탄성체의 압축 변형과 복원'),
(82, '진동 감쇠 원리');

INSERT INTO part_material (part_id, material) VALUES
(82, '천연고무'),
(82, '합성고무');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(82, '고무 탄성 특성'),
(82, '완충 요소 설계');

-- 9. Support-Rubber
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (2, 'support_rubber', '고무 완충 부품', 'Support-Rubber', '단일 부품', '판스프링 시스템 전반에 사용되는 일반 고무 완충 부품', '진동·충격 완화', '{
  "object_id": "support_rubber",
  "object_name": "고무 완충 부품",
  "english_name": "Support-Rubber",
  "object_category": "단일 부품",

  "description": "판스프링 시스템 전반에 사용되는 일반 고무 완충 부품",

  "functional_roles": [
    "주행 충격 완화",
    "소음 및 진동 전달 감소",
    "시스템 수명 연장"
  ],

  "key_engineering_theories": [
    "고무 재질의 감쇠 특성",
    "에너지 흡수에 의한 진동 감소"
  ],

  "common_materials": [
    "천연고무",
    "합성고무"
  ],

  "educational_usage": {
    "learning_topics": [
      "진동 감쇠 재료",
      "서스펜션 NVH 개념"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/leaf_spring/Support-Rubber.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
(83, '주행 충격 완화'),
(83, '소음 및 진동 전달 감소'),
(83, '시스템 수명 연장');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(83, '고무 재질의 감쇠 특성'),
(83, '에너지 흡수에 의한 진동 감소');

INSERT INTO part_material (part_id, material) VALUES
(83, '천연고무'),
(83, '합성고무');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(83, '진동 감쇠 재료'),
(83, '서스펜션 NVH 개념');

-- 1. Fuhrung
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (3, 'fuhrung', '가이드 본체', 'Fuhrung', '단일 부품', '바이스에서 이동 부품을 직선으로 안내하는 가이드 본체로, 전체 구조의 정렬 정확도를 결정하는 기본 프레임', '직선 이동 가이드', '{
  "object_id": "fuhrung",
  "object_name": "가이드 본체",
  "english_name": "Fuhrung",
  "object_category": "단일 부품",

  "description": "바이스에서 이동 부품을 직선으로 안내하는 가이드 본체로, 전체 구조의 정렬 정확도를 결정하는 기본 프레임",

  "functional_roles": [
    "이동 바이스 조의 직선 이동을 유도",
    "바이스 전체 강성 확보",
    "가공 중 발생하는 진동 억제"
  ],

  "key_engineering_theories": [
    "직선 운동 구속(Linear Constraint) 원리",
    "가이드면 평행도 유지 개념"
  ],

  "common_materials": [
    "주철(Cast Iron)",
    "강철(Steel)"
  ],

  "educational_usage": {
    "learning_topics": [
      "직선 가이드 구조",
      "정렬 정확도와 강성의 관계",
      "진동 감쇠용 재료 선택"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/machine_vice/Fuhrung.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
(96, '이동 바이스 조의 직선 이동을 유도'),
(96, '바이스 전체 강성 확보'),
(96, '가공 중 발생하는 진동 억제');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(96, '직선 운동 구속(Linear Constraint) 원리'),
(96, '가이드면 평행도 유지 개념');

INSERT INTO part_material (part_id, material) VALUES
(96, '주철(Cast Iron)'),
(96, '강철(Steel)');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(96, '직선 가이드 구조'),
(96, '정렬 정확도와 강성의 관계'),
(96, '진동 감쇠용 재료 선택');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
(97, '이동 바이스 조를 구조적으로 지지'),
(97, '스핀들의 힘을 전달받아 이동'),
(97, '클램핑 압력을 공작물에 전달');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(97, '스핀들 회전에 의한 병진 운동 변환'),
(97, '가이드 접촉면 정렬 유지 원리');

INSERT INTO part_material (part_id, material) VALUES
(97, '주철'),
(97, '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(97, '나사 구동에 의한 직선 이동'),
(97, '가동부 정렬과 마모'),
(97, '클램핑 압력 전달 경로');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
(98, '공작물을 기준 위치에서 지지'),
(98, '이동 조와 함께 클램핑 압력 형성'),
(98, '가공 정밀도 확보');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(98, '고정 기준면(Fixed Reference Surface) 개념'),
(98, '반력 지지 구조 원리');

INSERT INTO part_material (part_id, material) VALUES
(98, '공구강'),
(98, '열처리 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(98, '기준면 설정과 위치 결정'),
(98, '반력 지지 구조'),
(98, '마모/경도와 정밀도 유지');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
(99, '공작물을 고정 방향으로 이동시킴'),
(99, '클램핑 압력을 직접 가함'),
(99, '다양한 공작물 크기에 대응');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(99, '이동 클램핑 구조 원리'),
(99, '압축력 전달 개념');

INSERT INTO part_material (part_id, material) VALUES
(99, '공구강'),
(99, '합금강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(99, '가동 죠의 힘 전달'),
(99, '압축 하중과 접촉 설계'),
(99, '공작물 크기 대응 메커니즘');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
(100, '스핀들을 정확한 위치에서 지지'),
(100, '회전력을 이동력으로 변환'),
(100, '바이스 작동 신뢰성 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(100, '나사-너트 운동 변환 원리'),
(100, '축방향 하중 분산 개념');

INSERT INTO part_material (part_id, material) VALUES
(100, '주철'),
(100, '청동 인서트');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(100, '스핀들 지지 구조'),
(100, '축방향 하중 분산'),
(100, '마찰·마모 감소 인서트 설계');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
(101, '공작물을 안정적으로 고정'),
(101, '공작물 표면 손상 방지'),
(101, '마모 시 손쉽게 교체');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(101, '접촉면 압력 분산 원리'),
(101, '마찰력 증대 개념');

INSERT INTO part_material (part_id, material) VALUES
(101, '열처리 공구강'),
(101, '표면 경화 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(101, '소모품 설계(교체성)'),
(101, '접촉 압력 분산'),
(101, '표면 경화와 마찰');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
(102, '이동 정확도 향상'),
(102, '쏠림 및 편마모 방지'),
(102, '정렬 상태 장기 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(102, '슬라이딩 가이드 구조'),
(102, '마찰 제어 원리');

INSERT INTO part_material (part_id, material) VALUES
(102, '강철'),
(102, '표면 경화 처리 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(102, '슬라이드 가이드 설계'),
(102, '마찰과 정밀도'),
(102, '편마모 방지 구조');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
(103, '바이스 개폐 제어'),
(103, '클램핑 힘 생성'),
(103, '작업자 입력을 기계적 힘으로 변환');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(103, '트라페조이드 나사 형상 이론'),
(103, '마찰 기반 자잠김(Self-locking) 원리');

INSERT INTO part_material (part_id, material) VALUES
(103, '합금강'),
(103, '표면 경화 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(103, '나사 형상과 효율'),
(103, '자잠김 조건과 안전'),
(103, '클램핑 힘 생성 메커니즘');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
(104, '바이스를 기계 테이블에 고정'),
(104, '전체 구조 하중 지지'),
(104, '가공 중 안정성 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(104, '하중 분산 구조 설계'),
(104, '기초 지지 원리');

INSERT INTO part_material (part_id, material) VALUES
(104, '주철'),
(104, '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(104, '베이스 강성과 안정성'),
(104, '하중 분산 설계'),
(104, '기계 테이블 체결 개념');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
(105, '스핀들에서 발생한 압력 전달'),
(105, '회전 부품과 고정부 사이에서 힘을 매개'),
(105, '국부 마모 방지 및 수명 연장'),
(105, '클램핑 동작의 부드러움 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(105, '축방향 압축 하중 전달(Axial Load Transfer) 원리'),
(105, '면 접촉을 통한 국부 응력 분산 개념'),
(105, '슬리브 구조에 의한 정렬 유지 이론');

INSERT INTO part_material (part_id, material) VALUES
(105, '강철(Steel)'),
(105, '경화강 또는 표면 열처리 강재'),
(105, '청동(Bronze)');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(105, '압력 전달 부시 역할'),
(105, '축방향 하중 전달'),
(105, '마모 저감 재료(청동) 적용');

-- 1. Rotary Base
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (4, 'rotary_base', '회전 베이스', 'Rotary Base', '단일 부품', '로봇 암 전체를 지지하는 회전 베이스 부품으로, 로봇의 1축(Base Axis)을 형성한다', '로봇 암 회전 베이스', '{
  "object_id": "rotary_base",
  "object_name": "회전 베이스",
  "english_name": "Rotary Base",
  "object_category": "단일 부품",

  "description": "로봇 암 전체를 지지하는 회전 베이스 부품으로, 로봇의 1축(Base Axis)을 형성한다",

  "functional_roles": [
    "로봇 암 전체 지지",
    "수평 회전 운동 제공",
    "상부 관절 하중 분산"
  ],

  "key_engineering_theories": [
    "회전축 구속 원리",
    "베어링 기반 회전 지지 개념"
  ],

  "common_materials": [
    "알루미늄 합금",
    "강철"
  ],

  "educational_usage": {
    "learning_topics": [
      "로봇 베이스 구조",
      "회전축 설계",
      "하중 분산 구조"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/robot_arm/Rotary+Base.png');

select * from part_engineering_theory;

INSERT INTO part_functional_role (part_id, functional_role) VALUES
(LAST_INSERT_ID(), '로봇 암 전체 지지'),
(LAST_INSERT_ID(), '수평 회전 운동 제공'),
(LAST_INSERT_ID(), '상부 관절 하중 분산');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(LAST_INSERT_ID(), '회전축 구속 원리'),
(LAST_INSERT_ID(), '베어링 기반 회전 지지 개념');

INSERT INTO part_material (part_id, material) VALUES
(LAST_INSERT_ID(), '알루미늄 합금'),
(LAST_INSERT_ID(), '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(LAST_INSERT_ID(), '로봇 베이스 구조'),
(LAST_INSERT_ID(), '회전축 설계'),
(LAST_INSERT_ID(), '하중 분산 구조');

-- 2. Joint Bracket
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (4, 'joint_bracket', '관절 브래킷', 'Joint Bracket', '단일 부품', '로봇 관절을 형성하며 두 회전 요소를 연결하는 구조 브래킷', '관절을 연결하는 브래킷', '{
  "object_id": "joint_bracket",
  "object_name": "관절 브래킷",
  "english_name": "Joint Bracket",
  "object_category": "단일 부품",

  "description": "로봇 관절을 형성하며 두 회전 요소를 연결하는 구조 브래킷",

  "functional_roles": [
    "관절 회전 중심 형성",
    "링크 간 정렬 유지",
    "하중 및 토크 전달"
  ],

  "key_engineering_theories": [
    "회전 관절 구조 원리",
    "핀 결합을 통한 자유도 부여"
  ],

  "common_materials": [
    "알루미늄 합금",
    "강철"
  ],

  "educational_usage": {
    "learning_topics": [
      "관절 구조 설계",
      "자유도 개념",
      "하중 전달 경로"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/robot_arm/Joint+Bracket.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
(LAST_INSERT_ID(), '관절 회전 중심 형성'),
(LAST_INSERT_ID(), '링크 간 정렬 유지'),
(LAST_INSERT_ID(), '하중 및 토크 전달');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(LAST_INSERT_ID(), '회전 관절 구조 원리'),
(LAST_INSERT_ID(), '핀 결합을 통한 자유도 부여');

INSERT INTO part_material (part_id, material) VALUES
(LAST_INSERT_ID(), '알루미늄 합금'),
(LAST_INSERT_ID(), '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(LAST_INSERT_ID(), '관절 구조 설계'),
(LAST_INSERT_ID(), '자유도 개념'),
(LAST_INSERT_ID(), '하중 전달 경로');

-- 3. Link Arm
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (4, 'link_arm', '링크 암', 'Link Arm', '단일 부품', '로봇 암의 길이를 형성하며 관절과 관절을 연결하는 구조 링크', '암 길이를 형성', '{
  "object_id": "link_arm",
  "object_name": "링크 암",
  "english_name": "Link Arm",
  "object_category": "단일 부품",

  "description": "로봇 암의 길이를 형성하며 관절과 관절을 연결하는 구조 링크",

  "functional_roles": [
    "작업 반경 형성",
    "힘과 움직임 전달",
    "위치 제어 정확도 향상"
  ],

  "key_engineering_theories": [
    "링크–조인트 메커니즘",
    "굽힘 하중 분산 구조"
  ],

  "common_materials": [
    "알루미늄 합금",
    "합금강"
  ],

  "educational_usage": {
    "learning_topics": [
      "링크 구조 설계",
      "작업 반경 분석",
      "굽힘 하중 제어"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/robot_arm/Link+Arm.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
(LAST_INSERT_ID(), '작업 반경 형성'),
(LAST_INSERT_ID(), '힘과 움직임 전달'),
(LAST_INSERT_ID(), '위치 제어 정확도 향상');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(LAST_INSERT_ID(), '링크–조인트 메커니즘'),
(LAST_INSERT_ID(), '굽힘 하중 분산 구조');

INSERT INTO part_material (part_id, material) VALUES
(LAST_INSERT_ID(), '알루미늄 합금'),
(LAST_INSERT_ID(), '합금강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(LAST_INSERT_ID(), '링크 구조 설계'),
(LAST_INSERT_ID(), '작업 반경 분석'),
(LAST_INSERT_ID(), '굽힘 하중 제어');

-- 4. Actuator Housing
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (4, 'actuator_housing', '액추에이터 하우징', 'Actuator Housing', '단일 부품', '모터 또는 감속기를 수용하여 구동부를 보호하는 하우징 구조물', '구동부를 보호', '{
  "object_id": "actuator_housing",
  "object_name": "액추에이터 하우징",
  "english_name": "Actuator Housing",
  "object_category": "단일 부품",

  "description": "모터 또는 감속기를 수용하여 구동부를 보호하는 하우징 구조물",

  "functional_roles": [
    "액추에이터 고정",
    "외부 충격 차단",
    "관절 구동 안정성 확보"
  ],

  "key_engineering_theories": [
    "구동원 보호 구조 설계",
    "토크 전달 경로 안정화 개념"
  ],

  "common_materials": [
    "알루미늄 합금",
    "강철"
  ],

  "educational_usage": {
    "learning_topics": [
      "구동부 하우징 설계",
      "방열과 강성",
      "진동 억제 구조"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/robot_arm/Actuator+Housing.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '액추에이터 고정'),
(LAST_INSERT_ID(), '외부 충격 차단'),
(LAST_INSERT_ID(), '관절 구동 안정성 확보');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '구동원 보호 구조 설계'),
(LAST_INSERT_ID(), '토크 전달 경로 안정화 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '알루미늄 합금'),
(LAST_INSERT_ID(), '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '구동부 하우징 설계'),
(LAST_INSERT_ID(), '방열과 강성'),
(LAST_INSERT_ID(), '진동 억제 구조');

-- 5. Joint Coupling
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (4, 'joint_coupling', '관절 커플링', 'Joint Coupling', '단일 부품', '회전축과 링크를 결합하여 토크를 직접 전달하는 핵심 결합 부품', '토크를 직접 전달', '{
  "object_id": "joint_coupling",
  "object_name": "관절 커플링",
  "english_name": "Joint Coupling",
  "object_category": "단일 부품",

  "description": "회전축과 링크를 결합하여 토크를 직접 전달하는 핵심 결합 부품",

  "functional_roles": [
    "모터 회전 전달",
    "토크 손실 최소화",
    "관절 반복 정밀도 유지"
  ],

  "key_engineering_theories": [
    "토크 전달 이론",
    "축 정렬 및 미끄럼 방지 구조"
  ],

  "common_materials": [
    "강철",
    "표면 경화 강재"
  ],

  "educational_usage": {
    "learning_topics": [
      "커플링 설계",
      "토크 전달과 정렬",
      "마모 방지 구조"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/robot_arm/Joint+Coupling.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '모터 회전 전달'),
(LAST_INSERT_ID(), '토크 손실 최소화'),
(LAST_INSERT_ID(), '관절 반복 정밀도 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '토크 전달 이론'),
(LAST_INSERT_ID(), '축 정렬 및 미끄럼 방지 구조');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철'),
(LAST_INSERT_ID(), '표면 경화 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '커플링 설계'),
(LAST_INSERT_ID(), '토크 전달과 정렬'),
(LAST_INSERT_ID(), '마모 방지 구조');

-- 6. Wrist Joint
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (4, 'wrist_joint', '손목 관절', 'Wrist Joint', '단일 부품', '로봇 암 말단부의 회전 관절로, 엔드 이펙터의 방향을 제어한다', '말단 방향 제어', '{
  "object_id": "wrist_joint",
  "object_name": "손목 관절",
  "english_name": "Wrist Joint",
  "object_category": "단일 부품",

  "description": "로봇 암 말단부의 회전 관절로, 엔드 이펙터의 방향을 제어한다",

  "functional_roles": [
    "말단 장치 방향 제어",
    "정밀 자세 제어",
    "작업 유연성 향상"
  ],

  "key_engineering_theories": [
    "다자유도 관절 개념",
    "회전축 분리 설계 원리"
  ],

  "common_materials": [
    "알루미늄 합금",
    "강철 핀"
  ],

  "educational_usage": {
    "learning_topics": [
      "손목 관절 구조",
      "자세 제어",
      "말단 자유도 설계"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/robot_arm/Wrist+Joint.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '말단 장치 방향 제어'),
(LAST_INSERT_ID(), '정밀 자세 제어'),
(LAST_INSERT_ID(), '작업 유연성 향상');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '다자유도 관절 개념'),
(LAST_INSERT_ID(), '회전축 분리 설계 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '알루미늄 합금'),
(LAST_INSERT_ID(), '강철 핀');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '손목 관절 구조'),
(LAST_INSERT_ID(), '자세 제어'),
(LAST_INSERT_ID(), '말단 자유도 설계');

-- 7. End Effector Mount
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (4, 'end_effector_mount', '엔드 이펙터 마운트', 'End Effector Mount', '단일 부품', '그리퍼 또는 도구를 장착하는 로봇 암 말단 인터페이스 부품', '도구 장착 인터페이스', '{
  "object_id": "end_effector_mount",
  "object_name": "엔드 이펙터 마운트",
  "english_name": "End Effector Mount",
  "object_category": "단일 부품",

  "description": "그리퍼 또는 도구를 장착하는 로봇 암 말단 인터페이스 부품",

  "functional_roles": [
    "엔드 이펙터 장착",
    "작업 하중 전달",
    "로봇 작업 범위 확장"
  ],

  "key_engineering_theories": [
    "인터페이스 표준화 개념",
    "말단 하중 전달 구조"
  ],

  "common_materials": [
    "알루미늄",
    "강철"
  ],

  "educational_usage": {
    "learning_topics": [
      "엔드 이펙터 인터페이스",
      "도구 교체 설계",
      "말단 하중 설계"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/robot_arm/End+Effector+Mount.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '엔드 이펙터 장착'),
(LAST_INSERT_ID(), '작업 하중 전달'),
(LAST_INSERT_ID(), '로봇 작업 범위 확장');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '인터페이스 표준화 개념'),
(LAST_INSERT_ID(), '말단 하중 전달 구조');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '알루미늄'),
(LAST_INSERT_ID(), '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '엔드 이펙터 인터페이스'),
(LAST_INSERT_ID(), '도구 교체 설계'),
(LAST_INSERT_ID(), '말단 하중 설계');

-- 8. Parallel Gripper
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (4, 'parallel_gripper', '평행 그리퍼', 'Parallel Gripper', '단일 부품', '두 개의 죠가 평행하게 움직이며 물체를 파지하는 그리퍼 장치', '평행 구조 그리퍼', '{
  "object_id": "parallel_gripper",
  "object_name": "평행 그리퍼",
  "english_name": "Parallel Gripper",
  "object_category": "단일 부품",

  "description": "두 개의 죠가 평행하게 움직이며 물체를 파지하는 그리퍼 장치",

  "functional_roles": [
    "물체 안정적 파지",
    "반복 작업에서 일정한 파지력 유지",
    "자동화 작업 수행"
  ],

  "key_engineering_theories": [
    "평행 링크 그리퍼 메커니즘",
    "마찰 기반 파지 원리"
  ],

  "common_materials": [
    "알루미늄 합금",
    "고무 또는 강철 죠"
  ],

  "educational_usage": {
    "learning_topics": [
      "그리퍼 메커니즘",
      "파지력 계산",
      "자동화 파지 시스템"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/robot_arm/Parallel+Gripper.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '물체 안정적 파지'),
(LAST_INSERT_ID(), '반복 작업에서 일정한 파지력 유지'),
(LAST_INSERT_ID(), '자동화 작업 수행');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '평행 링크 그리퍼 메커니즘'),
(LAST_INSERT_ID(), '마찰 기반 파지 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '알루미늄 합금'),
(LAST_INSERT_ID(), '고무 또는 강철 죠');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '그리퍼 메커니즘'),
(LAST_INSERT_ID(), '파지력 계산'),
(LAST_INSERT_ID(), '자동화 파지 시스템');

-- 1. Base Gear
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (5, 'base_gear', '베이스 기어', 'Base Gear', '단일 부품', '로봇 집게 구동의 시작점이 되는 기준 기어로, 모터 또는 외부 회전 입력을 전달받는 핵심 회전 부품', '그리퍼 구동의 기준 기어', '{
  "object_id": "base_gear",
  "object_name": "베이스 기어",
  "english_name": "Base Gear",
  "object_category": "단일 부품",

  "description": "로봇 집게 구동의 시작점이 되는 기준 기어로, 모터 또는 외부 회전 입력을 전달받는 핵심 회전 부품",

  "functional_roles": [
    "구동원의 회전을 기구부로 전달",
    "전체 집게 동작의 기준 회전 제공",
    "다른 기어들과의 동기화 유지"
  ],

  "key_engineering_theories": [
    "기어 맞물림에 의한 회전력 전달 원리",
    "회전 속도 및 토크 변환 개념"
  ],

  "common_materials": [
    "엔지니어링 플라스틱",
    "알루미늄",
    "강철"
  ],

  "educational_usage": {
    "learning_topics": [
      "기어 구동 기초",
      "토크 전달 메커니즘"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/robot_gripper/Base+Gear.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (87, '구동원의 회전을 기구부로 전달'),
(87, '전체 집게 동작의 기준 회전 제공'),
(87, '다른 기어들과의 동기화 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (87, '기어 맞물림에 의한 회전력 전달 원리'),
(87, '회전 속도 및 토크 변환 개념');

INSERT INTO part_material (part_id, material) VALUES
    (87, '엔지니어링 플라스틱'),
(87, '알루미늄'),
(87, '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(87, '기어 구동 기초'),
(87, '토크 전달 메커니즘');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (88, '로봇 집게를 외부 구조물에 고정'),
(88, '구동 중 발생하는 반력 지지'),
(88, '전체 그리퍼 정렬 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (88, '고정 지지 구조(Fixed Support) 개념'),
(88, '하중 전달 경로 설계 원리');

INSERT INTO part_material (part_id, material) VALUES
    (88, '알루미늄 합금'),
(88, '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (88, '고정 지지 구조'),
(88, '하중 전달 설계');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (89, '기어와 링크를 정확한 위치에 고정'),
(89, '전체 구조 강성 확보'),
(89, '기구 동작의 기준 프레임 제공');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (89, '평면 기준면(Reference Plane) 개념'),
(89, '하중 분산 지지 구조 원리');

INSERT INTO part_material (part_id, material) VALUES
    (89, '알루미늄'),
(89, '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (89, '기초 프레임 설계'),
(89, '기준면 개념');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (90, '기어 회전을 링크 시스템으로 전달'),
(90, '집게 개폐 초기 운동 생성'),
(90, '기구 동작 타이밍 제어');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (90, '회전 운동 → 병진/각운동 변환 원리'),
(90, '기어-링크 연동 메커니즘');

INSERT INTO part_material (part_id, material) VALUES
    (90, '플라스틱'),
(90, '알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (90, '운동 변환 메커니즘'),
(90, '기어-링크 연계');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (91, '좌우 집게 동작 균형 전달'),
(91, '힘 분배 조절'),
(91, '파지 안정성 향상');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (91, '대칭 링크 구조 개념'),
(91, '동기 운동(Synchronous Motion) 원리');

INSERT INTO part_material (part_id, material) VALUES
    (91, '플라스틱'),
(91, '알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (91, '동기 링크 설계'),
(91, '대칭 구조 메커니즘');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (92, '물체 파지 및 고정'),
(92, '미끄럼 방지'),
(92, '작업 정확도 결정');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (92, '마찰 기반 파지 원리'),
(92, '레버 작용에 의한 파지력 증폭');

INSERT INTO part_material (part_id, material) VALUES
    (92, '플라스틱'),
(92, '고무 코팅'),
(92, '표면 텍스처 적용 소재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (92, '파지 메커니즘'),
(92, '마찰과 접촉 설계');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (93, '기어 움직임을 집게로 전달'),
(93, '집게 개폐 경로 형성'),
(93, '반복 동작 신뢰성 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (93, '링크 메커니즘(Linkage Mechanism)'),
(93, '다절 링크 운동 전달 원리');

INSERT INTO part_material (part_id, material) VALUES
    (93, '플라스틱'),
(93, '알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (93, '링크 기구학'),
(93, '운동 전달 구조');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (94, '회전축 형성'),
(94, '기구 자유도 제공'),
(94, '구조 결합 안정성 확보');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (94, '회전 관절(Revolute Joint) 개념'),
(94, '전단 하중 지지 원리');

INSERT INTO part_material (part_id, material) VALUES
    (94, '강철'),
(94, '스테인리스강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (94, '회전 관절 구조'),
(94, '전단 하중과 내구 설계');

-- 1. BASE
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (6, 'base', '베이스', 'Base', '단일 부품', '서스펜션 하부에 위치하는 기준 지지 부품으로 전체 구조에서 하중을 전달받는 고정 베이스', '서스펜션 하부 지지', '{
  "object_id": "base",
  "object_name": "베이스",
  "english_name": "Base",
  "object_category": "단일 부품",

  "description": "서스펜션 하부에 위치하는 기준 지지 부품으로 전체 구조에서 하중을 전달받는 고정 베이스",

  "functional_roles": [
    "서스펜션 전체를 하부 구조에 고정",
    "스프링 및 로드에서 전달되는 하중 지지",
    "시스템 정렬 기준점 형성"
  ],

  "key_engineering_theories": [
    "고정 지지 구조(Fixed Support) 원리",
    "하중 전달 경로 설계 개념"
  ],

  "common_materials": [
    "알루미늄 합금",
    "강철"
  ],

  "educational_usage": {
    "learning_topics": [
      "고정 지지 구조",
      "하중 전달 설계"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/suspension/BASE.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (71, '서스펜션 전체를 하부 구조에 고정'),
(71, '스프링 및 로드에서 전달되는 하중 지지'),
(71, '시스템 정렬 기준점 형성');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (71, '고정 지지 구조(Fixed Support) 원리'),
(71, '하중 전달 경로 설계 개념');

INSERT INTO part_material (part_id, material) VALUES
    (71, '알루미늄 합금'),
(71, '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (71, '고정 지지 구조'),
(71, '하중 전달 설계');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (72, '로드의 직선 운동 안내'),
(72, '스프링 압축 시 흔들림 방지'),
(72, '내부 부품 정렬 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (72, '축 정렬(Coaxial Alignment) 개념'),
(72, '슬라이딩 가이드 구조 원리');

INSERT INTO part_material (part_id, material) VALUES
    (72, '알루미늄 합금'),
(72, '엔지니어링 플라스틱');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (72, '축 정렬 설계'),
(72, '슬라이딩 가이드 구조');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (73, '로드와 부품 위치 고정'),
(73, '스프링 예압 유지'),
(73, '조립 안정성 확보');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (73, '나사 체결(Threaded Fastening) 원리'),
(73, '축방향 고정 및 풀림 방지 개념');

INSERT INTO part_material (part_id, material) VALUES
    (73, '강철'),
(73, '알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (73, '나사 체결 원리'),
(73, '예압(preload) 개념');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (74, '스프링 하중 전달'),
(74, '서스펜션 운동 중심 축 역할'),
(74, '전체 구조 강성 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (74, '축방향 하중 전달(Axial Load Transfer)'),
(74, '직선 운동 구속 원리');

INSERT INTO part_material (part_id, material) VALUES
    (74, '강철'),
(74, '표면 경화 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (74, '축 부품 설계'),
(74, '축방향 하중');


INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (75, '외부 충격 흡수'),
(75, '탄성 복원 수행'),
(75, '시스템 안정성 향상');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (75, '훅의 법칙(Hooke''s Law)'),
(75, '탄성 변형에 의한 에너지 저장 원리');

INSERT INTO part_material (part_id, material) VALUES
    (75, '스프링강'),
(75, '열처리 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (75, '탄성체 거동'),
(75, '스프링 설계 기초');

-- 1. Connecting Rod Cap
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (7, 'connecting_rod_cap', '커넥팅 로드 캡', 'Connecting Rod Cap', '단일 부품', '커넥팅 로드 하단에서 크랭크샤프트의 크랭크 핀을 감싸는 분리형 캡 부품', '크랭크핀을 감싸 지지', '{
  "object_id": "connecting_rod_cap",
  "object_name": "커넥팅 로드 캡",
  "english_name": "Connecting Rod Cap",
  "object_category": "단일 부품",

  "description": "커넥팅 로드 하단에서 크랭크샤프트의 크랭크 핀을 감싸는 분리형 캡 부품",

  "functional_roles": [
    "크랭크 핀 안정적 지지",
    "커넥팅 로드 하부 구조 완성",
    "회전 중 정렬 유지"
  ],

  "key_engineering_theories": [
    "분할 베어링 구조 원리",
    "볼트 체결에 의한 원형 구속 개념"
  ],

  "common_materials": [
    "단조 강철",
    "합금강"
  ],

  "educational_usage": {
    "learning_topics": [
      "분할 구조 설계",
      "회전 축 지지 방식"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/v4_engine/Connecting+Rod+Cap.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '크랭크 핀 안정적 지지'),
(LAST_INSERT_ID(), '커넥팅 로드 하부 구조 완성'),
(LAST_INSERT_ID(), '회전 중 정렬 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '분할 베어링 구조 원리'),
(LAST_INSERT_ID(), '볼트 체결에 의한 원형 구속 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '단조 강철'),
(LAST_INSERT_ID(), '합금강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '분할 구조 설계'),
(LAST_INSERT_ID(), '회전 축 지지 방식');

-- 2. Connecting Rod
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (7, 'connecting_rod', '커넥팅 로드', 'Connecting Rod', '단일 부품', '피스톤과 크랭크샤프트를 연결하여 직선 운동을 회전 운동으로 변환하는 핵심 동력 전달 부품', '왕복을 회전으로 변환', '{
  "object_id": "connecting_rod",
  "object_name": "커넥팅 로드",
  "english_name": "Connecting Rod",
  "object_category": "단일 부품",

  "description": "피스톤과 크랭크샤프트를 연결하여 직선 운동을 회전 운동으로 변환하는 핵심 동력 전달 부품",

  "functional_roles": [
    "피스톤 힘 전달",
    "회전 운동 생성",
    "고속 반복 운동 수행"
  ],

  "key_engineering_theories": [
    "슬라이더-크랭크 메커니즘",
    "왕복 운동 → 회전 운동 변환 원리"
  ],

  "common_materials": [
    "단조 강철",
    "합금강"
  ],

  "educational_usage": {
    "learning_topics": [
      "동력 전달 메커니즘",
      "왕복 기구 설계"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/v4_engine/Connecting+Rod.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '피스톤 힘 전달'),
(LAST_INSERT_ID(), '회전 운동 생성'),
(LAST_INSERT_ID(), '고속 반복 운동 수행');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '슬라이더-크랭크 메커니즘'),
(LAST_INSERT_ID(), '왕복 운동 → 회전 운동 변환 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '단조 강철'),
(LAST_INSERT_ID(), '합금강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '동력 전달 메커니즘'),
(LAST_INSERT_ID(), '왕복 기구 설계');

-- 3. Conrod Bolt
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (7, 'conrod_bolt', '커넥팅 로드 볼트', 'Conrod Bolt', '단일 부품', '커넥팅 로드와 캡을 체결하는 고하중·고피로 조건용 전용 볼트', '로드캡을 고정하는 볼트', '{
  "object_id": "conrod_bolt",
  "object_name": "커넥팅 로드 볼트",
  "english_name": "Conrod Bolt",
  "object_category": "단일 부품",

  "description": "커넥팅 로드와 캡을 체결하는 고하중·고피로 조건용 전용 볼트",

  "functional_roles": [
    "커넥팅 로드 캡 고정",
    "회전 중 분리 방지",
    "구조적 신뢰성 확보"
  ],

  "key_engineering_theories": [
    "볼트 예압(Preload) 이론",
    "피로 파괴 방지 체결 원리"
  ],

  "common_materials": [
    "고강도 합금강",
    "열처리 강재"
  ],

  "educational_usage": {
    "learning_topics": [
      "고하중 체결 설계",
      "예압과 피로 수명"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/v4_engine/Conrod+Bolt.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '커넥팅 로드 캡 고정'),
(LAST_INSERT_ID(), '회전 중 분리 방지'),
(LAST_INSERT_ID(), '구조적 신뢰성 확보');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '볼트 예압(Preload) 이론'),
(LAST_INSERT_ID(), '피로 파괴 방지 체결 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '고강도 합금강'),
(LAST_INSERT_ID(), '열처리 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '고하중 체결 설계'),
(LAST_INSERT_ID(), '예압과 피로 수명');

-- 4. Crankshaft
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (7, 'crankshaft', '크랭크샤프트', 'Crankshaft', '단일 부품', '엔진의 중심 회전축으로 피스톤의 왕복 운동을 회전 출력으로 변환하는 핵심 부품', '출력을 만드는 중심 회전축', '{
  "object_id": "crankshaft",
  "object_name": "크랭크샤프트",
  "english_name": "Crankshaft",
  "object_category": "단일 부품",

  "description": "엔진의 중심 회전축으로 피스톤의 왕복 운동을 회전 출력으로 변환하는 핵심 부품",

  "functional_roles": [
    "엔진 출력 생성",
    "동력 전달",
    "회전 안정성 유지"
  ],

  "key_engineering_theories": [
    "회전 불균형 보정 원리",
    "토크 생성 및 전달 이론"
  ],

  "common_materials": [
    "단조 강철",
    "주철"
  ],

  "educational_usage": {
    "learning_topics": [
      "회전축 설계",
      "토크 전달 메커니즘"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/v4_engine/Crankshaft.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '엔진 출력 생성'),
(LAST_INSERT_ID(), '동력 전달'),
(LAST_INSERT_ID(), '회전 안정성 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '회전 불균형 보정 원리'),
(LAST_INSERT_ID(), '토크 생성 및 전달 이론');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '단조 강철'),
(LAST_INSERT_ID(), '주철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '회전축 설계'),
(LAST_INSERT_ID(), '토크 전달 메커니즘');

-- 5. Piston Pin
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (7, 'piston_pin', '피스톤 핀', 'Piston Pin', '단일 부품', '피스톤과 커넥팅 로드를 연결하는 원통형 회전 축 부품', '피스톤-로드 회전축', '{
  "object_id": "piston_pin",
  "object_name": "피스톤 핀",
  "english_name": "Piston Pin",
  "object_category": "단일 부품",

  "description": "피스톤과 커넥팅 로드를 연결하는 원통형 회전 축 부품",

  "functional_roles": [
    "피스톤–로드 연결",
    "회전 자유도 제공",
    "왕복 운동 원활화"
  ],

  "key_engineering_theories": [
    "회전 관절(Revolute Joint)",
    "전단 하중 지지 원리"
  ],

  "common_materials": [
    "경화 강철",
    "표면 경화 강재"
  ],

  "educational_usage": {
    "learning_topics": [
      "회전 관절 설계",
      "전단 하중"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/v4_engine/Piston+Pin.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '피스톤–로드 연결'),
(LAST_INSERT_ID(), '회전 자유도 제공'),
(LAST_INSERT_ID(), '왕복 운동 원활화');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '회전 관절(Revolute Joint)'),
(LAST_INSERT_ID(), '전단 하중 지지 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '경화 강철'),
(LAST_INSERT_ID(), '표면 경화 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '회전 관절 설계'),
(LAST_INSERT_ID(), '전단 하중');

-- 6. Piston Ring
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (7, 'piston_ring', '피스톤 링', 'Piston Ring', '단일 부품', '피스톤 외주에 장착되어 실린더 내부 기밀을 유지하는 링 형태의 부품', '실린더 기밀을 유지', '{
  "object_id": "piston_ring",
  "object_name": "피스톤 링",
  "english_name": "Piston Ring",
  "object_category": "단일 부품",

  "description": "피스톤 외주에 장착되어 실린더 내부 기밀을 유지하는 링 형태의 부품",

  "functional_roles": [
    "연소 가스 누설 방지",
    "엔진 오일 제어",
    "압축 효율 유지"
  ],

  "key_engineering_theories": [
    "기밀 유지(Sealing) 원리",
    "마찰 및 오일 제어 이론"
  ],

  "common_materials": [
    "주철",
    "표면 코팅 강재"
  ],

  "educational_usage": {
    "learning_topics": [
      "실링 구조",
      "마찰 저감 설계"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/v4_engine/Piston+Ring.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
(LAST_INSERT_ID(), '연소 가스 누설 방지'),
(LAST_INSERT_ID(), '엔진 오일 제어'),
(LAST_INSERT_ID(), '압축 효율 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(LAST_INSERT_ID(), '기밀 유지(Sealing) 원리'),
(LAST_INSERT_ID(), '마찰 및 오일 제어 이론');

INSERT INTO part_material (part_id, material) VALUES
(LAST_INSERT_ID(), '주철'),
(LAST_INSERT_ID(), '표면 코팅 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(LAST_INSERT_ID(), '실링 구조'),
(LAST_INSERT_ID(), '마찰 저감 설계');

-- 7. Piston
INSERT INTO part (model_id, code, name, english_name, category, description, hover_description, metadata, image_url)
VALUES (7, 'piston', '피스톤', 'Piston', '단일 부품', '실린더 내부에서 왕복 운동하며 연소 압력을 기계적 힘으로 변환하는 핵심 부품', '연소압을 힘으로 변환', '{
  "object_id": "piston",
  "object_name": "피스톤",
  "english_name": "Piston",
  "object_category": "단일 부품",

  "description": "실린더 내부에서 왕복 운동하며 연소 압력을 기계적 힘으로 변환하는 핵심 부품",

  "functional_roles": [
    "연소 압력 수용",
    "기계적 힘 생성",
    "엔진 출력 형성"
  ],

  "key_engineering_theories": [
    "연소 압력 → 기계적 힘 변환",
    "왕복 운동 메커니즘"
  ],

  "common_materials": [
    "알루미늄 합금",
    "단조 알루미늄"
  ],

  "educational_usage": {
    "learning_topics": [
      "피스톤 설계",
      "열·기계 하중 대응"
    ]
  }
}', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/v4_engine/Piston.png');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
(LAST_INSERT_ID(), '연소 압력 수용'),
(LAST_INSERT_ID(), '기계적 힘 생성'),
(LAST_INSERT_ID(), '엔진 출력 형성');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
(LAST_INSERT_ID(), '연소 압력 → 기계적 힘 변환'),
(LAST_INSERT_ID(), '왕복 운동 메커니즘');

INSERT INTO part_material (part_id, material) VALUES
(LAST_INSERT_ID(), '알루미늄 합금'),
(LAST_INSERT_ID(), '단조 알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
(LAST_INSERT_ID(), '피스톤 설계'),
(LAST_INSERT_ID(), '열·기계 하중 대응');