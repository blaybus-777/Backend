-- 1. model 테이블
INSERT INTO model (code, title, english_name, category, product_type, configuration_type, description, image_url, metadata)
VALUES ('quadcopter_drone', '쿼드콥터 드론', 'Quadcopter Drone', '조립도',
'무인 항공기(UAV)', 'X-type Quadcopter', '중앙 프레임을 기준으로 네 개의 회전익을 배치한 무인 항공기로, 수직 이착륙과 정밀 제어가 가능한 대표적인 멀티로터 드론', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/drone/Quadcopter+Drone+%E1%84%8C%E1%85%A9%E1%84%85%E1%85%B5%E1%86%B8%E1%84%83%E1%85%A9.png', '{
    "object_id": "quadcopter_drone",
    "object_name": "쿼드콥터 드론",
    "english_name": "Quadcopter Drone",
    "object_category": "조립도",

    "product_type": "무인 항공기(UAV)",
    "configuration_type": "X-type Quadcopter",

    "description": "중앙 프레임을 기준으로 네 개의 회전익을 배치한 무인 항공기로, 수직 이착륙과 정밀 제어가 가능한 대표적인 멀티로터 드론",

    "components": [
      {
        "object_id": "main_frame",
        "object_name": "메인 프레임",
        "english_name": "Main Frame",
        "role": "드론의 모든 부품이 결합되는 중심 구조물"
      },
      {
        "object_id": "main_frame_mir",
        "object_name": "메인 프레임(미러)",
        "english_name": "Main Frame_MIR",
        "role": "메인 프레임의 좌우 대칭 구조를 구성하여 무게 균형 유지"
      },
      {
        "object_id": "arm_gear",
        "object_name": "암 기어",
        "english_name": "Arm Gear",
        "role": "드론 암의 회전 및 위치 고정을 위한 기어 부품"
      },
      {
        "object_id": "gearing",
        "object_name": "기어링",
        "english_name": "Gearing",
        "role": "회전력을 전달하거나 감속하는 구동 전달 요소"
      },
      {
        "object_id": "impeller_blade",
        "object_name": "임펠러 블레이드",
        "english_name": "Impeller Blade",
        "role": "회전하며 공기를 밀어내 추력을 생성하는 핵심 비행 부품"
      },
      {
        "object_id": "leg",
        "object_name": "랜딩 레그",
        "english_name": "Leg",
        "role": "착륙 시 기체를 지면으로부터 지지하고 하부를 보호"
      },
      {
        "object_id": "beater_disc",
        "object_name": "비터 디스크",
        "english_name": "Beater Disc",
        "role": "외부 입력부를 보호하고 충격을 완화하는 보호 부품"
      },
      {
        "object_id": "screw",
        "object_name": "나사",
        "english_name": "Screw",
        "role": "부품을 회전 조임 방식으로 고정"
      },
      {
        "object_id": "nut",
        "object_name": "너트",
        "english_name": "Nut",
        "role": "나사와 결합되어 체결력을 유지"
      },
      {
        "object_id": "xyz",
        "object_name": "보조 구조 부품",
        "english_name": "xyz",
        "role": "내부 공간을 채우고 부품 위치를 보조"
      }
    ],

    "functional_roles": [
      "네 개의 회전 추력원을 이용한 수직 이착륙(VTOL)",
      "롤, 피치, 요 제어를 통한 6자유도 비행",
      "중앙 집중 질량 배치를 통한 비행 안정성 확보",
      "구조계와 구동계의 통합을 통한 기체 제어 수행"
    ],

    "key_engineering_theories": [
      {
        "theory_name": "비행역학",
        "description": "각 프로펠러에서 발생하는 추력의 합과 중력의 균형을 통해 호버링 및 기동 비행을 수행한다."
      },
      {
        "theory_name": "구조역학",
        "description": "메인 프레임과 암 구조는 굽힘, 비틀림, 진동 하중을 견디도록 설계된다."
      },
      {
        "theory_name": "진동 및 공진 이론",
        "description": "모터 회전에 의한 주기적 진동이 구조물의 고유진동수와 일치하지 않도록 설계한다."
      },
      {
        "theory_name": "시스템 통합 설계",
        "description": "구조 부품, 구동 부품, 체결 요소가 하나의 기계 시스템으로 동작하도록 통합된다."
      }
    ],

    "educational_usage": {
      "applicable_levels": [
        "대학교 기계공학 전공",
        "항공우주공학 전공",
        "드론 제작 및 구조 실습 과정"
      ],
      "learning_topics": [
        "쿼드콥터 구조와 작동 원리",
        "조립도 기반 시스템 이해",
        "부품 간 역할 분담과 인터페이스",
        "기계·비행 시스템 통합 개념"
      ]
    }
  }');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
(1, '네 개의 회전 추력원을 이용한 수직 이착륙(VTOL)'),
(1, '롤, 피치, 요 제어를 통한 6자유도 비행'),
(1, '중앙 집중 질량 배치를 통한 비행 안정성 확보'),
(1, '구조계와 구동계의 통합을 통한 기체 제어 수행');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name, theory_description) VALUES
(1, '비행역학', '각 프로펠러에서 발생하는 추력의 합과 중력의 균형을 통해 호버링 및 기동 비행을 수행한다.'),
(1, '구조역학', '메인 프레임과 암 구조는 굽힘, 비틀림, 진동 하중을 견디도록 설계된다.'),
(1, '진동 및 공진 이론', '모터 회전에 의한 주기적 진동이 구조물의 고유진동수와 일치하지 않도록 설계한다.'),
(1, '시스템 통합 설계', '구조 부품, 구동 부품, 체결 요소가 하나의 기계 시스템으로 동작하도록 통합된다.');

