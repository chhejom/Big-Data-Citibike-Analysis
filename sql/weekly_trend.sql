SELECT 
    date_format(started_at, '%W') AS day_of_week,
    COUNT(*) AS total_rides,
    AVG(date_diff('minute', started_at, ended_at)) AS avg_trip_duration
FROM "AwsDataCatalog"."citibike"."citibike_tripduration"
GROUP BY date_format(started_at, '%W')
ORDER BY 
    CASE 
        WHEN date_format(started_at, '%W') = 'Monday' THEN 1
        WHEN date_format(started_at, '%W') = 'Tuesday' THEN 2
        WHEN date_format(started_at, '%W') = 'Wednesday' THEN 3
        WHEN date_format(started_at, '%W') = 'Thursday' THEN 4
        WHEN date_format(started_at, '%W') = 'Friday' THEN 5
        WHEN date_format(started_at, '%W') = 'Saturday' THEN 6
        WHEN date_format(started_at, '%W') = 'Sunday' THEN 7
    END;
