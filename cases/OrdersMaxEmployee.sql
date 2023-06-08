-- REF= https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_min
-- 조건 : 가장 많이 주문 받은 회사 직원이름과 갯수

SELECT MAX(T_CASE.CNT_Order) AS MAX_ORDER, LastName, FirstName
FROM 
(SELECT COUNT(T_EM.EmployeeID) AS CNT_Order , MAX(T_EM.EmployeeID) AS MAX_ORDER, LastName, FirstName
FROM 
	Employees AS T_EM
	INNER JOIN 	Orders AS T_OR
    ON T_EM.EmployeeID = T_OR.EmployeeID
GROUP BY T_EM.EmployeeID) AS T_CASE ;

-- Number of Records: 1
-- MAX_ORDER	LastName	FirstName
-- 156	Davolio	Nancy