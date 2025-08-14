USE [AdventureWorks2017];
GO

SELECT
  PSC.Name AS SubcategoryName,
  COUNT(*) AS CountOccurrences
FROM Production.ProductSubcategory AS PSC
GROUP BY PSC.Name
HAVING COUNT(*) > 1;
