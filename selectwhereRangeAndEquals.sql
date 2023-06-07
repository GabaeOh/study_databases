-- ref = https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where

-- 조건 : CustomerID가 50에서 89이고, City가 Berlin인 고객
SELECT * FROM Customers
WHERE (CustomerID  BETWEEN 50 AND 89) AND (City = 'London');  

-- Number of Records: 2