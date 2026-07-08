# SQL Data Cleaning Project

## Introduction

Raw datasets often contain duplicate records, inconsistent formatting, missing values, and incorrect data types that can negatively impact analysis. This project focuses on cleaning and preparing a real-world layoffs dataset using SQL, transforming it into a reliable and analysis-ready dataset.

The cleaned dataset produced in this project serves as the foundation for the Exploratory Data Analysis project included in this repository.

## Skills Showcased

* **🧹 Data Cleaning:** Preparing raw data for reliable analysis.
* **🔁 Duplicate Removal:** Identifying and removing duplicate records using `ROW_NUMBER()` and Window Functions.
* **⚙️ Common Table Expressions (CTEs):** Simplifying complex data cleaning operations.
* **✏️ Data Standardization:** Cleaning inconsistent company names, industries, and country values.
* **📅 Date Transformation:** Converting text-based dates into SQL `DATE` format.
* **❌ Missing Value Handling:** Identifying, updating, and removing incomplete records where appropriate.
* **🗃️ Table Creation:** Creating staging tables to safely perform transformations without modifying the original dataset.
* **🛠 SQL Data Manipulation:** Using `INSERT`, `UPDATE`, `DELETE`, `ALTER TABLE`, and functions such as `TRIM()` to clean and reshape the dataset.

## Project Workflow

### Step 1: Raw Dataset

![Raw Layoffs Dataset](/Files%20and%20Images/raw%20data.png)

The project begins with a real-world layoffs dataset containing company information, industries, locations, funding stages, employee layoffs, and dates. Before meaningful analysis could be performed, the dataset required extensive cleaning to improve consistency, accuracy, and reliability.

### Step 2: Data Cleaning Process

A staging table is created from the original dataset so that all cleaning operations can be performed safely while preserving the raw data.

The cleaning workflow includes:

* Removing duplicate records using Window Functions (`ROW_NUMBER()`).
* Standardizing company names, industries, and country values.
* Removing unnecessary whitespace and inconsistent formatting.
* Converting text-based dates into SQL `DATE` format.
* Handling missing values by updating records where reliable information exists.
* Removing records containing insufficient analytical value.
* Dropping temporary helper columns used during the cleaning process.

### Step 3: Final Cleaned Dataset

![Cleaned Layoffs Dataset](/Files%20and%20Images/final%20cleaned%20data.png)

After completing the cleaning process, the dataset is transformed into a consistent, structured, and analysis-ready table. This cleaned dataset becomes the foundation for the Exploratory Data Analysis project, ensuring accurate aggregations, rankings, and business insights.

## Conclusion

This project demonstrates the essential data preparation process performed by data analysts before any meaningful analysis begins. By applying SQL data cleaning techniques, the original layoffs dataset is transformed into a consistent, reliable, and analysis-ready dataset that supports accurate business insights.
