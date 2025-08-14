USE [AdventureWorks2017];
GO

SELECT TOP 1
  P.Name                        AS ProductName,
  SUM(SOD.OrderQty)             AS TotalSold
FROM Sales.SalesOrderDetail    AS SOD
JOIN Production.Product        AS P
  ON SOD.ProductID = P.ProductID
GROUP BY P.Name
ORDER BY TotalSold DESC;
