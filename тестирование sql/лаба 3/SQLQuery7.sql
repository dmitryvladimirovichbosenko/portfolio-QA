USE [AdventureWorks2017];
GO

SELECT
  V.Name                        AS VendorName,
  COUNT(DISTINCT PV.ProductID) AS ProductsCount
FROM Purchasing.ProductVendor AS PV
JOIN Purchasing.Vendor         AS V
  ON PV.BusinessEntityID = V.BusinessEntityID
GROUP BY V.Name
ORDER BY ProductsCount DESC;
