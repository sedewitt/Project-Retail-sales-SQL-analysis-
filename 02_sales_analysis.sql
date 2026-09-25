-- Basic Sales Analysis
-- Overall sales and pricing metrics.


-- Question 6:
-- What is the total number of products/units sold?

SELECT SUM(quantity) AS total_units_sold
FROM retail_sales;


-- Question 7:
-- What is the total revenue generated from all orders?

SELECT SUM(price * quantity) AS total_revenue
FROM retail_sales;


-- Question 8:
-- What is the average product price?

SELECT AVG(price) AS average_product_price
FROM retail_sales;


-- Question 9:
-- What is the highest-priced product in the dataset?

SELECT product, price
FROM retail_sales
ORDER BY price DESC
LIMIT 1;


-- Question 10:
-- What is the lowest-priced product in the dataset?

SELECT product, price
FROM retail_sales
ORDER BY price ASC
LIMIT 1;
