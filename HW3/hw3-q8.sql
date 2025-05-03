SELECT DISTINCT t.name
FROM track t
WHERE t.track_id NOT IN (
    SELECT pt.track_id
    FROM playlist p
    JOIN playlist_track pt ON p.playlist_id = pt.playlist_id
    WHERE p.name = '90’s Music'
)
ORDER BY t.name;
