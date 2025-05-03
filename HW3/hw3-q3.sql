SELECT origin_city,
       ROUND(100.0 * SUM(CASE WHEN actual_time < 180 THEN 1 ELSE 0 END) / COUNT(*), 2) AS percentage
FROM flights
GROUP BY origin_city
ORDER BY percentage ASC;
