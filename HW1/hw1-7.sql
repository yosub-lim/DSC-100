SELECT Artists.Name, COUNT(Albums.AlbumId) AS AlbumCount
FROM Artists
LEFT JOIN Albums ON Artists.ArtistId = Albums.ArtistId
GROUP BY Artists.ArtistId;