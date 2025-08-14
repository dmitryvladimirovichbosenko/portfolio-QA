USE [AdventureWorks2017];
GO

SELECT
  P.Name                        AS ProductName,
  COUNT(DISTINCT PV.BusinessEntityID) AS VendorCount
FROM Purchasing.ProductVendor AS PV
JOIN Production.Product       AS P
  ON PV.ProductID = P.ProductID
GROUP BY P.Name
HAVING COUNT(DISTINCT PV.BusinessEntityID) > 1
ORDER BY VendorCount DESC;
