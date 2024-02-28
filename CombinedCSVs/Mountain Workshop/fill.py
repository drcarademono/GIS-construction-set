import pandas as pd
import random
import numpy as np

# Load the CSV file
df = pd.read_csv('WOD_Mountains.csv')

# Remove all rows where 'climate' isn't 4
df = df.loc[df['climate'] == 4]

# Fill the 'name', 'type', and other columns with your specified logic
df['name'] = 'Mountain'
df['type'] = 1
prefab_options = [f'WOD_Mountain_{str(i).zfill(2)}' for i in range(1, 11)]
df['prefab'] = [random.choice(prefab_options) for _ in range(len(df))]
np.random.seed(0)  # For reproducible 'sink' values
df['sink'] = 1
df['scale'] = np.random.uniform(low=0.6, high=1.0, size=len(df))
df['rotYaxis'] = [random.randint(-180, 180) for _ in range(len(df))]

# Save the modified DataFrame to a new CSV file
df.to_csv('Mountains.csv', index=False)

print('CSV file has been modified and saved as Mountains.csv.')

