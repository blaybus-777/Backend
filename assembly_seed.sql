-- 1. model 테이블
INSERT INTO model (code, title, english_name, category, product_type,
                   configuration_type, description)
VALUES ('quadcopter_drone', '쿼드콥터 드론', 'Quadcopter Drone', '조립도',
        '무인 항공기(UAV)', 'X-type Quadcopter', '중앙 프레임을 기준으로 네 개의
  회전익을 배치한 무인 항공기로, 수직 이착륙과 정밀 제어가 가능한 대표적인
  멀티로터 드론');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
    (1, '네 개의 회전 추력원을 이용한 수직 이착륙(VTOL)'),
(1, '롤, 피치, 요 제어를 통한 6자유도 비행'),
(1, '중앙 집중 질량 배치를 통한 비행 안정성 확보'),
(1, '구조계와 구동계의 통합을 통한 기체 제어 수행');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name,
                                      theory_description) VALUES
    (1, '비행역학', '각 프로펠러에서 발생하는 추력의 합과 중력의 균형을 통해
  호버링 및 기동 비행을 수행한다.'),
(1, '구조역학', '메인 프레임과 암 구조는 굽힘, 비틀림, 진동 하중을 견디도록
  설계된다.'),
(1, '진동 및 공진 이론', '모터 회전에 의한 주기적 진동이 구조물의 고유진동수와
   일치하지 않도록 설계한다.'),
(1, '시스템 통합 설계', '구조 부품, 구동 부품, 체결 요소가 하나의 기계
  시스템으로 동작하도록 통합된다.');

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
INSERT INTO model (code, title, english_name, category, product_type,
                   configuration_type, description)
VALUES ('leaf_spring', '리프 스프링', 'Leaf Spring', '조립도', '차량 서스펜션
  시스템', 'Multi-layer Leaf Spring', '여러 장의 판형 스프링을 적층하여 차량
  하중을 지지하고 노면 충격을 흡수하는 기계식 서스펜션 장치');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
    (2, '차량 하중 지지'),
(2, '노면 충격 흡수 및 진동 완화'),
(2, '차체와 차축 사이 상대 운동 제어'),
(2, '주행 안정성 및 승차감 확보');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name,
                                      theory_description) VALUES
    (2, '탄성역학', '판 스프링의 굽힘 변형을 통해 탄성 에너지를 저장하고
  방출한다'),
(2, '피로 설계', '반복 하중 환경에서 수명 확보를 위한 재료 및 형상 설계가
  필요하다'),
(2, '진동 감쇠 이론', '고무 및 적층 구조를 통해 진동과 충격을 감쇠한다'),
(2, '하중 전달 경로 설계', '차체–스프링–연결부로 이어지는 하중 전달 흐름을
  안정적으로 구성한다');

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
INSERT INTO model (code, title, english_name, category, product_type,
                   configuration_type, description)
VALUES ('machine_vice', '머신 바이스', 'Machine Vice', '조립도', '공작기계
  고정구(Workholding Device)', 'Screw-driven Sliding Jaw Vice', '스핀들(나사)
  구동으로 이동 조를 직선 이동시켜 공작물을 고정하는 공작기계용 고정 장치');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
    (3, '공작물 위치 정렬 및 고정'),
(3, '스핀들 구동을 통한 클램핑 힘 생성 및 전달'),
(3, '가공 반력 지지 및 구조 강성 확보'),
(3, '정렬 유지로 반복 가공 정밀도 확보');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name,
                                      theory_description) VALUES
    (3, '직선 운동 구속', '가이드 구조가 이동 부품의 직선 운동을 구속하여 정렬
  정확도를 유지한다'),
(3, '나사 구동 운동 변환', '스핀들의 회전 입력을 이동 조의 직선 이동으로
  변환해 클램핑을 수행한다'),
(3, '하중 분산 및 기초 지지', '베이스가 하중을 분산하고 기계 테이블 결합을
  통해 안정성을 확보한다'),
(3, '마찰 및 접촉 설계', '접촉면 압력 분산·마찰 제어를 통해 고정력과 수명을
  확보한다');

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
INSERT INTO model (code, title, english_name, category, product_type,
                   configuration_type, description)
VALUES ('robot_arm', '로봇 암', 'Robot Arm', '조립도', '산업용 로봇 시스템',
        'Articulated Robotic Arm', '다수의 회전 관절과 링크 구조로 구성되어 공간상에서
   물체를 조작할 수 있는 다자유도 산업용 로봇 장치');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
    (4, '다자유도 관절을 이용한 위치 및 자세 제어'),
(4, '작업 대상 파지 및 조작'),
(4, '반복 정밀 작업 수행'),
(4, '자동화 공정에서의 인력 대체');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name,
                                      theory_description) VALUES
    (4, '로봇 기구학(Kinematics)', '관절 각도와 링크 길이에 따라 말단 위치와
  자세가 결정된다'),
(4, '동역학(Dynamics)', '관절 토크, 하중, 관성 효과를 고려한 구동 설계가
  필요하다'),
(4, '다자유도 관절 설계', '여러 회전축을 조합해 공간상의 자유도를 확보한다'),
(4, '토크 전달 및 정렬', '커플링과 베어링 구조를 통해 토크를 안정적으로
  전달한다');

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
INSERT INTO model (code, title, english_name, category, product_type,
                   configuration_type, description)
VALUES ('robot_gripper', '로봇 그리퍼', 'Robot Gripper', '조립도', '로봇 말단
  구동 장치(End Effector)', 'Gear-Link Driven Parallel Gripper', '기어와 링크
  메커니즘을 이용해 두 개의 집게를 동기화된 방식으로 개폐하며 물체를 파지하는
  로봇 말단 장치');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
    (5, '물체 파지 및 고정'),
(5, '좌우 대칭 집게의 동기 개폐'),
(5, '기어-링크 기반 파지력 생성'),
(5, '자동화 공정에서 반복 작업 수행');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name,
                                      theory_description) VALUES
    (5, '기어 맞물림 메커니즘', '기어 간 맞물림을 통해 회전력을 전달하고 속도 및
  토크를 변환한다'),
(5, '링크 메커니즘', '회전 운동을 링크를 통해 집게의 병진·각운동으로
  변환한다'),
(5, '대칭 동기화 구조', '좌우 집게가 동일한 타이밍과 거리로 움직이도록
  설계된다'),
(5, '마찰 기반 파지 이론', '접촉면의 마찰력과 파지력을 이용해 물체를
  안정적으로 고정한다');

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
INSERT INTO model (code, title, english_name, category, product_type,
                   configuration_type, description)
VALUES ('suspension', '서스펜션', 'Suspension', '조립도', '기계식 완충 장치',
        'Coil Spring Shock Absorber', '코일 스프링과 중심 로드를 이용해 외부 충격을
  흡수하고 하중 변화를 완화하는 기계식 서스펜션 장치');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
    (6, '외부 충격 흡수'),
(6, '하중 변화 완화'),
(6, '기계 시스템 보호'),
(6, '진동 감소 및 안정성 향상');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name,
                                      theory_description) VALUES
    (6, '탄성역학', '스프링의 탄성 변형을 통해 에너지를 저장하고 복원력으로 충격을
   완화한다'),
(6, '축방향 하중 전달', '로드를 중심으로 하중이 상·하부 구조로 전달된다'),
(6, '고정 지지 구조', '베이스를 기준으로 전체 서스펜션이 구조적으로
  고정된다'),
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
INSERT INTO model (code, title, english_name, category, product_type,
                   configuration_type, description)
VALUES ('v4_engine', 'V4 엔진', 'V4 Engine', '조립도', '내연기관 엔진',
        'V-type 4-Cylinder Engine', '4개의 실린더가 V자 형태로 배치되어 피스톤의 왕복
  운동을 크랭크샤프트의 회전 운동으로 변환하는 내연기관 엔진');

-- 2. model_functional_role 테이블
INSERT INTO model_functional_role (model_id, functional_role) VALUES
    (7, '연소 압력 생성 및 전달'),
(7, '왕복 운동 → 회전 운동 변환'),
(7, '엔진 출력 생성'),
(7, '회전 안정성 및 동력 전달');

-- 3. model_engineering_theory 테이블
INSERT INTO model_engineering_theory (model_id, theory_name,
                                      theory_description) VALUES
    (7, '슬라이더-크랭크 메커니즘', '피스톤의 직선 왕복 운동을 크랭크샤프트의 회전
   운동으로 변환한다'),
(7, '연소 압력 전달 이론', '연소 가스 압력이 피스톤을 통해 기계적 힘으로
  변환된다'),
(7, '회전 동역학', '크랭크샤프트의 관성 및 균형 설계를 통해 안정적인 회전을
  유지한다'),
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