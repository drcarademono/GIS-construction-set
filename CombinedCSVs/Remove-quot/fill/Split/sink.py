I have this python script:
import pandas as pd

# Load the CSV file
df = pd.read_csv('Rocks.csv')

# Change every value in the sink column to 0.4
df['sink'] = 0.4

# Save the modified DataFrame back to CSV
df.to_csv('Rocks_modified.csv', index=False)

Can we set sink to vary between .25 and .45?
