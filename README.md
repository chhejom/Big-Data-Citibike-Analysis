# Citibike-Analysis (2019-2024) 100 million dataset

# Project Overview

This project analyzes CitiBike trip data from 2019 to 2024 to understand urban mobility patterns, user behavior, and station performance. The project focuses on automating data extraction, cloud storage, transformation, and analysis to derive insights into urban mobility patterns, user behavior, and station performance.

# Purpose of the Project

As cities continue to evolve toward smart urban mobility systems, understanding patterns in bike-sharing data becomes essential. This project serves to:

* Automate Data Processing: Develop an end-to-end ETL pipeline to extract CitiBike trip data, store it in the cloud back, and transform it for analysis and visualization.
* Improve Resource Allocation: Identify trends and patterns to help optimize bike distribution and availability.
* Enhance User Experience:  Analyze trip durations,  trip trends, and bike-type preferences to understand user behavior and improve service offerings.
* Showcase Data Science & Cloud Skills: Showcasing expertise in big data processing, cloud computing, SQL querying, and visualization.

# Technologies and Tools

* Programming: Python (Pandas, OS, Zipfile).
* Cloud Services: AWS S3, Glue, Athena, QuickSight.
* SQL: Querying and analyzing datasets.
* Data Frameworks: ETL pipelines using Glue and custom Python scripts.
* Visualization: QuickSight dashboards for interactive analytics.
* Command Line: Automated file uploads to S3 for scalable cloud storage.

# Data Pipeline Workflow

![data pipeline](https://github.com/chhejom/Citibike-Analysis/blob/8d07b1517758aea3dc708727f47e03b67b2300df/Images/data%20pipeline.png)
1. Data Collection
* The dataset, sourced from the CitiBike website, contained millions of records across multiple CSV files and compressed zip archives.
2. Data Preparation
* Unzipping Files:
Python script (unzip zipfile.py) automated the extraction of zip archives, saving time and reducing manual effort.
* Combining CSV Files:
Custom Python script (combine.py) merged multiple CSVs into a single, large file to streamline downstream analysis.
4. Cloud Storage with AWS S3
* Uploaded preprocessed data to S3 for efficient and scalable storage.
* Leveraged terminal commands for faster uploads (2.5 MiB/s) compared to the AWS console (1.3 MB/s), reducing upload times by approximately 6.95 minutes per GB.
5. Data Transformation with AWS Glue
* Used Glue crawlers to automate schema discovery and create a structured table.
* Performed ETL tasks, including:
- Removing null rows.
- Transforming and optimizing schemas for query performance.
6. Analysis with AWS Athena
* Conducted SQL-based analysis, including:
* Identifying the most popular stations and routes.
* Determining bike usage patterns by type (e.g., electric, classic).
* Analyzing user behavior (e.g., trip durations, membership types).
* Tracking long-term usage trends (yearly, monthly).
7. Visualization with AWS QuickSight
* Created interactive dashboards to visualize:
* Temporal Trends: Monthly and yearly usage variations.
* Station Popularity: High-demand stations and routes.
* User Segmentation: Behavior differences between members and casual riders.
* Bike Type Preferences: Usage trends for classic, electric, and docked bikes.

# Data Findings and Insights

User Segmentation:

From 2019 to 2024, CitiBike recorded approximately 109.46 million trips, with members contributing 87.07 million rides and casual users accounting for 22.39 million rides. While member growth remained stagnant between 2022 and 2023, there was a significant surge of 113% in 2024. Similarly, casual users grew from 3.43 million to 8.26 million, indicating a sharp rise in adoption. This increase could be attributed to several external factors such as greater accessibility, expanded bike availability, marketing efforts, and overall increased demand for CitiBike services.

Interestingly, casual users take significantly longer trips compared to members. The average trip duration for members is approximately 15 minutes, whereas casual users tend to ride for around 40 minutes. This suggests that members likely use CitiBike for quick commutes or short, frequent trips, while casual users, possibly tourists or occasional riders, take longer trips for leisure, sightseeing, or non-urgent travel. Given NYC’s status as a major tourist destination, this trend implies a high proportion of tourists utilizing the service for city exploration.

Bike Type Preference:

Between 2019 and 2024, classic bikes were used in 56.9 million trips, while e-bikes accounted for 52.55 million trips. Although classic bikes have historically been more widely used, there has been a notable shift in preference towards e-bikes since December 2023. The increasing popularity of e-bikes could be driven by user preference for easier and more efficient rides, as well as an expansion in CitiBike’s e-bike counts. Given this trend, increasing the ratio of e-bikes to classic bikes may enhance user satisfaction and cater to growing demand.

User Trend Analysis

Analysis of CitiBike usage data indicates that Wednesday expereinces the highest riders with a total of 16,625,149 rides, followed by Thursday (16,384,322 rides) and Friday (16,242,836 rides). These high volumes suggest that CitiBike is frequently used for commuting purposes on weekdays, likely for work or school. The average trip duration on weekdays is shorter, reinforcing that Citibike serves as a quick and efficient mode of transportation during these days.

In contrast, Friday, Saturday and Sunday exhibits longest average trip duration, suggesting a shift in usuage patterns. During the weekends, the riders are more likely to be using CitiBike for leisure and travel, resulting in longer rides. 

A notable increase in CitiBike rides occurs during June, surpassing all the other months by a significant number. This trend aligns with the summer season, influenced by pleasant weather and an influx of tourist in the city. Additonally, October and September also sees a significant rise in riders, suggesting that milder fall temperature encoruage bike usuage before the colder season hits the city.

A time based analysis reveals that the busiest hour for the CitiBike usuage is 5:00 pm that relates with the evening rush hours when New Yorkers leave work and commute back home. This is followed by 6:00 pm and 4:00 pm, further suggesting that Citibike's role as a preferred mode of transportation for daily commuters.

Given the distinct patterns in usage, CitiBike could introduce targeted initiatives to maximize engagement. Offering promotions for weekend rides that provide savings on longer trips could encourage more casual riders to use the service for leisure. Additionally, launching a marketing campaign focused on assisting tourists and local residents in discovering scenic routes and cultural landmarks through CitiBike could further enhance ridership. By strategically positioning CitiBike as both a practical commuter option and a leisure-friendly service, the company can cater to a diverse range of users while optimizing overall bike usage.

Popular Station and Routes

The analysis reveals that the most popular station in the dataset is W 21st & 6th Ave, recording the highest number of trips as both a starting and ending location. This location is near the shopping area, suggesting that many CitiBike users utilize the service for shopping related trips, contributing to the high volume of rides.

Additionally data shows that Tribeca (West St & Chambers St) is the second most popular station, highlighting that office workers frequently take quick rides during work hours. Expanding docking station in these high-traffic business areas could further support mid-day commuters and leisure riders.

The insights suggest that adding more CitiBike docks near shopping destination and commercail areas could better accomodate user demand for btoh transportation and convenience option in high traffic routes.

# Conclusion

This analysis of CitiBike data demonstrates the power of combining big data processing, cloud frameworks, and visualization to solve real-world problems. By integrating advanced data engineering and analytics, this project positions itself as a prime example of end-to-end data science capabilities.
