SELECT
MediaType,
MAX(Purchases) as Purchases
FROM ( SELECT
m.Name as MediaType,
Count(*) as Purchases
FROM MediaType m
JOIN Track t
    ON t.MediaTypeId = m.MediaTypeId
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
JOIN Invoice i
    ON i.InvoiceId = il.InvoiceId
GROUP BY m.Name
)