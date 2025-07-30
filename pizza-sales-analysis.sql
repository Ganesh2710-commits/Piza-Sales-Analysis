
-- 🍕 Pizza Sales Analysis SQL Script

-- 1. Total number of orders
SELECT COUNT(DISTINCT order_id) AS total_orders FROM orders;

-- 2. Total revenue
SELECT SUM(price * quantity) AS total_revenue FROM order_details;

-- 3. Highest priced pizza
SELECT name, price FROM pizzas ORDER BY price DESC LIMIT 1;

-- 4. Most common pizza size
SELECT size, COUNT(*) AS count FROM pizzas GROUP BY size ORDER BY count DESC LIMIT 1;

-- 5. Top 5 most ordered pizza types
SELECT pizza_id, SUM(quantity) AS total_quantity
FROM order_details
GROUP BY pizza_id
ORDER BY total_quantity DESC
LIMIT 5;

-- Additional queries for intermediate and advanced analysis would follow
