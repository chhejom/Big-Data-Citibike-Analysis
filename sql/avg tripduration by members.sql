SELECT member_casual,
    AVG(date_diff('minute', started_at, ended_at)) AS trip_duration
FROM "AwsDataCatalog"."citibike"."citibike_tripduration"
GROUP BY member_casual
