SELECT ar.name
FROM artist ar
JOIN album al ON ar.artist_id = al.artist_id
JOIN track t ON al.album_id = t.album_id
GROUP BY ar.name
HAVING COUNT(DISTINCT t.genre_id) >= 3
ORDER BY ar.name;
