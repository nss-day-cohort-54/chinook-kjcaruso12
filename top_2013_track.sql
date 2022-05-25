SELECT
Track,
MAX(Purchases) as Purchases
FROM (SELECT
t.Name as Track,
Count(*) as Purchases
FROM Track t
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
JOIN Invoice i
    ON i.InvoiceId = il.InvoiceId
WHERE i.InvoiceDate LIKE '2013%'
GROUP BY t.Name
)