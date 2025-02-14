# Citibike-Analysis (2019-2024) 100 million dataset

# Project Overview

This project analyzes CitiBike trip data from 2019 to 2024 to understand urban mobility patterns, user behavior, and station performance. The project focuses on automating data extraction, cloud storage, transformation, and analysis to derive insights into urban mobility patterns, user behavior, and station performance.

# Purpose of the Project

As cities continue to evolve toward smart urban mobility systems, understanding patterns in bike-sharing data becomes essential. This project serves to:

* Automate Data Processing: Develop an end-to-end ETL pipeline to extract CitiBike trip data, store it in the cloud, and transform it for analysis.
* Improve Resource Allocation: Identify high-demand stations, peak usage hours, and seasonal trends to help optimize bike distribution and availability.
* Enhance User Experience:  Analyze trip durations, ride frequency, and bike-type preferences to understand user behavior and improve service offerings.
* Showcase Data Science & Cloud Skills: Demonstrate expertise in big data processing, cloud computing, SQL querying, and visualization.

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

# Types of Analysis Conducted

* Usage Trends:
Seasonal patterns in ridership (e.g., peak months, weekends vs. weekdays).
Annual growth or decline in usage.
* Station Popularity:
Most frequently used start and end stations.
High-demand routes and their implications for station placement.
* User Segmentation:
Comparing trip duration and frequency between members and casual riders.
Understanding how user types influence demand.
* Bike Type Analysis:
Examining preferences for bike types across different user groups.
Assessing the efficiency and demand for electric bikes compared to classic and docked bikes.
* Temporal Analysis:
Hourly and daily trends to identify peak usage times.
Recommendations for resource allocation during high-demand periods.



# Conclusion

This analysis of CitiBike data demonstrates the power of combining big data processing, cloud frameworks, and visualization to solve real-world problems. By integrating advanced data engineering and analytics, this project positions itself as a prime example of end-to-end data science capabilities.
