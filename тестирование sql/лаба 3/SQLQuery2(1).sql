WITH Duplicates AS (
  SELECT Name
  FROM Production.ProductSubcategory
  GROUP BY Name
  HAVING COUNT(*) > 1
)
SELECT
  PSC.ProductSubcategoryID,
  PSC.Name,
  PSC.ProductCategoryID,
  PC.Name AS CategoryName
FROM Production.ProductSubcategory AS PSC
INNER JOIN Duplicates AS D
  ON PSC.Name = D.Name
INNER JOIN Production.ProductCategory AS PC
  ON PSC.ProductCategoryID = PC.ProductCategoryID
ORDER BY PSC.Name, PSC.ProductSubcategoryID;
