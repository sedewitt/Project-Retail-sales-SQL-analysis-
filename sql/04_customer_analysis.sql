-- Customer Analysis
-- Order volume and spending by customer.


-- Question 16:
-- How many orders did each customer place?

SELECT customer_id,
       COUNT(*) AS total_orders
FROM retail_sales
GROUP BY customer_id
ORDER BY total_orders DESC;


-- Question 17:
-- How much money did each customer spend?

SELECT customer_id,
       SUM(price * quantity) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC;


-- Question 18:
-- Which customers spent more than $2,000?

SELECT customer_id,
       SUM(price * quantity) AS total_spent
FROM retail_sales
GROUP BY customer_id
HAVING SUM(price * quantity) > 2000
ORDER BY total_spent DESC;


-- Question 19:
-- What is the average amount spent per order for each customer?

SELECT customer_id,
       AVG(price * quantity) AS average_order_value
FROM retail_sales
GROUP BY customer_id
ORDER BY average_order_value DESC;
