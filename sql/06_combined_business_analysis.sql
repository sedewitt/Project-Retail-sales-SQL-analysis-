-- Combined Analysis and Final Business Questions


-- Question 27:
-- For each category, calculate total revenue
-- and average product price.

SELECT category,
       SUM(price * quantity) AS total_revenue,
       AVG(price) AS average_product_price
FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC;


-- Question 28:
-- For each region, calculate total revenue and
-- total units sold, but only include regions
-- that sold more than 50 units.

SELECT region,
       SUM(price * quantity) AS total_revenue,
       SUM(quantity) AS total_units_sold
FROM retail_sales
GROUP BY region
HAVING SUM(quantity) > 50
ORDER BY total_revenue DESC;


-- Question 29:
-- For each product, calculate total revenue and
-- total units sold, and only show products that
-- generated more than $1,000.

SELECT product,
       SUM(price * quantity) AS total_revenue,
       SUM(quantity) AS total_units_sold
FROM retail_sales
GROUP BY product
HAVING SUM(price * quantity) > 1000
ORDER BY total_revenue DESC;


-- Question 30:
-- For each customer, calculate total spending
-- and number of orders, and only show customers
-- who placed at least 5 orders.

SELECT customer_id,
       SUM(price * quantity) AS total_spent,
       COUNT(*) AS total_orders
FROM retail_sales
GROUP BY customer_id
HAVING COUNT(*) >= 5
ORDER BY total_spent DESC;


-- Question 31:
-- For each category, calculate total revenue
-- and only show categories with revenue above
-- $5,000, sorted highest to lowest.

SELECT category,
       SUM(price * quantity) AS total_revenue
FROM retail_sales
GROUP BY category
HAVING SUM(price * quantity) > 5000
ORDER BY total_revenue DESC;


-- ============================================
-- FINAL BUSINESS QUESTIONS
-- ============================================


-- Question 32:
-- Which product generated the most revenue?

SELECT product,
       SUM(price * quantity) AS total_revenue
FROM retail_sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 1;


-- Question 33:
-- Which category generated the most revenue?

SELECT category,
       SUM(price * quantity) AS total_revenue
FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC
LIMIT 1;


-- Question 34:
-- Which region generated the most revenue?

SELECT region,
       SUM(price * quantity) AS total_revenue
FROM retail_sales
GROUP BY region
ORDER BY total_revenue DESC
LIMIT 1;


-- Question 35:
-- Which payment method was used for the most orders?

SELECT payment_method,
       COUNT(*) AS total_orders
FROM retail_sales
GROUP BY payment_method
ORDER BY total_orders DESC
LIMIT 1;


-- Question 36:
-- Which customer spent the most money?

SELECT customer_id,
       SUM(price * quantity) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 1;


-- Question 37:
-- Which product sold the most units?

SELECT product,
       SUM(quantity) AS total_units_sold
FROM retail_sales
GROUP BY product
ORDER BY total_units_sold DESC
LIMIT 1;


-- Question 38:
-- What are the top 5 products by revenue?

SELECT product,
       SUM(price * quantity) AS total_revenue
FROM retail_sales
GROUP BY product
ORDER BY total_revenue DESC
LIMIT 5;


-- Question 39:
-- What are the top 5 customers by total spending?

SELECT customer_id,
       SUM(price * quantity) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;


-- Question 40:
-- What are the top 3 regions by revenue?

SELECT region,
       SUM(price * quantity) AS total_revenue
FROM retail_sales
GROUP BY region
ORDER BY total_revenue DESC
LIMIT 3;
