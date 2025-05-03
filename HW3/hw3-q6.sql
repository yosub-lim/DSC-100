SELECT DISTINCT c.name AS carrier
FROM flights f
JOIN Carriers c ON f.carrier_id = c.cid
WHERE f.origin_city = 'San Diego CA' 
  AND f.dest_city = 'San Francisco CA'
ORDER BY carrier;
