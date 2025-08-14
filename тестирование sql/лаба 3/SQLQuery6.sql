USE [AdventureWorks2017];
GO

SELECT
  PSC.Name                       AS SubcategoryName,
  MAX(P.ListPrice)               AS MaxRedPrice
FROM Production.Product         AS P
JOIN Production.ProductSubcategory AS PSC
  ON P.ProductSubcategoryID = PSC.ProductSubcategoryID
WHERE P.Color = 'Red'
GROUP BY PSC.Name
ORDER BY MaxRedPrice DESC;
