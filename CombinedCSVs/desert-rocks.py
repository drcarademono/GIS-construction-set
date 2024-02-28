import pandas as pd

# Load the CSV file into a DataFrame
df = pd.read_csv('WoD_Rocks_OLD.csv')

# Filter rows where climate is one of the specified conditions
filtered_df = df[df['climate'].isin(['Desert', 'Subtropical', 'Deep Desert'])]

# Export the filtered DataFrame to a new CSV file
filtered_df.to_csv('Filtered_WoD_Rocks.csv', index=False)

