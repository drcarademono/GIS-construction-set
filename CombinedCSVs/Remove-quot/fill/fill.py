import pandas as pd
import random

# Load the CSV file
df = pd.read_csv('WOD_Rocks.csv')

# Fill the 'name' column
df['name'] = 'Rocks'

# Fill the 'type' column
df['type'] = 1

# Define the possible values for the 'prefab' column, ensuring '10' is formatted correctly
prefab_options = [f'WOD_Rocks_Round_Gray_Small_{str(i).zfill(2)}' for i in range(1, 11)]

# Randomly fill the 'prefab' column
df['prefab'] = [random.choice(prefab_options) for _ in range(len(df))]

# Add the 'sink' column
df['sink'] = 0.25

# Fill the 'rotYaxis' column with a random value from -180 to 180
df['rotYaxis'] = [random.randint(-180, 180) for _ in range(len(df))]

# Save the modified DataFrame to a new CSV file
df.to_csv('WOD_Rocks_modified.csv', index=False)

print('CSV file has been modified and saved as WOD_Rocks_modified.csv.')

