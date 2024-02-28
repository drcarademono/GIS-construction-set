import pandas as pd

# Load the CSV file
df = pd.read_csv('Rocks.csv')

# Find rows where 'climate' equals 7, 8, or 9
to_delete = df['climate'].isin([7, 8, 9])

# Log each deletion to the console
for index, row in df[to_delete].iterrows():
    print(f"Deleting row with locationID: {row['locationID']} and climate: {row['climate']}")

# Remove rows where 'climate' equals 7, 8, or 9
df = df[~to_delete]

# Save the modified DataFrame back to the same CSV file
df.to_csv('Rocks.csv', index=False)

print('Finished removing specified climate rows and updating Rocks.csv.')

