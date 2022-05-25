SELECT
Country,
MAX(TotalSales) as TotalSales
FROM (SELECT
i.BillingCountry as Country,
SUM(i.Total) as TotalSales
FROM Invoice i
GROUP BY i.BillingCountry
)