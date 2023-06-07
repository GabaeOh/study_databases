-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- AGE을 UPDATE하기 (30, 32를 29살로)  WHERE로 조건부여/ 
UPDATE members
SET AGE = 29
WHERE AGE IN (30, 32); 

SELECT *
FROM members
ORDER BY AGE;
