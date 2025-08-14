USE [AdventureWorks2017];
GO

SELECT
  V.CreditRating                     AS CreditRating,
  COUNT(DISTINCT PV.ProductID)      AS ProductsCount
FROM Purchasing.Vendor          AS V
JOIN Purchasing.ProductVendor  AS PV
  ON V.BusinessEntityID = PV.BusinessEntityID
GROUP BY V.CreditRating
ORDER BY V.CreditRating;
