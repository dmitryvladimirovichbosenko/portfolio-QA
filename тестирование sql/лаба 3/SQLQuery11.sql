USE [AdventureWorks2017];
GO

SELECT
  PC.Name                                 AS CategoryName,
  COUNT(DISTINCT PSC.ProductSubcategoryID) AS SubcategoryCount,
  COUNT(P.ProductID)                      AS ProductCount
FROM Production.ProductCategory          AS PC
LEFT JOIN Production.ProductSubcategory AS PSC
  ON PSC.ProductCategoryID = PC.ProductCategoryID
LEFT JOIN Production.Product            AS P
  ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
GROUP BY PC.Name
ORDER BY CategoryName;
