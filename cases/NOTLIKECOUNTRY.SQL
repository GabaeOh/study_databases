-- ref= https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where


-- 'USA', 'Germany' 아닌 국가 추출
SELECT * FROM Customers
WHERE Country NOT IN ('USA', 'Germany');  

-- 총 컬럼의 수 67개 