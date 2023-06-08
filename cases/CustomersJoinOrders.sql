-- ref = https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_columns
-- CustomerName별로 주문 갯수 표시

-- inner 조인을 사용하여 테이블을 pk로 합쳐서 주문갯수 출력
SELECT COUNT(*),  T_CUS.CustomerName
FROM Customers AS T_CUS
	INNER JOIN Orders as T_ord
	on T_CUS.CustomerID = T_ord.CustomerID
group by T_CUS.CustomerName;

-- Number of Records: 89