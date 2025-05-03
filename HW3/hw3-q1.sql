SELECT f.origin_city, f.dest_city, f.actual_time AS time
FROM flights f
JOIN (
    SELECT origin_city, MAX(actual_time) AS max_time
    FROM flights
    WHERE actual_time IS NOT NULL
    GROUP BY origin_city
) AS max_flights
ON f.origin_city = max_flights.origin_city
   AND f.actual_time = max_flights.max_time
WHERE f.actual_time IS NOT NULL
GROUP BY f.origin_city, f.dest_city, f.actual_time
ORDER BY f.origin_city, f.dest_city;
