INSERT INTO questions
(QUESTION, QUESTION_ID)
VALUES
('1. 교수는 수업 전 강의 목표를 명확히 제시하였습니까?', 'Q_01'),
('2. 강의의 내용은 체계적이고 성의있게 구성되었는가?', 'Q_02'),
('3. 교수는 강의 내용에 대해 전문적 지식이 있었는가?', 'Q_03'),
('4. 강의 진행 속도는 적절하였는가?', 'Q_04');

INSERT INTO answers
(ANSWER, ANSWER_ID)
VALUES
('(1)전혀 아니다', 'A_01'),
('(2)아니다', 'A_02'),
('(3)그렇다', 'A_03'),
('(4)매우 그렇다', 'A_04');

INSERT INTO USERS
(USER, GENDER, AGE, USER_ID)
VALUES
('오가배', '여', '24', 'USER_01'),
('이동환', '남', '30', 'USER_02'),
('김민정', '여', '25', 'USER_03'),
('오상훈', '남', '32', 'USER_04');

INSERT INTO statistics
(USER_ID, QUESTION_ID, ANSWER_ID, STATISTICS_ID)
VALUES
('USER_01', 'Q_01', 'A_01', 'S_01'),
('USER_01', 'Q_02', 'A_02', 'S_02'),
('USER_01', 'Q_03', 'A_04', 'S_03'),
('USER_01', 'Q_04', 'A_03', 'S_04'),
('USER_02', 'Q_01', 'A_03', 'S_05'),
('USER_02', 'Q_02', 'A_04', 'S_06'),
('USER_02', 'Q_03', 'A_04', 'S_07'),
('USER_02', 'Q_04', 'A_02', 'S_08'),
('USER_03', 'Q_01', 'A_01', 'S_09'),
('USER_03', 'Q_02', 'A_02', 'S_10'),
('USER_03', 'Q_03', 'A_03', 'S_11'),
('USER_03', 'Q_04', 'A_03', 'S_12'),
('USER_04', 'Q_01', 'A_01', 'S_13'),
('USER_04', 'Q_02', 'A_02', 'S_14'),
('USER_04', 'Q_03', 'A_04', 'S_15'),
('USER_04', 'Q_04', 'A_04', 'S_16');




