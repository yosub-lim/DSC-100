SELECT c.name, 
       (SUM(CASE WHEN f.canceled = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(f.fid)) AS percent
FROM FLIGHTS f
JOIN CARRIERS c ON f.carrier_id = c.cid
WHERE f.origin_city = 'San Diego CA'
GROUP BY c.cid
HAVING (SUM(CASE WHEN f.canceled = 1 THEN 1 ELSE 0 END) * 100.0 / COUNT(f.fid)) > 1
ORDER BY percent ASC;
