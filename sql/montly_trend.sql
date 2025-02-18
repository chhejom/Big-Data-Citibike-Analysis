SELECT 
    CASE 
        WHEN month(started_at) = 1 THEN 'January'
        WHEN month(started_at) = 2 THEN 'February'
        WHEN month(started_at) = 3 THEN 'March'
        WHEN month(started_at) = 4 THEN 'April'
        WHEN month(started_at) = 5 THEN 'May'
        WHEN month(started_at) = 6 THEN 'June'
        WHEN month(started_at) = 7 THEN 'July'
        WHEN month(started_at) = 8 THEN 'August'
        WHEN month(started_at) = 9 THEN 'September'
        WHEN month(started_at) = 10 THEN 'October'
        WHEN month(started_at) = 11 THEN 'November'
        WHEN month(started_at) = 12 THEN 'December'
    END AS month_name,
    COUNT(*) AS total_rides
FROM "AwsDataCatalog"."citibike"."citibike_tripduration"
GROUP BY month(started_at)
ORDER BY month(started_at)
