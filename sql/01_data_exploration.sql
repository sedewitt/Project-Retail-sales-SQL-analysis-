-- Data Exploration
-- Basic queries used to understand the retail sales dataset.


-- Question 1:
-- How many total orders are in the dataset?

SELECT COUNT(*) AS total_orders
FROM retail_sales;


-- Question 2:
-- How many different customers are in the dataset?

SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM retail_sales;


-- Question 3:
-- What are all the different product categories?

SELECT DISTINCT category
FROM retail_sales;


-- Question 4:
-- What are all the different regions represented in the dataset?

SELECT DISTINCT region
FROM retail_sales;


-- Question 5:
-- What are all the different payment methods customers used?

SELECT DISTINCT payment_method
FROM retail_sales;
