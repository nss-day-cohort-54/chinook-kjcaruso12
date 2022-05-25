SELECT
p.Name,
Count(*) as Tracks
FROM Playlist p
JOIN PlaylistTrack pt
    ON p.PlaylistId = pt.PlaylistId
GROUP BY p.Name