SELECT
i.InvoiceLineId,
t.Name,
a.Name
FROM InvoiceLine i
JOIN Track t
    ON i.TrackId = t.TrackId
JOIN Album al
    ON t.AlbumId = al.AlbumId
JOIN Artist a
    ON a.ArtistId = al.ArtistId