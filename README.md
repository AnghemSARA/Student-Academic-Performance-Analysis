# Student Academic Performance Analysis

This project presents a student academic performance analysis using SQL Server and Power BI.

The goal is to analyze student performance, identify academic trends, and build an interactive dashboard that summarizes key indicators such as pass rate, fail rate, average final grade, and performance levels.

## Project Workflow

1. Import the original CSV dataset into SQL Server.
2. Perform data quality checks using SQL.
3. Create a clean SQL view for analysis.
4. Connect Power BI to the SQL Server view.
5. Build an interactive dashboard with KPI cards, charts, and slicers.

## Tools Used

- SQL Server
- SQL Server Management Studio
- Power BI Desktop
- DAX
- GitHub

## Dataset

The dataset used is the Student Performance Dataset from the UCI Machine Learning Repository.

Source: https://archive.ics.uci.edu/dataset/320/student+performance

## Dashboard Preview

![Dashboard Overview](images/dashboard_overview.png)

## Key Indicators

- Total Students: 395
- Average Final Grade: 10.42
- Passed Students: 265
- Failed Students: 130
- Pass Rate: 67.09%
- Fail Rate: 32.91%

## Dashboard Features

The dashboard includes:

- KPI cards
- Pass vs Fail distribution
- Students by performance level
- Average final grade by study time
- Interactive filters for school, gender, address, and performance level

## Repository Structure

```text
Student-Academic-Performance-Analysis/
│
├── data/
│   └── raw/
│       ├── README.md
│       └── student-mat.csv
│
├── sql/
│   ├── create_database.sql
│   ├── create_views.sql
│   ├── data_quality_checks.sql
│   └── analysis_queries.sql
│
├── powerbi/
│   ├── README.md
│   └── Student_Performance_Dashboard.pbix
│
├── images/
│   ├── README.md
│   └── dashboard_overview.png
│
└── README.md
