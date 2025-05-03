SELECT DISTINCT origin_city AS city
FROM flights
GROUP BY origin_city
HAVING MAX(actual_time) < 180 OR MAX(actual_time) IS NULL
ORDER BY city;