-- 4. model_applicable_level 테이블
INSERT INTO model_applicable_level (model_id, applicable_level) VALUES
(1, '대학교 기계공학 전공'),
(1, '항공우주공학 전공'),
(1, '드론 제작 및 구조 실습 과정');

-- 5. model_learning_topic 테이블
INSERT INTO model_learning_topic (model_id, learning_topic) VALUES
(1, '쿼드콥터 구조와 작동 원리'),
(1, '조립도 기반 시스템 이해'),
(1, '부품 간 역할 분담과 인터페이스'),
(1, '기계·비행 시스템 통합 개념');

-- 1. model 테이블
INSERT INTO model (code, title, english_name, category, product_type, configuration_type, description, image_url, metadata)
VALUES ('leaf_spring', '리프 스프링', 'Leaf Spring', '조립도', '차량 서스펜션 시스템', 'Multi-layer Leaf Spring', '여러 장의 판형 스프링을 적층하여 차량 하중을 지지하고 노면 충격을 흡수하는 기계식 서스펜션 장치', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/leaf_spring/Leaf+Spring+%E1%84%8C%E1%85%A9%E1%84%85%E1%85%B5%E1%86%B8%E1%84%83%E1%85%A9.png', '{
  "object_id": "leaf_spring",
  "object_name": "리프 스프링",
  "english_name": "Leaf Spring",
  "object_category": "조립도",

  "product_type": "차량 서스펜션 시스템",
  "configuration_type": "Multi-layer Leaf Spring",

  "description": "여러 장의 판형 스프링을 적층하여 차량 하중을 지지하고 노면 충격을 흡수하는 기계식 서스펜션 장치",

  "components": [
    {
      "object_id": "clamp_center",
      "object_name": "센터 클램프",
      "english_name": "Clamp-Center",
      "role": "판스프링 전체를 중앙에서 고정하고 스프링 어긋남을 방지하며 하중이 균등하게 전달되도록 돕는다"
    },
    {
      "object_id": "clamp_primary",
      "object_name": "1차 클램프",
      "english_name": "Clamp-Primary",
      "role": "스프링 판의 위치를 1차적으로 고정하고 주행 진동을 억제하며 정렬 상태를 유지한다"
    },
    {
      "object_id": "clamp_secondary",
      "object_name": "보조 클램프",
      "english_name": "Clamp-Secondary",
      "role": "보조 고정 지점을 제공해 하중을 분산하고 스프링 판 벌어짐을 방지하여 구조 안정성을 높인다"
    },
    {
      "object_id": "leaf_layer",
      "object_name": "리프 스프링 판",
      "english_name": "Leaf-Layer",
      "role": "차량 하중을 직접 지지하고 노면 충격을 탄성 변형으로 흡수하며 복원력으로 안정성을 유지한다"
    },
    {
      "object_id": "support",
      "object_name": "지지 부품",
      "english_name": "Support",
      "role": "스프링과 차체를 연결하고 하중을 다른 구조물로 전달하며 판스프링의 위치를 유지한다"
    },
    {
      "object_id": "support_chassis_rigid",
      "object_name": "차체 고정 지지대",
      "english_name": "Support-Chassis Rigid",
      "role": "판스프링을 차체에 단단히 고정하고 불필요한 움직임을 제한하여 서스펜션 정렬을 유지한다"
    },
    {
      "object_id": "support_chassis",
      "object_name": "차체 지지대",
      "english_name": "Support-Chassis",
      "role": "판스프링을 차체에 연결하면서 주행 중 발생하는 움직임을 일정 수준 허용하고 구조적 안정성을 유지한다"
    },
    {
      "object_id": "support_rubber_60mm",
      "object_name": "고무 지지대 60mm",
      "english_name": "Support-Rubber 60mm",
      "role": "진동과 충격을 흡수하고 금속 간 직접 접촉을 방지해 승차감을 향상시킨다"
    },
    {
      "object_id": "support_rubber",
      "object_name": "고무 완충 부품",
      "english_name": "Support-Rubber",
      "role": "주행 충격을 완화하고 소음·진동 전달을 줄여 시스템 수명을 연장한다"
    }
  ],

  "functional_roles": [
    "차량 하중 지지",
    "노면 충격 흡수 및 진동 완화",
    "차체와 차축 사이 상대 운동 제어",
    "주행 안정성 및 승차감 확보"
  ],

  "key_engineering_theories": [
    {
      "theory_name": "탄성역학",
      "description": "판 스프링의 굽힘 변형을 통해 탄성 에너지를 저장하고 방출한다"
    },
    {
      "theory_name": "피로 설계",
      "description": "반복 하중 환경에서 수명 확보를 위한 재료 및 형상 설계가 필요하다"
    },
    {
      "theory_name": "진동 감쇠 이론",
      "description": "고무 및 적층 구조를 통해 진동과 충격을 감쇠한다"
    },
    {
      "theory_name": "하중 전달 경로 설계",
      "description": "차체–스프링–연결부로 이어지는 하중 전달 흐름을 안정적으로 구성한다"
    }
  ],

  "educational_usage": {
    "applicable_levels": [
      "기계공학 전공",
      "자동차공학 전공",
      "차량 섀시 및 서스펜션 교육 과정"
    ],
    "learning_topics": [
      "리프 스프링 작동 원리",
      "서스펜션 시스템 구성",
      "탄성체와 구조물 결합",
      "하중 전달과 진동 제어"
    ]
  }
}
');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
(2, '차량 하중 지지'),
(2, '노면 충격 흡수 및 진동 완화'),
(2, '차체와 차축 사이 상대 운동 제어'),
(2, '주행 안정성 및 승차감 확보');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name, theory_description) VALUES
(2, '탄성역학', '판 스프링의 굽힘 변형을 통해 탄성 에너지를 저장하고 방출한다'),
(2, '피로 설계', '반복 하중 환경에서 수명 확보를 위한 재료 및 형상 설계가 필요하다'),
(2, '진동 감쇠 이론', '고무 및 적층 구조를 통해 진동과 충격을 감쇠한다'),
(2, '하중 전달 경로 설계', '차체–스프링–연결부로 이어지는 하중 전달 흐름을 안정적으로 구성한다');

