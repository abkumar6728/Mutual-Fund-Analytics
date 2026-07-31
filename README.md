Mutual Fund Analytics

Overview

Mutual Fund Analytics is a data analytics and data engineering project that focuses on collecting, cleaning, validating, storing, and analyzing mutual fund datasets using Python, SQL, and SQLite.

The project demonstrates a complete analytics workflow including data ingestion, data cleaning, database creation, SQL analysis, and documentation.

 Project Objectives

* Load and validate multiple mutual fund datasets.
* Clean and preprocess raw data using Pandas.
* Store cleaned datasets in a SQLite database.
* Design a star schema for analytical reporting.
* Write SQL queries to generate business insights.
* Document datasets using a data dictionary.

 Project Structure

Mutual-Fund-Analytics
|
|-- data
|   |-- raw
|   |-- processed
|
|-- notebooks
|   |-- 01_data_ingestion.ipynb
|   |-- 02_data_cleaning.ipynb
|
|-- sql
|   |-- schema.sql
|   |-- queries.sql
|
|-- reports
|-- dashboard
|
|-- bluestock_mf.db
|-- requirements.txt
|-- README.md
|-- data_dictionary.md
```

 Technologies Used

* Python
* Pandas
* NumPy
* SQLAlchemy
* SQLite
* Jupyter Notebook
* Git
* GitHub

 Datasets

The project uses the following datasets:

* Fund Master
* NAV History
* AUM by Fund House
* Monthly SIP Inflows
* Category Inflows
* Industry Folio Count
* Scheme Performance
* Investor Transactions
* Portfolio Holdings
* Benchmark Indices

 Day 1 Work

* Created the project folder structure.
* Loaded all raw datasets.
* Performed initial data inspection.
* Retrieved live NAV data.
* Generated the requirements file.
* Uploaded the project to GitHub.

 Day 2 Work

* Cleaned the NAV History dataset.
* Cleaned the Investor Transactions dataset.
* Validated the Scheme Performance dataset.
* Processed the remaining datasets.
* Created the SQLite database named bluestock_mf.db.
* Designed the database schema in schema.sql.
* Wrote analytical SQL queries in queries.sql.
* Created the data dictionary.

 Features

* Data cleaning and validation
* SQLite database integration
* Database schema design
* SQL based analysis
* Organized project structure
* Reproducible data pipeline

How to Run

1. Clone the repository.
2. Install the required packages using:


pip install -r requirements.txt


3. Open the notebooks folder.
4. Run the notebooks in the following order:

   * 01_data_ingestion.ipynb
   * 02_data_cleaning.ipynb
5. Review the database and SQL files.

Project Outputs

* Cleaned datasets stored in data/processed
* SQLite database named bluestock_mf.db
* Database schema in schema.sql
* SQL queries in queries.sql
* Data dictionary in data_dictionary.md

Author

Abhishek Kumar
