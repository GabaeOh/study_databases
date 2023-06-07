-- ref = https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- - 조건 : EmployeeID가 7, 9 직원에 각각 주문 갯수
SELECT COUNT(*), EmployeeID
FROM Orders
WHERE EmployeeID  in(7, 9)
GROUP BY EmployeeID ;

-- EmployeeID 7  = 14건
-- EmployeeID 9  = 6건