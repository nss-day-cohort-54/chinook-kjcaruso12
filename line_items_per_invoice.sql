SELECT InvoiceId, Count(*) as Invoices
FROM InvoiceLine
GROUP BY InvoiceId