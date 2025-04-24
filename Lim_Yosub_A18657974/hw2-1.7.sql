SELECT a.Name AS ArtistName, COUNT(t.TrackId)
FROM tracks t
JOIN albums al ON t.AlbumId = al.AlbumId
JOIN artists a ON al.ArtistId = a.ArtistId
JOIN genres g ON t.GenreId = g.GenreId
WHERE g.Name = 'Blues'
GROUP BY a.Name;