-- 4. model_applicable_level 테이블
INSERT INTO model_applicable_level (model_id, applicable_level) VALUES
    (2, '기계공학 전공'),
(2, '자동차공학 전공'),
(2, '차량 섀시 및 서스펜션 교육 과정');

-- 5. model_learning_topic 테이블
INSERT INTO model_learning_topic (model_id, learning_topic) VALUES
    (2, '리프 스프링 작동 원리'),
(2, '서스펜션 시스템 구성'),
(2, '탄성체와 구조물 결합'),
(2, '하중 전달과 진동 제어');

-- 1. model 테이블
INSERT INTO model (code, title, english_name, category, product_type, configuration_type, description, image_url, metadata)
VALUES ('machine_vice', '머신 바이스', 'Machine Vice', '조립도', '공작기계 고정구(Workholding Device)', 'Screw-driven Sliding Jaw Vice', '스핀들(나사) 구동으로 이동 조를 직선 이동시켜 공작물을 고정하는 공작기계용 고정 장치', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/machine_vice/Machine+Vice+%E1%84%8C%E1%85%A9%E1%84%85%E1%85%B5%E1%86%B8%E1%84%83%E1%85%A9.png', '{
  "object_id": "machine_vice",
  "object_name": "머신 바이스",
  "english_name": "Machine Vice",
  "object_category": "조립도",

  "product_type": "공작기계 고정구(Workholding Device)",
  "configuration_type": "Screw-driven Sliding Jaw Vice",

  "description": "스핀들(나사) 구동으로 이동 조를 직선 이동시켜 공작물을 고정하는 공작기계용 고정 장치",

  "components": [
    {
      "object_id": "fuhrung",
      "object_name": "가이드 본체",
      "english_name": "Fuhrung",
      "role": "이동 바이스 조의 직선 이동을 유도하고 바이스 전체 강성을 확보하며 가공 중 진동을 억제한다"
    },
    {
      "object_id": "lose_backe_body",
      "object_name": "이동 조 몸체",
      "english_name": "Lose Backe Body",
      "role": "이동 바이스 조를 지지하고 스핀들의 힘을 전달받아 이동하며 클램핑 압력을 공작물에 전달한다"
    },
    {
      "object_id": "feste_backe",
      "object_name": "고정 조",
      "english_name": "Feste Backe",
      "role": "공작물을 기준 위치에서 지지하고 이동 조와 함께 클램핑 압력을 형성하여 가공 정밀도를 확보한다"
    },
    {
      "object_id": "lose_backe",
      "object_name": "이동 조",
      "english_name": "Lose Backe",
      "role": "공작물을 고정 방향으로 이동시키고 클램핑 압력을 직접 가하며 다양한 공작물 크기에 대응한다"
    },
    {
      "object_id": "spindelsockel",
      "object_name": "스핀들 소켓",
      "english_name": "Spindelsockel",
      "role": "스핀들을 정확한 위치에서 지지하고 회전력을 이동력으로 변환하며 바이스 작동 신뢰성을 유지한다"
    },
    {
      "object_id": "spannbacke",
      "object_name": "클램핑 죠(교체형)",
      "english_name": "Spannbacke",
      "role": "공작물을 안정적으로 고정하고 표면 손상을 방지하며 마모 시 손쉽게 교체된다"
    },
    {
      "object_id": "fuhrungsschiene",
      "object_name": "가이드 레일",
      "english_name": "Fuhrungsschiene",
      "role": "이동 정확도를 향상시키고 쏠림·편마모를 방지하며 장기간 정렬 상태를 유지한다"
    },
    {
      "object_id": "trapezspindel",
      "object_name": "트라페조이드 스핀들",
      "english_name": "Trapezspindel",
      "role": "바이스 개폐를 제어하고 클램핑 힘을 생성하며 작업자의 입력을 기계적 힘으로 변환한다"
    },
    {
      "object_id": "grundplatte",
      "object_name": "베이스 플레이트",
      "english_name": "Grundplatte",
      "role": "바이스를 기계 테이블에 고정하고 전체 구조 하중을 지지하며 가공 중 안정성을 유지한다"
    },
    {
      "object_id": "druckhulse",
      "object_name": "압력 슬리브",
      "english_name": "Druckhülse",
      "role": "스핀들에서 발생한 압력을 전달하고 회전 부품과 고정부 사이에서 힘을 매개하며 마모를 줄이고 동작을 부드럽게 유지한다"
    }
  ],

  "functional_roles": [
    "공작물 위치 정렬 및 고정",
    "스핀들 구동을 통한 클램핑 힘 생성 및 전달",
    "가공 반력 지지 및 구조 강성 확보",
    "정렬 유지로 반복 가공 정밀도 확보"
  ],

  "key_engineering_theories": [
    {
      "theory_name": "직선 운동 구속",
      "description": "가이드 구조가 이동 부품의 직선 운동을 구속하여 정렬 정확도를 유지한다"
    },
    {
      "theory_name": "나사 구동 운동 변환",
      "description": "스핀들의 회전 입력을 이동 조의 직선 이동으로 변환해 클램핑을 수행한다"
    },
    {
      "theory_name": "하중 분산 및 기초 지지",
      "description": "베이스가 하중을 분산하고 기계 테이블 결합을 통해 안정성을 확보한다"
    },
    {
      "theory_name": "마찰 및 접촉 설계",
      "description": "접촉면 압력 분산·마찰 제어를 통해 고정력과 수명을 확보한다"
    }
  ],

  "educational_usage": {
    "applicable_levels": [
      "기계공학 전공",
      "생산/가공 시스템 교육 과정",
      "공작기계 및 지그·픽스처 실습"
    ],
    "learning_topics": [
      "공작물 고정(Workholding) 원리",
      "나사 구동 메커니즘과 힘 전달",
      "가이드 정렬(평행도)과 정밀도",
      "마찰·접촉면 설계와 내마모"
    ]
  }
}');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
(3, '공작물 위치 정렬 및 고정'),
(3, '스핀들 구동을 통한 클램핑 힘 생성 및 전달'),
(3, '가공 반력 지지 및 구조 강성 확보'),
(3, '정렬 유지로 반복 가공 정밀도 확보');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name, theory_description) VALUES
(3, '직선 운동 구속', '가이드 구조가 이동 부품의 직선 운동을 구속하여 정렬 정확도를 유지한다'),
(3, '나사 구동 운동 변환', '스핀들의 회전 입력을 이동 조의 직선 이동으로 변환해 클램핑을 수행한다'),
(3, '하중 분산 및 기초 지지', '베이스가 하중을 분산하고 기계 테이블 결합을 통해 안정성을 확보한다'),
(3, '마찰 및 접촉 설계', '접촉면 압력 분산·마찰 제어를 통해 고정력과 수명을 확보한다');

