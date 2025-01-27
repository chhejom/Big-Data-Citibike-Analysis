SELECT
    YEAR(started_at) AS year,
    MONTH(started_at) AS month,
    member_casual,
    COUNT(*) AS trip_count,
    ROUND(
        (COUNT(*) * 100.0 / SUM(COUNT(*)) OVER (PARTITION BY YEAR(started_at), MONTH(started_at))),
        2
    ) AS percentage_of_trips
FROM "AWSDataCatalog"."citibike"."citibike_tripduration"
GROUP BY YEAR(started_at), MONTH(started_at), member_casual
ORDER BY year, month, member_casual;
