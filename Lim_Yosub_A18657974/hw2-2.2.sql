SELECT SUM(f.capacity) AS totalcapacity
FROM FLIGHTS f
WHERE 
    (f.origin_city = 'San Diego CA' AND f.dest_city = 'San Francisco CA' 
     OR f.origin_city = 'San Francisco CA' AND f.dest_city = 'San Diego CA')
    AND f.month_id = 7
    AND f.day_of_month = 1;