-- 4. model_applicable_level 테이블
INSERT INTO model_applicable_level (model_id, applicable_level) VALUES
(3, '기계공학 전공'),
(3, '생산/가공 시스템 교육 과정'),
(3, '공작기계 및 지그·픽스처 실습');

-- 5. model_learning_topic 테이블
INSERT INTO model_learning_topic (model_id, learning_topic) VALUES
(3, '공작물 고정(Workholding) 원리'),
(3, '나사 구동 메커니즘과 힘 전달'),
(3, '가이드 정렬(평행도)과 정밀도'),
(3, '마찰·접촉면 설계와 내마모');

-- 1. model 테이블
INSERT INTO model (code, title, english_name, category, product_type, configuration_type, description, image_url, metadata)
VALUES ('robot_arm', '로봇 암', 'Robot Arm', '조립도', '산업용 로봇 시스템',
        'Articulated Robotic Arm', '다수의 회전 관절과 링크 구조로 구성되어 공간상에서 물체를 조작할 수 있는 다자유도 산업용 로봇 장치', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/robot_arm/Robot+Arm+%E1%84%8C%E1%85%A9%E1%84%85%E1%85%B5%E1%86%B8%E1%84%83%E1%85%A9.png', '{
    "object_id": "robot_arm",
    "object_name": "로봇 암",
    "english_name": "Robot Arm",
    "object_category": "조립도",

    "product_type": "산업용 로봇 시스템",
    "configuration_type": "Articulated Robotic Arm",

    "description": "다수의 회전 관절과 링크 구조로 구성되어 공간상에서 물체를 조작할 수 있는 다자유도 산업용 로봇 장치",

    "components": [
      {
        "object_id": "rotary_base",
        "object_name": "회전 베이스",
        "english_name": "Rotary Base",
        "role": "로봇 암 전체를 지지하고 수평 회전을 가능하게 하며 상부 관절 하중을 분산한다"
      },
      {
        "object_id": "joint_bracket",
        "object_name": "관절 브래킷",
        "english_name": "Joint Bracket",
        "role": "두 회전 요소를 연결하여 관절의 회전 중심을 형성하고 링크 간 정렬을 유지한다"
      },
      {
        "object_id": "link_arm",
        "object_name": "링크 암",
        "english_name": "Link Arm",
        "role": "로봇 암의 길이와 작업 반경을 형성하고 힘과 움직임을 전달한다"
      },
      {
        "object_id": "actuator_housing",
        "object_name": "액추에이터 하우징",
        "english_name": "Actuator Housing",
        "role": "모터 및 감속기를 고정·보호하여 관절 구동 안정성을 확보한다"
      },
      {
        "object_id": "joint_coupling",
        "object_name": "관절 커플링",
        "english_name": "Joint Coupling",
        "role": "모터 회전을 관절로 전달하며 토크 손실을 최소화하고 정밀도를 유지한다"
      },
      {
        "object_id": "wrist_joint",
        "object_name": "손목 관절",
        "english_name": "Wrist Joint",
        "role": "말단부의 방향과 자세를 제어하여 정밀한 작업을 가능하게 한다"
      },
      {
        "object_id": "end_effector_mount",
        "object_name": "엔드 이펙터 마운트",
        "english_name": "End Effector Mount",
        "role": "그리퍼나 도구를 장착하고 작업 하중을 말단으로 전달한다"
      },
      {
        "object_id": "parallel_gripper",
        "object_name": "평행 그리퍼",
        "english_name": "Parallel Gripper",
        "role": "물체를 안정적으로 파지하여 자동화 작업을 수행한다"
      }
    ],

    "functional_roles": [
      "다자유도 관절을 이용한 위치 및 자세 제어",
      "작업 대상 파지 및 조작",
      "반복 정밀 작업 수행",
      "자동화 공정에서의 인력 대체"
    ],

    "key_engineering_theories": [
      {
        "theory_name": "로봇 기구학(Kinematics)",
        "description": "관절 각도와 링크 길이에 따라 말단 위치와 자세가 결정된다"
      },
      {
        "theory_name": "동역학(Dynamics)",
        "description": "관절 토크, 하중, 관성 효과를 고려한 구동 설계가 필요하다"
      },
      {
        "theory_name": "다자유도 관절 설계",
        "description": "여러 회전축을 조합해 공간상의 자유도를 확보한다"
      },
      {
        "theory_name": "토크 전달 및 정렬",
        "description": "커플링과 베어링 구조를 통해 토크를 안정적으로 전달한다"
      }
    ],

    "educational_usage": {
      "applicable_levels": [
        "기계공학 전공",
        "로봇공학 전공",
        "자동화 및 메카트로닉스 교육 과정"
      ],
      "learning_topics": [
        "로봇 암 구조와 작동 원리",
        "관절과 링크 설계",
        "엔드 이펙터 인터페이스",
        "산업용 로봇 시스템 이해"
      ]
    }
  }');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
(4, '다자유도 관절을 이용한 위치 및 자세 제어'),
(4, '작업 대상 파지 및 조작'),
(4, '반복 정밀 작업 수행'),
(4, '자동화 공정에서의 인력 대체');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name, theory_description) VALUES
(4, '로봇 기구학(Kinematics)', '관절 각도와 링크 길이에 따라 말단 위치와 자세가 결정된다'),
(4, '동역학(Dynamics)', '관절 토크, 하중, 관성 효과를 고려한 구동 설계가 필요하다'),
(4, '다자유도 관절 설계', '여러 회전축을 조합해 공간상의 자유도를 확보한다'),
(4, '토크 전달 및 정렬', '커플링과 베어링 구조를 통해 토크를 안정적으로 전달한다');

