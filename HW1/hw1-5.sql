SELECT Artists.Name, Albums.Title
FROM Artists
JOIN Albums ON Artists.ArtistId = Albums.ArtistId
ORDER BY Artists.Name ASC;