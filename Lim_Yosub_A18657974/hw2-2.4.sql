SELECT DISTINCT c.name, COUNT(f.fid) AS flightcount
FROM FLIGHTS f
JOIN CARRIERS c ON f.carrier_id = c.cid
WHERE f.origin_state = 'California'
GROUP BY c.cid, f.month_id
HAVING COUNT(f.fid) > 5000;