-- 4. model_applicable_level 테이블
INSERT INTO model_applicable_level (model_id, applicable_level) VALUES
(4, '기계공학 전공'),
(4, '로봇공학 전공'),
(4, '자동화 및 메카트로닉스 교육 과정');

-- 5. model_learning_topic 테이블
INSERT INTO model_learning_topic (model_id, learning_topic) VALUES
(4, '로봇 암 구조와 작동 원리'),
(4, '관절과 링크 설계'),
(4, '엔드 이펙터 인터페이스'),
(4, '산업용 로봇 시스템 이해');

-- 1. model 테이블
INSERT INTO model (code, title, english_name, category, product_type, configuration_type, description, image_url, metadata)
VALUES ('robot_gripper', '로봇 그리퍼', 'Robot Gripper', '조립도', '로봇 말단 구동 장치(End Effector)', 'Gear-Link Driven Parallel Gripper', '기어와 링크 메커니즘을 이용해 두 개의 집게를 동기화된 방식으로 개폐하며 물체를 파지하는 로봇 말단 장치', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/robot_gripper/Robot+Gripper+%E1%84%8C%E1%85%A9%E1%84%85%E1%85%B5%E1%86%B8%E1%84%83%E1%85%A9.png', '{
  "object_id": "robot_gripper",
  "object_name": "로봇 그리퍼",
  "english_name": "Robot Gripper",
  "object_category": "조립도",

  "product_type": "로봇 말단 구동 장치(End Effector)",
  "configuration_type": "Gear-Link Driven Parallel Gripper",

  "description": "기어와 링크 메커니즘을 이용해 두 개의 집게를 동기화된 방식으로 개폐하며 물체를 파지하는 로봇 말단 장치",

  "components": [
    {
      "object_id": "base_gear",
      "object_name": "베이스 기어",
      "english_name": "Base Gear",
      "role": "모터 또는 외부 구동원에서 전달된 회전을 받아 전체 집게 동작의 기준 회전을 제공한다"
    },
    {
      "object_id": "base_mounting_bracket",
      "object_name": "베이스 장착 브래킷",
      "english_name": "Base Mounting Bracket",
      "role": "로봇 암 또는 외부 구조물에 그리퍼를 고정하고 구동 중 발생하는 반력을 지지한다"
    },
    {
      "object_id": "base_plate",
      "object_name": "베이스 플레이트",
      "english_name": "Base Plate",
      "role": "기어와 링크 부품을 정확한 위치에 고정하는 기준 프레임으로 전체 구조 강성을 확보한다"
    },
    {
      "object_id": "gear_link_1",
      "object_name": "기어 링크 1",
      "english_name": "Gear Link 1",
      "role": "기어의 회전 운동을 링크 운동으로 변환하여 집게 개폐의 초기 동작을 생성한다"
    },
    {
      "object_id": "gear_link_2",
      "object_name": "기어 링크 2",
      "english_name": "Gear Link 2",
      "role": "좌우 집게 동작을 동기화하고 힘을 균형 있게 분배하여 파지 안정성을 높인다"
    },
    {
      "object_id": "link",
      "object_name": "링크",
      "english_name": "Link",
      "role": "기어에서 전달된 움직임을 집게까지 전달하고 집게의 개폐 경로를 형성한다"
    },
    {
      "object_id": "gripper",
      "object_name": "집게",
      "english_name": "Gripper",
      "role": "물체와 직접 접촉하여 파지하며 작업 정확도를 결정하는 말단 파지 부품"
    },
    {
      "object_id": "pin",
      "object_name": "핀",
      "english_name": "Pin",
      "role": "링크와 기어를 회전 가능하게 연결하여 기구 자유도를 제공한다"
    }
  ],

  "functional_roles": [
    "물체 파지 및 고정",
    "좌우 대칭 집게의 동기 개폐",
    "기어-링크 기반 파지력 생성",
    "자동화 공정에서 반복 작업 수행"
  ],

  "key_engineering_theories": [
    {
      "theory_name": "기어 맞물림 메커니즘",
      "description": "기어 간 맞물림을 통해 회전력을 전달하고 속도 및 토크를 변환한다"
    },
    {
      "theory_name": "링크 메커니즘",
      "description": "회전 운동을 링크를 통해 집게의 병진·각운동으로 변환한다"
    },
    {
      "theory_name": "대칭 동기화 구조",
      "description": "좌우 집게가 동일한 타이밍과 거리로 움직이도록 설계된다"
    },
    {
      "theory_name": "마찰 기반 파지 이론",
      "description": "접촉면의 마찰력과 파지력을 이용해 물체를 안정적으로 고정한다"
    }
  ],

  "educational_usage": {
    "applicable_levels": [
      "기계공학 전공",
      "로봇공학 전공",
      "메카트로닉스 및 자동화 교육 과정"
    ],
    "learning_topics": [
      "로봇 그리퍼 구조 이해",
      "기어-링크 구동 메커니즘",
      "파지력 생성 원리",
      "엔드 이펙터 설계 개념"
    ]
  }
}');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
(5, '물체 파지 및 고정'),
(5, '좌우 대칭 집게의 동기 개폐'),
(5, '기어-링크 기반 파지력 생성'),
(5, '자동화 공정에서 반복 작업 수행');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name, theory_description) VALUES
(5, '기어 맞물림 메커니즘', '기어 간 맞물림을 통해 회전력을 전달하고 속도 및 토크를 변환한다'),
(5, '링크 메커니즘', '회전 운동을 링크를 통해 집게의 병진·각운동으로 변환한다'),
(5, '대칭 동기화 구조', '좌우 집게가 동일한 타이밍과 거리로 움직이도록 설계된다'),
(5, '마찰 기반 파지 이론', '접촉면의 마찰력과 파지력을 이용해 물체를 안정적으로 고정한다');

