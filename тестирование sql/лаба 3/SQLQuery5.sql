USE [AdventureWorks2017];
GO

SELECT TOP 3
  PSC.Name                   AS SubcategoryName,
  COUNT(P.ProductID)         AS ProductsCount
FROM Production.ProductSubcategory AS PSC
LEFT JOIN Production.Product       AS P
  ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
GROUP BY PSC.Name
ORDER BY ProductsCount ASC;
