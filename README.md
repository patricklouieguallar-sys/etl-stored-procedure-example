# SQL Server ETL Pipeline – Movies & YouTube Data

## 📌 Overview
This project showcases an end-to-end ETL pipeline built in **SQL Server** to load structured CSV datasets into staging tables using **BULK INSERT** and T-SQL stored procedures.

The solution emphasizes performance, execution monitoring, and defensive error handling—patterns commonly used in production data warehousing and BI environments.

---

## 🛠️ Technologies Used
- Microsoft SQL Server
- T-SQL
- BULK INSERT
- Stored Procedures
- TRY / CATCH Error Handling

---

## 📂 Datasets
- Movies metadata dataset
- YouTube Trending Videos dataset (US region)

> Only sample data is included in this repository. Full datasets are publicly available and can be sourced independently.

---

## 🧱 Database Objects

### Tables
- `aMovies` – Stores movie metadata including budget, revenue, genres, and ratings
- `aYouTubeTrendingVideos` – Stores trending YouTube video metrics and metadata

### Stored Procedure
- `testdb.load_testdb`
  - Truncates staging tables prior to load
  - Ingests CSV files using high-performance BULK INSERT
  - Captures execution start and end times
  - Implements TRY/CATCH error handling for load failures

---
