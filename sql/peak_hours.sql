SELECT 
    HOUR(started_at) AS hour_of_day,
    COUNT(*) AS total_rides
FROM "AwsDataCatalog"."citibike"."citibike_tripduration"
GROUP BY HOUR(started_at)
ORDER BY total_rides DESC;
