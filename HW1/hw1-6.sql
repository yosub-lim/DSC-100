SELECT DISTINCT Artists.Name
FROM Artists
JOIN Albums ON Artists.ArtistId = Albums.ArtistId
WHERE Albums.Released > '2001-01-01';