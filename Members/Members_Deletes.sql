-- SELECT column1, column2, ...  // 기본 명령어
-- FROM table_name
-- WHERE condition
-- ORDER BY column1, column2, ... ASC|DESC;

-- DELETE FROM table_name WHERE condition; //삭제하는 법 


DELETE FROM hobby_code
WHERE MEMBERS_ID LIKE '%'||'H'||'%';

DELETE FROM members_hobby
WHERE MEMBERS_ID LIKE '%'||'M'||'%';

DELETE FROM membewrs_login
WHERE MEMBERS_ID LIKE '%'||'M'||'%';

DELETE FROM address_code
WHERE ADDRESS_CODE_ID LIKE '%'||'A'||'%';

DELETE FROM gender_code
WHERE GENDER_CODE_ID LIKE '%'||'G'||'%';

DELETE FROM members
WHERE MEMBERS_ID LIKE '%'||'M'||'%';
