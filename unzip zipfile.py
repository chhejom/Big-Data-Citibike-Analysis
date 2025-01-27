import zipfile
import os

# Define the folder path where your zip files are located
folder_path = '/Users/soso/Downloads/2020-citibike-tripdata/'

# Get all the zip files in the folder
zip_files = [f for f in os.listdir(folder_path) if f.endswith('.zip')]

# Directory where you want to extract the contents
extract_to = os.path.join(folder_path, 'extracted')
# Create the extraction directory if it doesn't exist
os.makedirs(extract_to, exist_ok=True)

# Loop through each zip file and extract its contents
for zip_file in zip_files:
    zip_file_path = os.path.join(folder_path, zip_file)  # Full path to the zip file
    print(f"Extracting {zip_file_path}...")
    
    try:
        with zipfile.ZipFile(zip_file_path, 'r') as zip_ref:
            zip_ref.extractall(extract_to)
        print(f"Extracted: {zip_file_path} to {extract_to}")
    except zipfile.BadZipFile:
        print(f"Skipping invalid zip file: {zip_file_path}")

print(f"All files have been extracted to {extract_to}")
