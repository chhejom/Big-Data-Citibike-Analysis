SELECT 
    month(started_at) AS month,
    COUNT(*) AS total_rides
FROM "AwsDataCatalog"."citibike"."citibike_tripduration"
GROUP BY month(started_at)
ORDER BY total_rides DESC;
