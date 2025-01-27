SELECT 
    member_casual,
    COUNT(*) AS total_trips
FROM "AwsDataCatalog"."citibike"."citibike_tripduration"
GROUP BY member_casual
ORDER BY total_trips DESC;
