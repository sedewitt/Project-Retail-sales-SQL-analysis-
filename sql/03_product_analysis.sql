-- Product Analysis
-- Revenue and unit sales by product and category.


-- Question 11:
-- How many units of each product were sold?

SELECT product,
       SUM(quantity) AS units_sold
FROM retail_sales
GROUP BY product
ORDER BY units_sold DESC;


-- Question 12:
-- How much revenue did each product generate?

SELECT product,
       SUM(price * quantity) AS total_revenue
FROM retail_sales
GROUP BY product
ORDER BY total_revenue DESC;


-- Question 13:
-- Which products generated more than $2,000 in revenue?

SELECT product,
       SUM(price * quantity) AS total_revenue
FROM retail_sales
GROUP BY product
HAVING SUM(price * quantity) > 2000
ORDER BY total_revenue DESC;


-- Question 14:
-- How much revenue did each product category generate?

SELECT category,
       SUM(price * quantity) AS total_revenue
FROM retail_sales
GROUP BY category
ORDER BY total_revenue DESC;


-- Question 15:
-- How many units were sold in each product category?

SELECT category,
       SUM(quantity) AS units_sold
FROM retail_sales
GROUP BY category
ORDER BY units_sold DESC;
