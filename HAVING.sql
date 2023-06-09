-- SELECT column_name(s)
-- FROM table_name
-- WHERE condition
-- GROUP BY column_name(s)
-- HAVING condition
-- ORDER BY column_name(s);

-- 카운트 갯수가 2개 이상인 행을 뽑아라 (HAVING 사용)
SELECT COUNT(T_MEMB.AGE) AS CNT_AGE, T_MEMB.AGE
FROM MEMBERS AS T_MEMB
GROUP BY T_MEMB.AGE
HAVING COUNT(T_MEMB.AGE) >= 2;

-- 카운트 갯수가 2개 이상인 행을 뽑아라 (WHERE 사용)
SELECT *
FROM (SELECT COUNT(T_MEMB.AGE) AS CNT_AGE, T_MEMB.AGE
	FROM members AS T_MEMB
	GROUP BY T_MEMB.AGE AS T_INNER_MEMB
WHERE T_INNER_MEMB.CNT_AGE >= 2;

-- (SELECT COUNT(T_MEMB.AGE) AS CNT_AGE, T_MEMB.AGE
-- FROM MEMBERS AS T_MEMB
-- GROUP BY T_MEMB.AGE
-- HAVING COUNT(T_MEMB.AGE) >= 2) AS T_INNER_MEMB;