-- 4. model_applicable_level 테이블
INSERT INTO model_applicable_level (model_id, applicable_level) VALUES
(5, '기계공학 전공'),
(5, '로봇공학 전공'),
(5, '메카트로닉스 및 자동화 교육 과정');

-- 5. model_learning_topic 테이블
INSERT INTO model_learning_topic (model_id, learning_topic) VALUES
(5, '로봇 그리퍼 구조 이해'),
(5, '기어-링크 구동 메커니즘'),
(5, '파지력 생성 원리'),
(5, '엔드 이펙터 설계 개념');

-- 1. model 테이블
INSERT INTO model (code, title, english_name, category, product_type, configuration_type, description, image_url, metadata)
VALUES ('suspension', '서스펜션', 'Suspension', '조립도', '기계식 완충 장치', 'Coil Spring Shock Absorber', '코일 스프링과 중심 로드를 이용해 외부 충격을 흡수하고 하중 변화를 완화하는 기계식 서스펜션 장치', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/suspension/Suspension+%E1%84%8C%E1%85%A9%E1%84%85%E1%85%B5%E1%86%B8%E1%84%83%E1%85%A9.png', '{
  "object_id": "suspension",
  "object_name": "서스펜션",
  "english_name": "Suspension",
  "object_category": "조립도",

  "product_type": "기계식 완충 장치",
  "configuration_type": "Coil Spring Shock Absorber",

  "description": "코일 스프링과 중심 로드를 이용해 외부 충격을 흡수하고 하중 변화를 완화하는 기계식 서스펜션 장치",

  "components": [
    {
      "object_id": "base",
      "object_name": "베이스",
      "english_name": "Base",
      "role": "서스펜션 하부에 위치하여 전체 구조를 고정하고 스프링과 로드에서 전달되는 하중을 지지하는 기준 지지 부품"
    },
    {
      "object_id": "nit",
      "object_name": "가이드 부품",
      "english_name": "NIT",
      "role": "로드와 스프링의 정렬을 유지하며 축 방향 직선 운동을 안내하는 내부 가이드 요소"
    },
    {
      "object_id": "nut",
      "object_name": "조절 너트",
      "english_name": "Nut",
      "role": "나사 결합을 통해 서스펜션 길이와 스프링 예압을 고정하여 조립 상태의 안정성을 유지한다"
    },
    {
      "object_id": "rod",
      "object_name": "로드",
      "english_name": "Rod",
      "role": "서스펜션 내부에서 하중을 직접 전달하며 스프링 압축·복원 운동의 중심 축 역할을 한다"
    },
    {
      "object_id": "spring",
      "object_name": "코일 스프링",
      "english_name": "Spring",
      "role": "압축 변형을 통해 충격 에너지를 저장·방출하며 서스펜션의 핵심 완충 기능을 수행한다"
    }
  ],

  "functional_roles": [
    "외부 충격 흡수",
    "하중 변화 완화",
    "기계 시스템 보호",
    "진동 감소 및 안정성 향상"
  ],

  "key_engineering_theories": [
    {
      "theory_name": "탄성역학",
      "description": "스프링의 탄성 변형을 통해 에너지를 저장하고 복원력으로 충격을 완화한다"
    },
    {
      "theory_name": "축방향 하중 전달",
      "description": "로드를 중심으로 하중이 상·하부 구조로 전달된다"
    },
    {
      "theory_name": "고정 지지 구조",
      "description": "베이스를 기준으로 전체 서스펜션이 구조적으로 고정된다"
    },
    {
      "theory_name": "직선 운동 구속",
      "description": "내부 가이드 구조가 로드의 직선 운동을 유지한다"
    }
  ],

  "educational_usage": {
    "applicable_levels": [
      "기계공학 전공",
      "자동차공학 전공",
      "기계 요소 설계 교육 과정"
    ],
    "learning_topics": [
      "서스펜션 구조와 작동 원리",
      "탄성체의 에너지 저장",
      "축방향 하중 전달",
      "완충 장치 설계 개념"
    ]
  }
}');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
(6, '외부 충격 흡수'),
(6, '하중 변화 완화'),
(6, '기계 시스템 보호'),
(6, '진동 감소 및 안정성 향상');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name, theory_description) VALUES
(6, '탄성역학', '스프링의 탄성 변형을 통해 에너지를 저장하고 복원력으로 충격을 완화한다'),
(6, '축방향 하중 전달', '로드를 중심으로 하중이 상·하부 구조로 전달된다'),
(6, '고정 지지 구조', '베이스를 기준으로 전체 서스펜션이 구조적으로 고정된다'),
(6, '직선 운동 구속', '내부 가이드 구조가 로드의 직선 운동을 유지한다');

