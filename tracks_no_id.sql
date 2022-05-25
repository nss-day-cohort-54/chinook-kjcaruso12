SELECT
t.Name as Track,
a.Title as Album,
m.Name as MediaType,
g.Name as Genre
FROM Track t
JOIN Album a
    ON a.AlbumId = t.AlbumId
JOIN MediaType m
    ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g
    ON g.GenreId = t.GenreId


