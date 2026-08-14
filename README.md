# Retail Sales Data Analysis Using PostgreSQL

## Project Overview

This project analyzes retail sales data using PostgreSQL to explore sales performance, customer behavior, product categories, purchasing patterns, and sales trends.

The project includes data cleaning, exploratory analysis, and business-oriented SQL queries to generate useful insights from retail transaction data.

## Database

The project uses PostgreSQL with the database:

`Sales_Proj_PG`

The main table used for the analysis is:

`retail_sales`

The table contains transaction, customer, product category, quantity, pricing, cost, and sales information.

## Dataset

The dataset contains the following information:

- `transactions_id` — Unique transaction identifier
- `sale_date` — Date of the sale
- `sale_time` — Time of the sale
- `customer_id` — Customer identifier
- `gender` — Customer gender
- `age` — Customer age
- `category` — Product category
- `quantity` — Quantity sold
- `price_per_unit` — Price per unit
- `cogs` — Cost of goods sold
- `total_sale` — Total sale amount

## Data Cleaning

The following data cleaning steps were performed:

- Checked for missing transaction IDs
- Checked for missing sale dates and times
- Checked for missing customer and product information
- Checked for missing quantity, cost, and sales values
- Removed records containing required null values

## Data Exploration

The project explored the dataset by:

- Counting total sales transactions
- Counting customers
- Counting unique customers
- Identifying distinct product categories
- Examining sample transaction records

## Business Analysis

### 1. Sales on a Specific Date

Retrieved all transactions made on `2022-11-05`.

### 2. Clothing Sales

Analyzed Clothing category transactions during November 2022 based on quantity sold.

### 3. Category Sales

Calculated total sales for each product category.

### 4. Beauty Customer Analysis

Calculated the average age of customers purchasing products from the Beauty category.

### 5. High-Value Transactions

Identified transactions where total sales exceeded 1000.

### 6. Gender and Category Analysis

Calculated the number of transactions for each gender within each product category.

### 7. Best-Selling Month by Year

Calculated the average monthly sale and identified the best-selling month for each year using ranking.

### 8. Top Customers

Identified the top 5 customers based on total sales.

### 9. Unique Customers by Category

Calculated the number of unique customers for each product category.

### 10. Sales Shift Analysis

Classified transactions into:

- `Morning` — Before 12 PM
- `Afternoon` — 12 PM to 5 PM
- `Evening` — After 5 PM

Then calculated the number of orders in each shift.

## SQL Concepts Used

- `CREATE TABLE`
- `SELECT`
- `WHERE`
- `DELETE`
- `GROUP BY`
- `ORDER BY`
- `LIMIT`
- `DISTINCT`
- `COUNT()`
- `SUM()`
- `AVG()`
- `EXTRACT()`
- `TO_CHAR()`
- `CASE WHEN`
- Common Table Expressions (CTEs)
- Window Functions
- `RANK()`
- `PARTITION BY`
- Aggregate Functions
- Data Cleaning
- Data Aggregation

## Key Skills Demonstrated

- PostgreSQL Data Analysis
- Data Cleaning
- Retail Sales Analysis
- Customer Analysis
- Sales Performance Analysis
- Category Analysis
- Time-Based Analysis
- Customer Segmentation
- Window Functions
- Business-Oriented Data Analysis

## Project Files

- `new 4th pg project.sql` — PostgreSQL queries used for data cleaning, exploration, and retail sales analysis
- `SQL - Retail Sales Analysis_utf  (1).csv` — Dataset used for the analysis

## Project Structure

```text
retail-sales-sql-analysis/
│
├── README.md
├── new 4th pg project.sql
└── SQL - Retail Sales Analysis_utf  (1).csv