-- 4. model_applicable_level 테이블
INSERT INTO model_applicable_level (model_id, applicable_level) VALUES
(6, '기계공학 전공'),
(6, '자동차공학 전공'),
(6, '기계 요소 설계 교육 과정');

-- 5. model_learning_topic 테이블
INSERT INTO model_learning_topic (model_id, learning_topic) VALUES
(6, '서스펜션 구조와 작동 원리'),
(6, '탄성체의 에너지 저장'),
(6, '축방향 하중 전달'),
(6, '완충 장치 설계 개념');

-- 1. model 테이블
INSERT INTO model (code, title, english_name, category, product_type, configuration_type, description, image_url, metadata)
VALUES ('v4_engine', 'V4 엔진', 'V4 Engine', '조립도', '내연기관 엔진',
        'V-type 4-Cylinder Engine', '4개의 실린더가 V자 형태로 배치되어 피스톤의 왕복 운동을 크랭크샤프트의 회전 운동으로 변환하는 내연기관 엔진', 'https://blaybus777-s3.s3.ap-northeast-2.amazonaws.com/v4_engine/V4+Engine+%E1%84%8C%E1%85%A9%E1%84%85%E1%85%B5%E1%86%B8%E1%84%83%E1%85%A9.png', '{
    "object_id": "v4_engine",
    "object_name": "V4 엔진",
    "english_name": "V4 Engine",
    "object_category": "조립도",

    "product_type": "내연기관 엔진",
    "configuration_type": "V-type 4-Cylinder Engine",

    "description": "4개의 실린더가 V자 형태로 배치되어 피스톤의 왕복 운동을 크랭크샤프트의 회전 운동으로 변환하는 내연기관 엔진",

    "components": [
      {
        "object_id": "piston",
        "object_name": "피스톤",
        "english_name": "Piston",
        "role": "연소 압력을 직접 받아 왕복 운동을 수행하며 엔진 출력의 출발점이 된다"
      },
      {
        "object_id": "piston_ring",
        "object_name": "피스톤 링",
        "english_name": "Piston Ring",
        "role": "실린더와 피스톤 사이의 기밀을 유지하고 오일을 제어하여 압축 효율을 확보한다"
      },
      {
        "object_id": "piston_pin",
        "object_name": "피스톤 핀",
        "english_name": "Piston Pin",
        "role": "피스톤과 커넥팅 로드를 연결하여 회전 자유도를 제공한다"
      },
      {
        "object_id": "connecting_rod",
        "object_name": "커넥팅 로드",
        "english_name": "Connecting Rod",
        "role": "피스톤의 직선 운동을 크랭크샤프트의 회전 운동으로 변환한다"
      },
      {
        "object_id": "connecting_rod_cap",
        "object_name": "커넥팅 로드 캡",
        "english_name": "Connecting Rod Cap",
        "role": "크랭크 핀을 감싸 커넥팅 로드 하부 구조를 완성하고 회전 정렬을 유지한다"
      },
      {
        "object_id": "conrod_bolt",
        "object_name": "커넥팅 로드 볼트",
        "english_name": "Conrod Bolt",
        "role": "커넥팅 로드와 캡을 체결하여 고속 회전 중 분리 위험을 방지한다"
      },
      {
        "object_id": "crankshaft",
        "object_name": "크랭크샤프트",
        "english_name": "Crankshaft",
        "role": "피스톤의 왕복 운동을 회전 출력으로 변환하고 엔진 동력을 외부로 전달한다"
      }
    ],

    "functional_roles": [
      "연소 압력 생성 및 전달",
      "왕복 운동 → 회전 운동 변환",
      "엔진 출력 생성",
      "회전 안정성 및 동력 전달"
    ],

    "key_engineering_theories": [
      {
        "theory_name": "슬라이더-크랭크 메커니즘",
        "description": "피스톤의 직선 왕복 운동을 크랭크샤프트의 회전 운동으로 변환한다"
      },
      {
        "theory_name": "연소 압력 전달 이론",
        "description": "연소 가스 압력이 피스톤을 통해 기계적 힘으로 변환된다"
      },
      {
        "theory_name": "회전 동역학",
        "description": "크랭크샤프트의 관성 및 균형 설계를 통해 안정적인 회전을 유지한다"
      },
      {
        "theory_name": "피로 설계",
        "description": "반복 폭발 하중을 견디기 위한 재료 및 형상 설계가 필요하다"
      }
    ],

    "educational_usage": {
      "applicable_levels": [
        "기계공학 전공",
        "자동차공학 전공",
        "내연기관 및 동력기계 교육 과정"
      ],
      "learning_topics": [
        "내연기관 구조 이해",
        "피스톤–크랭크 메커니즘",
        "동력 전달 계통",
        "엔진 기계 요소 설계"
      ]
    }
  }');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
