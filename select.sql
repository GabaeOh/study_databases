-- SELECT column1, column2, ...  // 기본 명령어
-- FROM table_name
-- WHERE condition
-- ORDER BY column1, column2, ... ASC|DESC; //정렬 

-- DELETE FROM table_name WHERE condition; //삭제하는 법 

-- 휴대폰에 1이라는 숫자가 들어가고, 남성인 사람 
-- AND를 이용하여 조건을 추가적으로 걸 수 있음 
SELECT *
FROM members
WHERE TELEPHONE LIKE '%1%' AND GENDER_CODE_ID = 'G-01'; 

-- LIKE, NOT LIKE 
SELECT * 
FROM MEMBERS
WHERE GENDER_CODE_ID NOT LIKE 'G-01'; 
-- WHERE GENDER_CODE_ID = 'G-01';

-- != 같지 않다. 
SELECT *
FROM DB_MEMBERS.MEMBERS
WHERE NAME != '홍길동';

-- IN 사용 조건, NOT IN  
SELECT NAME, AGE -- 어떤 colum을 사용할지를 지정할 수 있음(디스플레이용)
FROM members
WHERE AGE NOT IN (32, 28)
ORDER BY ADDRESS_CODE_ID DESC; 

-- BETWEEN 사용,  ORDER BY 
SELECT *
FROM members
WHERE AGE BETWEEN 25 AND 35
ORDER BY GENDER_CODE_ID, AGE DESC;

-- LIKE
SELECT *
FROM members
WHERE TELEPHONE LIKE '%'||'010-'||'%'; 