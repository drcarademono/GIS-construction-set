import pandas as pd
import glob
import os

# The pattern to match CSV files in the current directory
pattern = os.path.join(os.getcwd(), '*.csv')

# Get a list of CSV files in the current directory, sorted alphabetically
csv_files = sorted(glob.glob(pattern))

# Initialize an empty list to hold the dataframes
dfs = []

# Loop through the sorted list of CSV files
for csv_file in csv_files:
    # Read the current CSV file into a dataframe
    df = pd.read_csv(csv_file)
    
    # Append the dataframe to the list
    dfs.append(df)

# Concatenate all the dataframes in the list into a single dataframe
merged_df = pd.concat(dfs, ignore_index=True)

# Write the concatenated dataframe to a new CSV file
merged_df.to_csv('WOD_Rocks.csv', index=False)

print(f'Merged {len(csv_files)} CSV files into merged_csvs.csv')

