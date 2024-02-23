import pandas as pd

# Load the CSV file
df = pd.read_csv('Rocks.csv')

# Change every value in the sink column to 0.0
df['sink'] = 0.25

# Save the modified DataFrame back to CSV
df.to_csv('Rocks_modified.csv', index=False)

