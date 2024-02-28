import pandas as pd
import random
import numpy as np

# Load the CSV file
df = pd.read_csv('WOD_Rocks.csv')

# Fill the 'name', 'type', and other columns with your specified logic
df['name'] = 'Rocks'
df['type'] = 1
prefab_options = [f'WOD_Rocks_Round_Small_{str(i).zfill(2)}' for i in range(1, 11)]
df['prefab'] = [random.choice(prefab_options) for _ in range(len(df))]
np.random.seed(0)  # For reproducible 'sink' values
df['sink'] = np.random.uniform(low=0.25, high=0.45, size=len(df))
df['scale'] = np.random.uniform(low=0.75, high=1.0, size=len(df))
df['rotYaxis'] = [random.randint(-180, 180) for _ in range(len(df))]

# Incorporate the "Round swap" logic for 'climate' and 'region'
if 'climate' in df.columns and 'prefab' in df.columns:
    df['climate'] = df['climate'].astype(float)
    df['prefab'] = df['prefab'].astype(str)
    
    # Conditions based on 'climate' values
    condition_roundspiky = (df['climate'].isin([2, 4, 5, 9])) & (df['prefab'].str.contains('Round'))
    condition_flat = (df['climate'] == 8) & (df['prefab'].str.contains('round'))
    
    # Apply transformations based on 'climate' conditions
    df.loc[condition_roundspiky, 'prefab'] = df.loc[condition_roundspiky, 'prefab'].str.replace('Round', 'RoundSpiky')
    df.loc[condition_flat, 'prefab'] = df.loc[condition_flat, 'prefab'].str.replace('round', 'Flat')

# Additional condition based on 'region'
if 'region' in df.columns:
    condition_roundspiky2 = (df['region'].isin(['Bergama'])) & (df['prefab'].str.contains('Round'))
    df.loc[condition_roundspiky2, 'prefab'] = df.loc[condition_roundspiky2, 'prefab'].str.replace('Round', 'RoundSpiky')

# Save the modified DataFrame to a new CSV file
df.to_csv('WOD_Rocks_modified.csv', index=False)

print('CSV file has been modified and saved as WOD_Rocks_modified.csv.')

