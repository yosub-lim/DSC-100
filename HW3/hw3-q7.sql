SELECT DISTINCT name
FROM track
WHERE track_id NOT IN (
    SELECT track_id FROM invoice_line
)
ORDER BY name;
