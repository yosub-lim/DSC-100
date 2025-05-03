SELECT DISTINCT c.name AS carrier
FROM Carriers c
WHERE c.cid IN (
    SELECT f.carrier_id
    FROM flights f
    WHERE f.origin_city = 'San Diego CA' 
    AND f.dest_city = 'San Francisco CA'
)
ORDER BY carrier;
