SELECT
    start_station_name,
    hour,
    MAX(total_trips) AS busiest_hour_trips
FROM (
    SELECT
        start_station_name,
        HOUR(started_at) AS hour,
        COUNT(*) AS total_trips
    FROM "AwsDataCatalog"."citibike"."citibike_tripduration"
    GROUP BY start_station_name, HOUR(started_at)
) AS hourly_trips
GROUP BY start_station_name, hour
ORDER BY busiest_hour_trips DESC
LIMIT 10;
