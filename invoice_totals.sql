SELECT
Invoice.Total,
Customer.FirstName CustomerFirstName,
Customer.LastName CustomerLastName,
Customer.Country,
Employee.FirstName EmployeeFirstName,
Employee.LastName EmployeeLastName
FROM Employee
JOIN Customer
    ON Employee.EmployeeId = Customer.SupportRepId
JOIN Invoice
    ON Customer.CustomerId = Invoice.CustomerId