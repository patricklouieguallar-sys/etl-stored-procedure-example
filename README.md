# SQL Server ETL Pipeline – Movies & YouTube Data

## 📌 Overview
This project demonstrates an end-to-end ETL process using **SQL Server** to load structured CSV data into staging tables using **BULK INSERT** and stored procedures.

The pipeline focuses on performance, logging, and error handling—common requirements in real-world data engineering and BI environments.

---

## 🛠️ Technologies Used
- Microsoft SQL Server
- T-SQL
- BULK INSERT
- Stored Procedures
- TRY / CATCH Error Handling

---

## 📂 Dataset
- Movies metadata dataset
- YouTube Trending Videos dataset (US)

> Only sample data is included in this repository. Full datasets can be sourced publicly.

---

## 🧱 Database Objects
### Tables
- `aMovies`
- `aYouTubeTrendingVideos`

### Stored Procedure
- `testdb.load_testdb`
  - Truncates staging tables
  - Loads CSV data using BULK INSERT
  - Tracks execution time
  - Handles runtime errors gracefully

---

## 🚀 How to Run
1. Create the tables using:
