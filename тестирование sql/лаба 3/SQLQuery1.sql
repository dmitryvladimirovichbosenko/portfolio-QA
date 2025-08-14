USE [AdventureWorks2017];
GO

SELECT
  P.Name       AS ProductName,
  PC.Name      AS CategoryName
FROM Production.Product AS P
INNER JOIN Production.ProductSubcategory AS PSC
  ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
INNER JOIN Production.ProductCategory AS PC
  ON PSC.ProductCategoryID = PC.ProductCategoryID
WHERE P.Color = 'Red'
  AND P.ListPrice >= 100;
