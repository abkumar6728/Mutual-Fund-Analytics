"""
Day 1 - Data Ingestion Script
Bluestock Mutual Fund Analytics Capstone

This script:
1. Loads all CSV datasets from data/raw
2. Prints shape, data types, first 5 rows
3. Performs basic data quality checks
"""

import pandas as pd
from pathlib import Path


def main():
    # Path to raw data
    data_path = Path("data/raw")

    # Find all CSV files
    csv_files = sorted(data_path.glob("*.csv"))

    print("=" * 80)
    print("MUTUAL FUND DATA INGESTION")
    print("=" * 80)

    print(f"\nFound {len(csv_files)} CSV files.\n")

    for file in csv_files:

        print("=" * 80)
        print(f"Dataset: {file.name}")

        df = pd.read_csv(file)

        print(f"\nShape: {df.shape}")

        print("\nData Types:")
        print(df.dtypes)

        print("\nFirst 5 Rows:")
        print(df.head())

        print("\nMissing Values:")
        print(df.isnull().sum())

        print(f"\nDuplicate Rows: {df.duplicated().sum()}")

        print("=" * 80)
        print()


if __name__ == "__main__":
    main()