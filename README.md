# SQL Data Cleaning & Exploratory Data Analysis Portfolio 📊

Welcome! This repository showcases a complete SQL data analytics workflow using a real-world layoffs dataset. Rather than jumping directly into analysis, this portfolio demonstrates the full process—from cleaning and preparing raw data to performing exploratory data analysis (EDA) to uncover meaningful business insights.

The projects are organized in the same sequence as a real-world data analytics pipeline, where the cleaned dataset produced in Project 1 becomes the foundation for the analysis performed in Project 2.

# Featured Projects

Explore the projects below. Each project contains its own dedicated README with additional details about the objectives, SQL techniques used, and key outcomes.

---

## 🧹 SQL Data Cleaning Project

![Data Cleaning](/Files%20and%20Images/final%20cleaned%20data.png)

Using the raw layoffs dataset, this project focuses on preparing the data for analysis by identifying duplicate records, standardizing inconsistent values, handling missing data, converting data types, and producing a clean dataset suitable for downstream analytics.

**Key SQL Skills Utilized:**

* 🧹 Data Cleaning & Preparation
* 🔁 Duplicate Detection & Removal
* 🪟 Window Functions (`ROW_NUMBER`)
* ⚙️ Common Table Expressions (CTEs)
* ✏️ Data Standardization
* 📅 Date Formatting & Data Type Conversion
* ❌ Handling Missing & Null Values
* 🗃️ Table Creation & Data Transformation

💡 [**View Full Project 1 Details (README)**](./PROJECT_1_DATA_CLEANING/README.md)

---

## 📈 SQL Exploratory Data Analysis Project

![EDA Project](/Files%20and%20Images/exploreproject.png)

Building upon the cleaned dataset from Project 1, this project explores global layoff trends using SQL. Through aggregations, ranking, rolling totals, and window functions, it uncovers patterns across companies, industries, countries, funding stages, and time.

**Key SQL Skills Utilized:**

* 📊 Exploratory Data Analysis (EDA)
* 📈 Aggregate Functions
* 🪟 Advanced Window Functions
* 🏆 Ranking with `DENSE_RANK()`
* ⚙️ Common Table Expressions (CTEs)
* 📅 Time-Series Analysis
* 📉 Rolling Totals
* 🔍 Business Insight Generation

💡 [**View Full Project 2 Details (README)**](./PROJECT_2_DATA_ANALYZING/readme.md)

---

## 📂 Dataset

The repository also includes the original **Layoffs Dataset**, which serves as the starting point for both projects.

Workflow:

```
Raw Dataset (CSV)
        ↓
SQL Data Cleaning
        ↓
Cleaned Dataset
        ↓
Exploratory Data Analysis
```

This demonstrates a complete analytics pipeline commonly used by Data Analysts and Business Intelligence professionals.

---

## About This Portfolio

Each project contains its own dedicated `README.md` with detailed explanations of the SQL concepts used, project objectives, methodology, and analytical findings.

Together, these projects demonstrate the complete SQL workflow—from transforming messy, real-world data into a clean analytical dataset, to extracting actionable business insights using advanced SQL techniques.
