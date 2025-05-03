SELECT DISTINCT p.name
FROM playlist p
WHERE p.playlist_id NOT IN (
    SELECT DISTINCT pt.playlist_id
    FROM playlist_track pt
    JOIN track t ON pt.track_id = t.track_id
    JOIN genre g ON t.genre_id = g.genre_id
    WHERE g.name IN ('Rock', 'Blues')
)
ORDER BY name;
