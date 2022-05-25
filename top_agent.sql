SELECT FullName,
MAX(TotalSales) as TotalSales
FROM ( SELECT
e.FirstName || ' ' || e.LastName as FullName,
Sum(i.Total) as TotalSales
FROM Employee e
JOIN Customer c
    ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
    ON i.CustomerId = c.CustomerID
GROUP BY FullName)