import pandas as pd
import os

folder_path = '/Users/soso/Downloads/202412-citibike-tripdata'

csv_files = [
    os.path.join(folder_path, '202412-citibike-tripdata_1.csv'),
    os.path.join(folder_path, '202412-citibike-tripdata_2.csv'),
    os.path.join(folder_path, '202412-citibike-tripdata_3.csv')
]

combined_data = pd.concat([pd.read_csv(file) for file in csv_files])

output_file = '/Users/soso/Downloads/202412-citibike-tripdata_combined.csv'
combined_data.to_csv(output_file, index=False)