-- GENDER CODE
INSERT INTO gender_code
(GENDER, GENDER_CODE_ID)
VALUES
('남성', 'G-01');

INSERT INTO gender_code
(GENDER, GENDER_CODE_ID)
VALUES
('여성', 'G-03');

INSERT INTO gender_code
(GENDER, GENDER_CODE_ID)
VALUES
('양성', 'G-04');

-- ADDRESS CODE
INSERT INTO address_code
(ADDRESS, ADDRESS_CODE_ID)
VALUES
('서울시 강남구', 'A-01'),
('경기도 성남시', 'A-02'),
('인천시 중구', 'A-03'),
('대전시 유성구', 'A-04'),
('부산시 해운대구', 'A-05');

-- MEMBERS CODE
INSERT INTO members
(NAME, PHONE_NUMBERS, AGE, MEMBERS_ID, GENDER_CODE_ID, ADDRESS_CODE_ID)
VALUES
('John Doe', '010-1234-5678', 30, 'M-01', 'G-01','A-01'),
('Emily Smith', '010-9876-5432', 25, 'M-02', 'G-03','A-02'),
('David Lee', '010-5678-1234', 35, 'M-03', 'G-01','A-03'),
('Sarah Kim', '010-4321-8765', 28, 'M-04', 'G-03','A-04'),
('홍길동', '010-1111-2222', 33, 'M-05', 'G-01','A-05');

-- MEMBERS_login
INSERT INTO members_login
(E_MAIL, MEMBERS_ID, MEMBERS_LOGIN_ID)
VALUES
('johndoe@example.com', 'M-01', 'L-01'),
('emilysmith@example.com', 'M-02', 'L-02'),
('davidlee@example.com', 'M-03', 'L-03'),
('sarahkim@example.com', 'M-04', 'L-04'),
('honggildong@example.com', 'M-05', 'L-05');

-- HOBBY CODE
INSERT INTO hobby_code
(HOBBY, HOBBY_CODE_ID)
VALUES
('음악감상', 'H-01'),
('독서', 'H-02'),
('요가', 'H-03'),
('여행', 'H-04'),
('게임', 'H-05'),
('요리', 'H-06'),
('등산', 'H-07'),
('테니스', 'H-08');

-- MEMBERS_HOBBY
INSERT INTO members_hobby
(HOBBY_CODE_ID, MEMBERS_ID)
VALUES
('H-01', 'M-01'),
('H-02', 'M-01'),
('H-03', 'M-02'),
('H-04', 'M-02'),
('H-05', 'M-03'),
('H-01', 'M-03'),
('H-06', 'M-04'),
('H-07', 'M-04'),
('H-04', 'M-05'),
('H-08', 'M-05');








