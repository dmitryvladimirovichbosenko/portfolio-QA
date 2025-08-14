USE [AdventureWorks2017];
GO

SELECT
  PC.Name        AS CategoryName,
  COUNT(P.ProductID) AS ProductsCount
FROM Production.Product AS P
JOIN Production.ProductSubcategory AS PSC
  ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
JOIN Production.ProductCategory AS PC
  ON PSC.ProductCategoryID = PC.ProductCategoryID
GROUP BY
  PC.Name
ORDER BY
  ProductsCount DESC;
