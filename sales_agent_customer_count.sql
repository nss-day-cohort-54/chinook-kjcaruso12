SELECT e.FirstName || ' ' || e.LastName as FullName,
Count(*) as CustomerCount
FROM Employee e
JOIN Customer c
    ON e.EmployeeId = c.SupportRepId
GROUP BY e.EmployeeId