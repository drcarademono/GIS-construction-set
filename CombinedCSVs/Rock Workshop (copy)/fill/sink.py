import pandas as pd
import numpy as np

# Load the CSV file
df = pd.read_csv('Rocks.csv')

# Change every value in the sink column to a random number between 0.25 and 0.45
np.random.seed(0) # Optional: for reproducible results
df['sink'] = np.random.uniform(low=0.25, high=0.45, size=len(df))

# Save the modified DataFrame back to CSV
df.to_csv('Rocks_modified.csv', index=False)

