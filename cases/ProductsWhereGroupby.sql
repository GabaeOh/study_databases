-- REF = https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_having
-- 조건 : CategoryID 가 10개 이상

SELECT COUNT(T_Products.CategoryID) AS CNT_CategoryID, T_Products.CategoryID
FROM Products AS T_Products
GROUP BY T_Products.CategoryID
HAVING COUNT(T_Products.CategoryID) >= 10;

-- Number of Records: 5
-- CNT_CategoryID	CategoryID
-- 12	1
-- 12	2
-- 13	3
-- 10	4
-- 12	8