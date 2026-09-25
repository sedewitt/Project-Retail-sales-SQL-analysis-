# Retail Sales SQL Analysis

## Project Overview

This project analyzes a retail sales dataset using SQL to answer business questions about sales performance, products, customers, regions, and payment methods.

The goal was to take raw transaction data and use SQL to turn it into organized information that could help identify sales patterns and business insights.

This project was completed using SQLite and focuses on SQL fundamentals such as filtering, sorting, aggregation, grouping, and business-oriented data analysis.

## Business Problem

A retail company has transaction data but needs to better understand its sales performance.

The analysis focuses on questions such as:

- How much revenue was generated?
- Which products generated the most revenue?
- Which products sold the most units?
- Which categories generated the most revenue?
- How much did individual customers spend?
- How are sales distributed across regions?
- Which payment methods are used most frequently?
- What patterns can be identified from the sales data?

## Dataset

The dataset contains **239 retail orders** and includes the following columns:

| Column | Description |
|---|---|
| `order_id` | Unique identifier for each order |
| `order_date` | Date the order was placed |
| `product` | Product purchased |
| `category` | Product category |
| `price` | Price of the product |
| `quantity` | Number of units purchased |
| `customer_id` | Customer identifier |
| `region` | Region associated with the order |
| `payment_method` | Payment method used |

The dataset is a synthetic retail sales dataset created for SQL analysis and portfolio practice.

## Tools Used

- SQL
- SQLite
- Visual Studio Code
- GitHub

## SQL Analysis

The project is organized into several SQL analysis sections:

### 1. Data Exploration

Explored the dataset to determine:

- Total number of orders
- Number of unique customers
- Product categories
- Regions
- Payment methods

### 2. Sales Analysis

Calculated:

- Total units sold
- Total revenue
- Average product price
- Highest-priced product
- Lowest-priced product

### 3. Product Analysis

Analyzed:

- Units sold by product
- Revenue by product
- Products exceeding specific revenue thresholds
- Revenue by product category
- Units sold by category

### 4. Customer Analysis

Analyzed:

- Orders per customer
- Total customer spending
- Customers exceeding spending thresholds
- Average order value by customer

### 5. Regional and Payment Analysis

Analyzed:

- Orders by region
- Revenue by region
- Units sold by region
- Orders by payment method
- Revenue by payment method
- Average order revenue by payment method

### 6. Combined Business Analysis

Used grouping, filtering, aggregation, and sorting to answer more complex business questions involving:

- Revenue thresholds
- Customer order frequency
- Regional sales volume
- Product performance
- Category revenue

## Key Findings

### Overall Sales

- **239 total orders**
- **360 total units sold**
- **$41,204.40 total revenue**
- **25 unique customers**
- Average product price of approximately **$235.59**

### Product Performance

The **Laptop** generated the most revenue at **$21,599.76**.

The **Stapler** sold the most units with **120 units sold**.

This demonstrates that the product with the highest sales volume was not necessarily the product generating the most revenue.

### Category Performance

**Electronics** generated the most category revenue at **$24,479.28**.

### Customer Spending

Four customers tied for the highest total spending:

- C006 — $4,499.95
- C011 — $4,499.95
- C016 — $4,499.95
- C021 — $4,499.95

### Regional Performance

Sales were evenly distributed across the four regions.

Each region generated:

- **$10,301.10 in revenue**
- **90 units sold**

### Payment Methods

**Cash** was the most frequently used payment method with **31 orders**.

**Debit Card** generated the most revenue among payment methods at **$11,149.13**.

## Project Structure

```text
Project-Retail-sales-SQL-analysis-/
│
├── data/
│   └── retail_sales.csv
│
├── sql/
│   ├── 01_data_exploration.sql
│   ├── 02_sales_analysis.sql
│   ├── 03_product_analysis.sql
│   ├── 04_customer_analysis.sql
│   ├── 05_regional_payment_analysis.sql
│   └── 06_combined_business_analysis.sql
│
├── analysis/
│   └── findings.md
│
└── README.md


## Conclusion

This project demonstrates how SQL can be used to analyze raw transaction data and answer practical business questions.

By querying and aggregating retail sales data, I was able to evaluate revenue, product performance, customer spending, regional sales, and payment methods.

The project provided hands-on experience working with a dataset from start to finish, including data exploration, SQL analysis, business-question development, and documenting analytical findings.
