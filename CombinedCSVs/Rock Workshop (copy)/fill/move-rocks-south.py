import pandas as pd

# Load the CSV file
df = pd.read_csv('WOD_Rocks_modified.csv')

# Subtract 64 from 'terrainY' and handle the wrapping and 'worldY' increment
for index, row in df.iterrows():
    terrainY = int(row['terrainY']) - 83
    if terrainY < 0:
        terrainY += 127  # Wrap around
        df.at[index, 'worldY'] = int(row['worldY']) + 1  # Add 1 to 'worldY'
    df.at[index, 'terrainY'] = terrainY

# Calculate 'gisY' based on the updated 'terrainY' and 'worldY'
df['gisY'] = -(df['worldY']) - (1 - df['terrainY'] / 128)

# Ensure 'terrainY' and 'worldY' are integers
df['terrainY'] = df['terrainY'].astype(int)
df['worldY'] = df['worldY'].astype(int)

# Save the modified DataFrame to a new CSV file
df.to_csv('WOD_Rocks_moved.csv', index=False)

print('CSV file has been modified and saved as WOD_Rocks_modified.csv.')

