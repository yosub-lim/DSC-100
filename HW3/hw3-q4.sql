WITH direct AS (
    SELECT dest_city
    FROM flights
    WHERE origin_city = 'San Diego CA'
),
one_stop AS (
    SELECT f2.dest_city
    FROM flights f1
    JOIN flights f2 ON f1.dest_city = f2.origin_city
    WHERE f1.origin_city = 'San Diego CA'
),
indirect_only AS (
    SELECT DISTINCT dest_city
    FROM one_stop
    WHERE dest_city NOT IN (SELECT dest_city FROM direct)
    AND dest_city <> 'San Diego CA'
)
SELECT dest_city AS city
FROM indirect_only
ORDER BY city;
