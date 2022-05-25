SELECT
a.Name,
SUM(i.Total) as Sales
FROM Artist a
JOIN Album al
    ON al.ArtistId = a.ArtistId
JOIN Track t
    ON t.AlbumId = al.AlbumId
JOIN InvoiceLine il
    ON il.TrackId = t.TrackId
JOIN Invoice i
    ON i.InvoiceId = il.InvoiceId
GROUP BY a.Name
ORDER BY Sales DESC
LIMIT 3
