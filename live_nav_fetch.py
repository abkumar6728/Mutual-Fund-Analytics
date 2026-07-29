import requests
import pandas as pd
from datetime import datetime
import os

print("=" * 80)
print("LIVE NAV FETCH")
print("=" * 80)

# Mutual fund scheme codes from mfapi.in
schemes = {
    "HDFC Top 100 Fund - Direct Plan - Growth": "119551",
    "Parag Parikh Flexi Cap Fund - Direct Growth": "122639"
}

output_folder = "data/raw"

# Create folder if not available
os.makedirs(output_folder, exist_ok=True)

all_nav_data = []

for fund_name, code in schemes.items():

    url = f"https://api.mfapi.in/mf/{code}"

    print(f"\nFetching: {fund_name}")

    response = requests.get(url)

    if response.status_code == 200:
        data = response.json()

        for item in data["data"]:
            all_nav_data.append({
                "fund_name": fund_name,
                "date": item["date"],
                "nav": item["nav"]
            })

        print("Success")

    else:
        print("Failed:", response.status_code)


# Convert to dataframe
df = pd.DataFrame(all_nav_data)

# Save file
filename = f"live_nav_{datetime.now().strftime('%Y%m%d')}.csv"

filepath = os.path.join(output_folder, filename)

df.to_csv(filepath, index=False)

print("\nNAV data saved:")
print(filepath)

print("\nPreview:")
print(df.head())

print("=" * 80)
print("LIVE NAV FETCH COMPLETED")
print("=" * 80)