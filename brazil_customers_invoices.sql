SELECT
Customer.FirstName,
Customer.LastName,
Invoice.InvoiceId,
Invoice.BillingCountry
FROM Customer
JOIN Invoice
    ON Customer.CustomerId = Invoice.CustomerId
WHERE Customer.Country = "Brazil"