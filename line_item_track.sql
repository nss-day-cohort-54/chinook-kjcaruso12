SELECT
i.InvoiceLineId,
t.Name
FROM InvoiceLine i
JOIN Track t
    ON i.TrackId = t.TrackId