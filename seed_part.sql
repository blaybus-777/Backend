-- 1. Arm Gear
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (1, 'arm_gear', '암 기어', 'Arm Gear', '단일 부품', '드론 암의 회전이나
   위치 고정을 위해 사용되는 기어 부품으로, 구동부의 회전 운동을 구조물로
  전달한다.');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (1, 'beater_disc', '비터 디스크', 'Beater Disc', '단일 부품', '외부에서
   눌리거나 접촉되는 입력부를 보호하는 커버형 부품으로, 버튼 또는 상태 표시부
  상단에 위치한다.');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (1, 'gearing', '기어링', 'Gearing', '단일 부품', '회전력을 전달하거나
  감속하는 축 결합형 기어 부품으로, 드론 구동계의 일부로 작동한다.');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (1, 'impeller_blade', '임펠러 블레이드', 'Impeller Blade', '단일 부품',
        '회전하며 공기를 아래로 밀어내 추력을 생성하는 프로펠러로, 드론 비행의 핵심
       부품이다.');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (1, 'leg', '랜딩 레그', 'Leg', '단일 부품', '드론 착륙 시 기체를
  지면으로부터 지지하는 구조물로, 하부 부품을 보호한다.');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (1, 'main_frame', '메인 프레임', 'Main Frame', '단일 부품', '드론의
  모든 부품이 결합되는 중심 구조물로, 기체의 전체 형상을 결정한다.');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (1, 'main_frame_mir', '메인 프레임(미러)', 'Main Frame_MIR', '단일
  부품', '메인 프레임의 좌우 대칭 구조를 이루는 부품으로, 동일 구조를 반대
  방향으로 사용한다.');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (1, 'nut', '너트', 'Nut', '단일 부품', '나사와 함께 사용되어 부품을
  고정하는 체결 부품이다.');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (1, 'screw', '나사', 'Screw', '단일 부품', '회전시키며 부품을 조여
  고정하는 체결 요소로, 드론 구조를 하나로 묶는다.');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (1, 'xyz', '보조 구조 부품', 'xyz', '단일 부품', '내부 공간을 채우거나
  부품 배치를 보조하는 구조 부품으로, 기능 수행보다는 내부 형상 유지와 배치
  안정성을 확보하기 위한 목적을 가진다.');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (2, 'clamp_center', '센터 클램프', 'Clamp-Center', '단일 부품',
        '판스프링의 중앙을 고정하여 여러 장의 리프 스프링을 하나로 묶는 클램프 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '판스프링 전체를 중앙에서 고정'),
(LAST_INSERT_ID(), '스프링 어긋남 방지'),
(LAST_INSERT_ID(), '하중이 균등하게 전달되도록 보조');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '중앙 고정에 의한 하중 분산 원리'),
(LAST_INSERT_ID(), '체결력을 통한 구조 일체화 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '탄소강'),
(LAST_INSERT_ID(), '합금강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '중앙 체결 구조'),
(LAST_INSERT_ID(), '다중 판 구조 고정 방식');

-- 2. Clamp-Primary
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (2, 'clamp_primary', '1차 클램프', 'Clamp-Primary', '단일 부품',
        '판스프링을 1차적으로 고정하여 스프링 묶음을 안정적으로 유지하는 클램프
        부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '스프링 판 위치 고정'),
(LAST_INSERT_ID(), '주행 중 진동 억제'),
(LAST_INSERT_ID(), '판스프링 정렬 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '국부 고정을 통한 형상 유지 원리'),
(LAST_INSERT_ID(), '반복 진동 환경에서의 체결 안정성');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '탄소강'),
(LAST_INSERT_ID(), '도금 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '국부 체결 구조'),
(LAST_INSERT_ID(), '진동 환경 체결 설계');

-- 3. Clamp-Secondary
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (2, 'clamp_secondary', '보조 클램프', 'Clamp-Secondary', '단일 부품',
        '판스프링을 보조적으로 묶어 주 클램프의 하중을 분산시키는 클램프 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '보조 고정 지점 제공'),
(LAST_INSERT_ID(), '스프링 판 벌어짐 방지'),
(LAST_INSERT_ID(), '구조적 안정성 향상');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '하중 분산에 의한 피로 감소 원리'),
(LAST_INSERT_ID(), '다점 고정 구조 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철'),
(LAST_INSERT_ID(), '합금강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '다점 고정 설계'),
(LAST_INSERT_ID(), '피로 수명 향상 구조');

-- 4. Leaf-Layer
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (2, 'leaf_layer', '리프 스프링 판', 'Leaf-Layer', '단일 부품',
        '판스프링을 구성하는 개별 스프링 판으로, 휘어지며 하중을 지지하는 핵심 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '차량 하중 직접 지지'),
(LAST_INSERT_ID(), '노면 충격 흡수'),
(LAST_INSERT_ID(), '탄성 변형 후 복원');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '굽힘 변형에 의한 탄성 에너지 저장'),
(LAST_INSERT_ID(), '하중–변형–복원 관계');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '스프링강'),
(LAST_INSERT_ID(), '열처리 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '스프링 탄성 원리'),
(LAST_INSERT_ID(), '굽힘 응력과 복원력');

-- 5. Support
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (2, 'support', '지지 브래킷', 'Support', '단일 부품', '판스프링과 다른
  구조물을 연결하는 지지 부품으로, 하중 전달 경로의 일부를 이룬다.');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '스프링과 차체 연결'),
(LAST_INSERT_ID(), '하중 전달'),
(LAST_INSERT_ID(), '판스프링 위치 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '하중 전달 경로 설계 개념'),
(LAST_INSERT_ID(), '지지 구조물의 강성 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철'),
(LAST_INSERT_ID(), '알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '지지 구조 설계'),
(LAST_INSERT_ID(), '하중 전달 메커니즘');

-- 6. Support-Chassis Rigid
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (2, 'support_chassis_rigid', '차체 고정 지지대', 'Support-Chassis
  Rigid', '단일 부품', '차체와 판스프링을 강체로 연결하는 고정형 지지 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '판스프링을 차체에 단단히 고정'),
(LAST_INSERT_ID(), '불필요한 움직임 제한'),
(LAST_INSERT_ID(), '서스펜션 정렬 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '강체 연결에 의한 변형 최소화'),
(LAST_INSERT_ID(), '구조물 고정 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철'),
(LAST_INSERT_ID(), '주철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '강체 연결 구조'),
(LAST_INSERT_ID(), '서스펜션 고정 방식');

-- 7. Support-Chassis
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (2, 'support_chassis', '차체 지지대', 'Support-Chassis', '단일 부품',
        '차체와 판스프링을 연결하며 일정 수준의 움직임을 허용하는 지지 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '판스프링과 차체 연결'),
(LAST_INSERT_ID(), '주행 중 움직임 허용'),
(LAST_INSERT_ID(), '구조적 안정성 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '제한된 자유도를 가진 연결 구조 개념'),
(LAST_INSERT_ID(), '하중과 움직임의 균형 설계');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철'),
(LAST_INSERT_ID(), '합금강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '유연 연결 구조'),
(LAST_INSERT_ID(), '차체–서스펜션 인터페이스');

-- 8. Support-Rubber 60mm
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (2, 'support_rubber_60mm', '고무 지지대 60mm', 'Support-Rubber 60mm',
        '단일 부품', '판스프링과 차체 사이에 삽입되는 일정 두께의 고무 완충 지지
  부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '진동 및 충격 흡수'),
(LAST_INSERT_ID(), '금속 간 직접 접촉 방지'),
(LAST_INSERT_ID(), '승차감 향상');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '탄성체의 압축 변형과 복원'),
(LAST_INSERT_ID(), '진동 감쇠 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '천연고무'),
(LAST_INSERT_ID(), '합성고무');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '고무 탄성 특성'),
(LAST_INSERT_ID(), '완충 요소 설계');

-- 9. Support-Rubber
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (2, 'support_rubber', '고무 완충 부품', 'Support-Rubber', '단일 부품',
        '판스프링 시스템 전반에 사용되는 일반 고무 완충 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '주행 충격 완화'),
(LAST_INSERT_ID(), '소음 및 진동 전달 감소'),
(LAST_INSERT_ID(), '시스템 수명 연장');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '고무 재질의 감쇠 특성'),
(LAST_INSERT_ID(), '에너지 흡수에 의한 진동 감소');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '천연고무'),
(LAST_INSERT_ID(), '합성고무');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '진동 감쇠 재료'),
(LAST_INSERT_ID(), '서스펜션 NVH 개념');

-- 1. Fuhrung
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (3, 'fuhrung', '가이드 본체', 'Fuhrung', '단일 부품', '바이스에서 이동
  부품을 직선으로 안내하는 가이드 본체로, 전체 구조의 정렬 정확도를 결정하는
  기본 프레임');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '이동 바이스 조의 직선 이동을 유도'),
(LAST_INSERT_ID(), '바이스 전체 강성 확보'),
(LAST_INSERT_ID(), '가공 중 발생하는 진동 억제');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '직선 운동 구속(Linear Constraint) 원리'),
(LAST_INSERT_ID(), '가이드면 평행도 유지 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '주철(Cast Iron)'),
(LAST_INSERT_ID(), '강철(Steel)');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '직선 가이드 구조'),
(LAST_INSERT_ID(), '정렬 정확도와 강성의 관계'),
(LAST_INSERT_ID(), '진동 감쇠용 재료 선택');

-- 2. Lose Backe Body
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (3, 'lose_backe_body', '이동 조 몸체', 'Lose Backe Body', '단일 부품',
        '이동 바이스 조(가동 죠)를 지지하는 본체 구조물로, 스핀들 힘을 받아 실제로
        이동하는 핵심 구동 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '이동 바이스 조를 구조적으로 지지'),
(LAST_INSERT_ID(), '스핀들의 힘을 전달받아 이동'),
(LAST_INSERT_ID(), '클램핑 압력을 공작물에 전달');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '스핀들 회전에 의한 병진 운동 변환'),
(LAST_INSERT_ID(), '가이드 접촉면 정렬 유지 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '주철'),
(LAST_INSERT_ID(), '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '나사 구동에 의한 직선 이동'),
(LAST_INSERT_ID(), '가동부 정렬과 마모'),
(LAST_INSERT_ID(), '클램핑 압력 전달 경로');

-- 3. Feste Backe
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (3, 'feste_backe', '고정 조', 'Feste Backe', '단일 부품', '바이스에
  고정된 고정 죠(Jaw) 부품으로 공작물 위치의 기준면 역할을 수행');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '공작물을 기준 위치에서 지지'),
(LAST_INSERT_ID(), '이동 조와 함께 클램핑 압력 형성'),
(LAST_INSERT_ID(), '가공 정밀도 확보');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '고정 기준면(Fixed Reference Surface) 개념'),
(LAST_INSERT_ID(), '반력 지지 구조 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '공구강'),
(LAST_INSERT_ID(), '열처리 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '기준면 설정과 위치 결정'),
(LAST_INSERT_ID(), '반력 지지 구조'),
(LAST_INSERT_ID(), '마모/경도와 정밀도 유지');

-- 4. Lose Backe
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (3, 'lose_backe', '이동 조', 'Lose Backe', '단일 부품', '스핀들에 의해
  이동하는 바이스 조로, 공작물을 눌러 고정하는 가동 클램핑 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '공작물을 고정 방향으로 이동시킴'),
(LAST_INSERT_ID(), '클램핑 압력을 직접 가함'),
(LAST_INSERT_ID(), '다양한 공작물 크기에 대응');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '이동 클램핑 구조 원리'),
(LAST_INSERT_ID(), '압축력 전달 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '공구강'),
(LAST_INSERT_ID(), '합금강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '가동 죠의 힘 전달'),
(LAST_INSERT_ID(), '압축 하중과 접촉 설계'),
(LAST_INSERT_ID(), '공작물 크기 대응 메커니즘');

-- 5. Spindelsockel
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (3, 'spindelsockel', '스핀들 소켓', 'Spindelsockel', '단일 부품',
        '트라페조이드 스핀들을 지지하는 소켓 구조로, 회전 운동을 직선 운동으로
        변환하는 핵심 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '스핀들을 정확한 위치에서 지지'),
(LAST_INSERT_ID(), '회전력을 이동력으로 변환'),
(LAST_INSERT_ID(), '바이스 작동 신뢰성 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '나사-너트 운동 변환 원리'),
(LAST_INSERT_ID(), '축방향 하중 분산 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '주철'),
(LAST_INSERT_ID(), '청동 인서트');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '스핀들 지지 구조'),
(LAST_INSERT_ID(), '축방향 하중 분산'),
(LAST_INSERT_ID(), '마찰·마모 감소 인서트 설계');

-- 6. Spannbacke
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (3, 'spannbacke', '클램핑 죠(교체형)', 'Spannbacke', '단일 부품',
        '공작물과 직접 접촉하는 교체형 클램핑 죠로, 마모를 고려한 소모 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '공작물을 안정적으로 고정'),
(LAST_INSERT_ID(), '공작물 표면 손상 방지'),
(LAST_INSERT_ID(), '마모 시 손쉽게 교체');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '접촉면 압력 분산 원리'),
(LAST_INSERT_ID(), '마찰력 증대 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '열처리 공구강'),
(LAST_INSERT_ID(), '표면 경화 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '소모품 설계(교체성)'),
(LAST_INSERT_ID(), '접촉 압력 분산'),
(LAST_INSERT_ID(), '표면 경화와 마찰');

-- 7. Fuhrungsschiene
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (3, 'fuhrungsschiene', '가이드 레일', 'Fuhrungsschiene', '단일 부품',
        '이동 바이스 조의 직선 이동을 보조하는 정밀 가이드 레일로, 마찰과 뒤틀림을
        억제한다.');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '이동 정확도 향상'),
(LAST_INSERT_ID(), '쏠림 및 편마모 방지'),
(LAST_INSERT_ID(), '정렬 상태 장기 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '슬라이딩 가이드 구조'),
(LAST_INSERT_ID(), '마찰 제어 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철'),
(LAST_INSERT_ID(), '표면 경화 처리 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '슬라이드 가이드 설계'),
(LAST_INSERT_ID(), '마찰과 정밀도'),
(LAST_INSERT_ID(), '편마모 방지 구조');

-- 8. Trapezspindel
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (3, 'trapezspindel', '트라페조이드 스핀들', 'Trapezspindel', '단일
  부품', '바이스를 작동시키는 트라페조이드 나사로, 회전 입력을 직선 이동으로
  변환한다.');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '바이스 개폐 제어'),
(LAST_INSERT_ID(), '클램핑 힘 생성'),
(LAST_INSERT_ID(), '작업자 입력을 기계적 힘으로 변환');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '트라페조이드 나사 형상 이론'),
(LAST_INSERT_ID(), '마찰 기반 자잠김(Self-locking) 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '합금강'),
(LAST_INSERT_ID(), '표면 경화 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '나사 형상과 효율'),
(LAST_INSERT_ID(), '자잠김 조건과 안전'),
(LAST_INSERT_ID(), '클램핑 힘 생성 메커니즘');

-- 9. Grundplatte
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (3, 'grundplatte', '베이스 플레이트', 'Grundplatte', '단일 부품',
        '바이스 전체를 지지하는 바닥 베이스 부품으로 기계 테이블과 직접 결합되는
        구조물');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '바이스를 기계 테이블에 고정'),
(LAST_INSERT_ID(), '전체 구조 하중 지지'),
(LAST_INSERT_ID(), '가공 중 안정성 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '하중 분산 구조 설계'),
(LAST_INSERT_ID(), '기초 지지 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '주철'),
(LAST_INSERT_ID(), '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '베이스 강성과 안정성'),
(LAST_INSERT_ID(), '하중 분산 설계'),
(LAST_INSERT_ID(), '기계 테이블 체결 개념');

-- 10. Druckhulse
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (3, 'druckhulse', '압력 슬리브', 'Druckhülse', '단일 부품', '바이스
  내부에서 스핀들 구동부에서 발생한 힘을 다른 부품으로 균일하게 전달하는
  슬리브(압력 부시) 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '스핀들에서 발생한 압력 전달'),
(LAST_INSERT_ID(), '회전 부품과 고정부 사이에서 힘을 매개'),
(LAST_INSERT_ID(), '국부 마모 방지 및 수명 연장'),
(LAST_INSERT_ID(), '클램핑 동작의 부드러움 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '축방향 압축 하중 전달(Axial Load Transfer) 원리'),
(LAST_INSERT_ID(), '면 접촉을 통한 국부 응력 분산 개념'),
(LAST_INSERT_ID(), '슬리브 구조에 의한 정렬 유지 이론');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철(Steel)'),
(LAST_INSERT_ID(), '경화강 또는 표면 열처리 강재'),
(LAST_INSERT_ID(), '청동(Bronze)');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '압력 전달 부시 역할'),
(LAST_INSERT_ID(), '축방향 하중 전달'),
(LAST_INSERT_ID(), '마모 저감 재료(청동) 적용');

-- 1. Rotary Base
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (4, 'rotary_base', '회전 베이스', 'Rotary Base', '단일 부품', '로봇 암
  전체를 지지하는 회전 베이스 부품으로, 로봇의 1축(Base Axis)을 형성한다');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (4, 'joint_bracket', '관절 브래킷', 'Joint Bracket', '단일 부품', '로봇
   관절을 형성하며 두 회전 요소를 연결하는 구조 브래킷');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (4, 'link_arm', '링크 암', 'Link Arm', '단일 부품', '로봇 암의 길이를
  형성하며 관절과 관절을 연결하는 구조 링크');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (4, 'actuator_housing', '액추에이터 하우징', 'Actuator Housing', '단일
  부품', '모터 또는 감속기를 수용하여 구동부를 보호하는 하우징 구조물');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (4, 'joint_coupling', '관절 커플링', 'Joint Coupling', '단일 부품',
        '회전축과 링크를 결합하여 토크를 직접 전달하는 핵심 결합 부품');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (4, 'wrist_joint', '손목 관절', 'Wrist Joint', '단일 부품', '로봇 암
  말단부의 회전 관절로, 엔드 이펙터의 방향을 제어한다');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (4, 'end_effector_mount', '엔드 이펙터 마운트', 'End Effector Mount',
        '단일 부품', '그리퍼 또는 도구를 장착하는 로봇 암 말단 인터페이스 부품');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (4, 'parallel_gripper', '평행 그리퍼', 'Parallel Gripper', '단일 부품',
        '두 개의 죠가 평행하게 움직이며 물체를 파지하는 그리퍼 장치');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (5, 'base_gear', '베이스 기어', 'Base Gear', '단일 부품', '로봇 집게
  구동의 시작점이 되는 기준 기어로, 모터 또는 외부 회전 입력을 전달받는 핵심
  회전 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '구동원의 회전을 기구부로 전달'),
(LAST_INSERT_ID(), '전체 집게 동작의 기준 회전 제공'),
(LAST_INSERT_ID(), '다른 기어들과의 동기화 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '기어 맞물림에 의한 회전력 전달 원리'),
(LAST_INSERT_ID(), '회전 속도 및 토크 변환 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '엔지니어링 플라스틱'),
(LAST_INSERT_ID(), '알루미늄'),
(LAST_INSERT_ID(), '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '기어 구동 기초'),
(LAST_INSERT_ID(), '토크 전달 메커니즘');

-- 2. Base Mounting Bracket
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (5, 'base_mounting_bracket', '베이스 장착 브래킷', 'Base Mounting
  Bracket', '단일 부품', '로봇 집게를 로봇 암 또는 베이스에 고정하는 장착
  브래킷으로 구조적 기준 위치를 형성한다');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '로봇 집게를 외부 구조물에 고정'),
(LAST_INSERT_ID(), '구동 중 발생하는 반력 지지'),
(LAST_INSERT_ID(), '전체 그리퍼 정렬 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '고정 지지 구조(Fixed Support) 개념'),
(LAST_INSERT_ID(), '하중 전달 경로 설계 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '알루미늄 합금'),
(LAST_INSERT_ID(), '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '고정 지지 구조'),
(LAST_INSERT_ID(), '하중 전달 설계');

-- 3. Base Plate
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (5, 'base_plate', '베이스 플레이트', 'Base Plate', '단일 부품', '로봇
  집게 내부 부품들이 장착되는 평판 구조물로, 기어 및 링크를 지지하는 기초
  프레임');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '기어와 링크를 정확한 위치에 고정'),
(LAST_INSERT_ID(), '전체 구조 강성 확보'),
(LAST_INSERT_ID(), '기구 동작의 기준 프레임 제공');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '평면 기준면(Reference Plane) 개념'),
(LAST_INSERT_ID(), '하중 분산 지지 구조 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '알루미늄'),
(LAST_INSERT_ID(), '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '기초 프레임 설계'),
(LAST_INSERT_ID(), '기준면 개념');

-- 4. Gear Link 1
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (5, 'gear_link_1', '기어 링크 1', 'Gear Link 1', '단일 부품', '기어의
  회전 운동을 링크 운동으로 변환하는 첫 번째 연결 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '기어 회전을 링크 시스템으로 전달'),
(LAST_INSERT_ID(), '집게 개폐 초기 운동 생성'),
(LAST_INSERT_ID(), '기구 동작 타이밍 제어');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '회전 운동 → 병진/각운동 변환 원리'),
(LAST_INSERT_ID(), '기어-링크 연동 메커니즘');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '플라스틱'),
(LAST_INSERT_ID(), '알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '운동 변환 메커니즘'),
(LAST_INSERT_ID(), '기어-링크 연계');

-- 5. Gear Link 2
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (5, 'gear_link_2', '기어 링크 2', 'Gear Link 2', '단일 부품', '두 번째
  단계의 기어-링크 연결 부품으로 좌우 집게 동작을 동기화한다');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '좌우 집게 동작 균형 전달'),
(LAST_INSERT_ID(), '힘 분배 조절'),
(LAST_INSERT_ID(), '파지 안정성 향상');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '대칭 링크 구조 개념'),
(LAST_INSERT_ID(), '동기 운동(Synchronous Motion) 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '플라스틱'),
(LAST_INSERT_ID(), '알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '동기 링크 설계'),
(LAST_INSERT_ID(), '대칭 구조 메커니즘');

-- 6. Gripper
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (5, 'gripper', '집게', 'Gripper', '단일 부품', '물체를 직접 집는 로봇
  집게의 말단 부품으로 작업 대상과 직접 접촉한다');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '물체 파지 및 고정'),
(LAST_INSERT_ID(), '미끄럼 방지'),
(LAST_INSERT_ID(), '작업 정확도 결정');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '마찰 기반 파지 원리'),
(LAST_INSERT_ID(), '레버 작용에 의한 파지력 증폭');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '플라스틱'),
(LAST_INSERT_ID(), '고무 코팅'),
(LAST_INSERT_ID(), '표면 텍스처 적용 소재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '파지 메커니즘'),
(LAST_INSERT_ID(), '마찰과 접촉 설계');

-- 7. Link
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (5, 'link', '링크', 'Link', '단일 부품', '로봇 집게 내부에서 힘과
  움직임을 전달하는 연결 링크 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '기어 움직임을 집게로 전달'),
(LAST_INSERT_ID(), '집게 개폐 경로 형성'),
(LAST_INSERT_ID(), '반복 동작 신뢰성 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '링크 메커니즘(Linkage Mechanism)'),
(LAST_INSERT_ID(), '다절 링크 운동 전달 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '플라스틱'),
(LAST_INSERT_ID(), '알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '링크 기구학'),
(LAST_INSERT_ID(), '운동 전달 구조');

-- 8. Pin
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (5, 'pin', '핀', 'Pin', '단일 부품', '링크와 기어를 회전 가능하게
  연결하는 축 부품으로 모든 관절의 회전 중심 역할을 한다');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '회전축 형성'),
(LAST_INSERT_ID(), '기구 자유도 제공'),
(LAST_INSERT_ID(), '구조 결합 안정성 확보');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '회전 관절(Revolute Joint) 개념'),
(LAST_INSERT_ID(), '전단 하중 지지 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철'),
(LAST_INSERT_ID(), '스테인리스강');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '회전 관절 구조'),
(LAST_INSERT_ID(), '전단 하중과 내구 설계');

-- 1. BASE
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (6, 'base', '베이스', 'Base', '단일 부품', '서스펜션 하부에 위치하는
  기준 지지 부품으로 전체 구조에서 하중을 전달받는 고정 베이스');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '서스펜션 전체를 하부 구조에 고정'),
(LAST_INSERT_ID(), '스프링 및 로드에서 전달되는 하중 지지'),
(LAST_INSERT_ID(), '시스템 정렬 기준점 형성');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '고정 지지 구조(Fixed Support) 원리'),
(LAST_INSERT_ID(), '하중 전달 경로 설계 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '알루미늄 합금'),
(LAST_INSERT_ID(), '강철');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '고정 지지 구조'),
(LAST_INSERT_ID(), '하중 전달 설계');

-- 2. NIT
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (6, 'nit', '가이드 부품', 'NIT', '단일 부품', '서스펜션 내부에서 축
  방향 움직임을 안내하며 로드와 스프링의 정렬을 유지하는 가이드 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '로드의 직선 운동 안내'),
(LAST_INSERT_ID(), '스프링 압축 시 흔들림 방지'),
(LAST_INSERT_ID(), '내부 부품 정렬 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '축 정렬(Coaxial Alignment) 개념'),
(LAST_INSERT_ID(), '슬라이딩 가이드 구조 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '알루미늄 합금'),
(LAST_INSERT_ID(), '엔지니어링 플라스틱');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '축 정렬 설계'),
(LAST_INSERT_ID(), '슬라이딩 가이드 구조');

-- 3. NUT
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (6, 'nut', '조절 너트', 'Nut', '단일 부품', '나사 결합을 통해 서스펜션
  길이와 스프링 장력을 고정하는 체결 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '로드와 부품 위치 고정'),
(LAST_INSERT_ID(), '스프링 예압 유지'),
(LAST_INSERT_ID(), '조립 안정성 확보');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '나사 체결(Threaded Fastening) 원리'),
(LAST_INSERT_ID(), '축방향 고정 및 풀림 방지 개념');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철'),
(LAST_INSERT_ID(), '알루미늄');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '나사 체결 원리'),
(LAST_INSERT_ID(), '예압(preload) 개념');

-- 4. ROD
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (6, 'rod', '로드', 'Rod', '단일 부품', '서스펜션 내부에서 하중을 직접
  전달하는 중심 축 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '스프링 하중 전달'),
(LAST_INSERT_ID(), '서스펜션 운동 중심 축 역할'),
(LAST_INSERT_ID(), '전체 구조 강성 유지');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '축방향 하중 전달(Axial Load Transfer)'),
(LAST_INSERT_ID(), '직선 운동 구속 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '강철'),
(LAST_INSERT_ID(), '표면 경화 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '축 부품 설계'),
(LAST_INSERT_ID(), '축방향 하중');

-- 5. SPRING
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (6, 'spring', '코일 스프링', 'Spring', '단일 부품', '압축 변형을 통해
  충격 에너지를 저장하고 방출하는 탄성 부품');

INSERT INTO part_functional_role (part_id, functional_role) VALUES
    (LAST_INSERT_ID(), '외부 충격 흡수'),
(LAST_INSERT_ID(), '탄성 복원 수행'),
(LAST_INSERT_ID(), '시스템 안정성 향상');

INSERT INTO part_engineering_theory (part_id, engineering_theory) VALUES
    (LAST_INSERT_ID(), '훅의 법칙(Hooke''s Law)'),
(LAST_INSERT_ID(), '탄성 변형에 의한 에너지 저장 원리');

INSERT INTO part_material (part_id, material) VALUES
    (LAST_INSERT_ID(), '스프링강'),
(LAST_INSERT_ID(), '열처리 강재');

INSERT INTO part_learning_topic (part_id, learning_topic) VALUES
    (LAST_INSERT_ID(), '탄성체 거동'),
(LAST_INSERT_ID(), '스프링 설계 기초');

-- 1. Connecting Rod Cap
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (7, 'connecting_rod_cap', '커넥팅 로드 캡', 'Connecting Rod Cap', '단일
   부품', '커넥팅 로드 하단에서 크랭크샤프트의 크랭크 핀을 감싸는 분리형 캡
  부품');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (7, 'connecting_rod', '커넥팅 로드', 'Connecting Rod', '단일 부품',
        '피스톤과 크랭크샤프트를 연결하여 직선 운동을 회전 운동으로 변환하는 핵심 동력
         전달 부품');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (7, 'conrod_bolt', '커넥팅 로드 볼트', 'Conrod Bolt', '단일 부품',
        '커넥팅 로드와 캡을 체결하는 고하중·고피로 조건용 전용 볼트');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (7, 'crankshaft', '크랭크샤프트', 'Crankshaft', '단일 부품', '엔진의
  중심 회전축으로 피스톤의 왕복 운동을 회전 출력으로 변환하는 핵심 부품');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (7, 'piston_pin', '피스톤 핀', 'Piston Pin', '단일 부품', '피스톤과
  커넥팅 로드를 연결하는 원통형 회전 축 부품');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (7, 'piston_ring', '피스톤 링', 'Piston Ring', '단일 부품', '피스톤
  외주에 장착되어 실린더 내부 기밀을 유지하는 링 형태의 부품');

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
INSERT INTO part (model_id, code, name, english_name, category, description)
VALUES (7, 'piston', '피스톤', 'Piston', '단일 부품', '실린더 내부에서 왕복
  운동하며 연소 압력을 기계적 힘으로 변환하는 핵심 부품');

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