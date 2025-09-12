import pandas as pd
df = pd.read_csv("data/extracted_drugs.csv")
df['side_effect_severity'] = df['side_effect_severity'].str.lower().str.strip()
df['indications'] = df['indications'].apply(lambda x: ', '.join([i.strip() for i in str(x).split(',')]))
df['side_effects']=df['side_effects'].apply(lambda x: ','.join([i.strip() for i in str(x).split(',')]))
df['drug_class'] = df['drug_class'].str.strip()
df['approval_status'] = df['approval_status'].str.strip()
df.to_csv("data/transformed_drugs.csv", index=False)

