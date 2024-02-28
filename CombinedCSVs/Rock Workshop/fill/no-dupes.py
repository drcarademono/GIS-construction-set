import pandas as pd

# Load the CSV file
df = pd.read_csv('Rocks.csv')

# Find duplicates based on 'locationID'
duplicates = df[df.duplicated('locationID', keep='first')]

# Log each deletion to the console
for index, row in duplicates.iterrows():
    print(f"Deleting duplicate row with locationID: {row['locationID']}")

# Remove duplicates, keeping the first occurrence
df = df.drop_duplicates('locationID', keep='first')

# Save the modified DataFrame back to the same CSV file
df.to_csv('Rocks.csv', index=False)

print('Finished removing duplicates and updating Rocks.csv.')

