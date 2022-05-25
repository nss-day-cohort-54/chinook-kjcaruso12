SELECT BillingCountry,
Count(*) as Invoices
FROM Invoice
GROUP BY BillingCountry