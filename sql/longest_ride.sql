SELECT 
    ride_id,
    date_diff('minute', started_at, ended_at) AS trip_duration,
    start_station_name,
    end_station_name
FROM "AwsDataCatalog"."citibike"."citibike_tripduration"
ORDER BY trip_duration DESC
LIMIT 10;
