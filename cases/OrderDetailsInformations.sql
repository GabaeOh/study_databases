-- ref = https://www.w3schools.com/mysql/trymysql.asp?filename=trysql_select_min
-- 조건 : 제품명,가격, 주문 갯수, 고객명 표시

SELECT T_PRO.ProductName, T_PRO.Price, T_ORD.Quantity, T_CUS.CustomerName
FROM Orders AS T_OR
	INNER JOIN Customers AS T_CUS
	ON T_OR.CustomerID = T_CUS.CustomerID
    INNER JOIN OrderDetails AS T_ORD
    ON T_OR.OrderID = T_ORD.OrderID
	INNER JOIN Products as T_PRO
    ON T_ORD.ProductID = T_PRO.ProductID;
    
   --  Number of Records: 2155