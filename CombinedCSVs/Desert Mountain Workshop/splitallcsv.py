import os
import pandas as pd
from pathlib import Path

# Define the CSV files to be partitioned
csv_files = [
    "Bandits.csv", "Bandits_Roadside.csv", "BannerPosts.csv", "BorderTowers.csv",
    "Guardtowers_Roadside.csv", "LoggingCamps.csv", "Mountains.csv", "Mountains_Desert.csv", "Mountains_Foothills.csv",
    "Mountains_Small.csv", "OrcCamps.csv", "Rocks.csv", "Ruins.csv",
    "Ruins_Roadside.csv", "Shrines.csv", "Shrines_Roadside.csv"
]

# Directory to store the partitioned files
locations_dir = Path("Locations")
locations_dir.mkdir(exist_ok=True)

# Function to partition a CSV file
def partition_csv(file_name):
    file_path = Path(file_name)
    # Check if the CSV file exists
    if not file_path.is_file():
        print(f"File {file_name} not found. Skipping...")
        return
    
    df = pd.read_csv(file_path)
    for region, group in df.groupby('region'):
        # Directory names keep spaces
        region_dir = locations_dir / region
        region_dir.mkdir(parents=True, exist_ok=True)
        
        # Filenames have spaces removed
        sanitized_region_name = region.replace(" ", "")
        partitioned_file_name = f"{sanitized_region_name}_{file_path.name}"
        partitioned_file_path = region_dir / partitioned_file_name
        
        # Check if the partitioned file already exists
        if partitioned_file_path.is_file():
            print(f"File {partitioned_file_path} already exists. Skipping...")
            continue
        
        group.to_csv(partitioned_file_path, index=False)
        print(f"Partitioned file created: {partitioned_file_path}")

# Partition each CSV file if it exists and hasn't been processed yet
for file in csv_files:
    partition_csv(file)

