-- REF = https://www.w3schools.com/sql/trysql.asp?filename=trysql_is_null
-- 조건 : CategoryName가 Produce, Beverages 제품에 갯수 각각 표시

SELECT COUNT(*) AS Category_Name, T_OUTER_CA.CategoryName
FROM (
    SELECT T_INNER_CA.*
     FROM Categories AS T_INNER_CA
     WHERE T_INNER_CA.CategoryName IN ('Produce', 'Beverages')
     ) AS T_OUTER_CA
     GROUP BY T_OUTER_CA.CategoryName;
     
-- Number of Records: 2
-- Category_Name	CategoryName
-- 1	            Beverages
-- 1	            Produce
     
     