-- DELETE FROM table_name WHERE condition; //삭제하는 법 
-- DELETE는 순서가 있음 PK로 연결되어있으면 연결된 PK를 삭제해줘야 함

DELETE FROM MEMBERS_HOBBY 
WHERE MEMBERS_ID = 'M-01';

DELETE FROM MEMBEWRS_LOGIN
WHERE MEMBERS_ID = 'M-01';

DELETE FROM MEMBERS
WHERE NAME = '홍길동';