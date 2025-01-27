SELECT 
    YEAR(started_at) AS ride_year,
    COUNT(*) AS total_rides
FROM "AwsDataCatalog"."citibike"."citibike_tripduration"
GROUP BY YEAR(started_at)
ORDER BY YEAR(started_at);
