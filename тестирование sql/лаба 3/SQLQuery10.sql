USE [AdventureWorks2017];
GO

SELECT TOP 1
  PC.Name                      AS CategoryName,
  SUM(SOD.OrderQty)            AS TotalSold
FROM Sales.SalesOrderDetail    AS SOD
JOIN Production.Product        AS P
  ON SOD.ProductID = P.ProductID
JOIN Production.ProductSubcategory AS PSC
  ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
JOIN Production.ProductCategory    AS PC
  ON PSC.ProductCategoryID = PC.ProductCategoryID
GROUP BY PC.Name
ORDER BY TotalSold DESC;
