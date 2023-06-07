-- ref = https://www.w3schools.com/sql/trysql.asp?filename=trysql_select_where
-- - 조건 : EmployeeID가 7, 9 직원에 각각 주문 갯수
SELECT COUNT(*), EmployeeID
FROM Orders
WHERE EmployeeID  in(7, 9)
GROUP BY EmployeeID ;

-- EmployeeID 7  = 14건
-- EmployeeID 9  = 6건

-- 서브 쿼리를 활용해서 동일한 과제 풀기 
SELECT COUNT(*) AS EMPLOYEE_CNT, T_OUTER_ORS.EmployeeID
FROM (
     SELECT T_INNER_ORS.*
     FROM ORDERS AS T_INNER_ORS
     WHERE T_INNER_ORS.EmployeeID IN (7,9)
    ) AS T_OUTER_ORS
GROUP BY T_OUTER_ORS.EmployeeID;