(7, '연소 압력 생성 및 전달'),
(7, '왕복 운동 → 회전 운동 변환'),
(7, '엔진 출력 생성'),
(7, '회전 안정성 및 동력 전달');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name, theory_description) VALUES
(7, '슬라이더-크랭크 메커니즘', '피스톤의 직선 왕복 운동을 크랭크샤프트의 회전 운동으로 변환한다'),
(7, '연소 압력 전달 이론', '연소 가스 압력이 피스톤을 통해 기계적 힘으로 변환된다'),
(7, '회전 동역학', '크랭크샤프트의 관성 및 균형 설계를 통해 안정적인 회전을 유지한다'),
(7, '피로 설계', '반복 폭발 하중을 견디기 위한 재료 및 형상 설계가 필요하다');

-- 4. model_applicable_level 테이블
INSERT INTO model_applicable_level (model_id, applicable_level) VALUES
(7, '기계공학 전공'),
(7, '자동차공학 전공'),
(7, '내연기관 및 동력기계 교육 과정');

-- 5. model_learning_topic 테이블
INSERT INTO model_learning_topic (model_id, learning_topic) VALUES
(7, '내연기관 구조 이해'),
(7, '피스톤–크랭크 메커니즘'),
(7, '동력 전달 계통'),
(7, '엔진 기계 요소 설계');