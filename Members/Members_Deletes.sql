-- SELECT column1, column2, ...  // 기본 명령어
-- FROM table_name
-- WHERE condition
-- ORDER BY column1, column2, ... ASC|DESC;

-- DELETE FROM table_name WHERE condition; //삭제하는 법 

-- members테이블 속 data 삭제하기 / pk를 활용하여 삭제 하기, 연결된 pk를 먼저 삭제해줘야 됨(순서 중요)

DELETE FROM hobby_code -- hobby_code 테이블 삭세 
WHERE MEMBERS_ID LIKE '%'||'H'||'%';

DELETE FROM members_hobby -- members_code 테이블 삭세
WHERE MEMBERS_ID LIKE '%'||'M'||'%';

DELETE FROM membewrs_login  -- membewrs_login 테이블 삭세
WHERE MEMBERS_ID LIKE '%'||'M'||'%';

DELETE FROM address_code -- address_code_code 테이블 삭세
WHERE ADDRESS_CODE_ID LIKE '%'||'A'||'%';

DELETE FROM gender_code -- gender_code_code 테이블 삭세
WHERE GENDER_CODE_ID LIKE '%'||'G'||'%';

DELETE FROM members -- members 테이블 삭세
WHERE MEMBERS_ID LIKE '%'||'M'||'%';
