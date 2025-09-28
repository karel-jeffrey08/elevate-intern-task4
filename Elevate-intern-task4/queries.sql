-- Select customers from India and order products by price
SELECT *
FROM customers
WHERE country = 'India';

SELECT *
FROM products
ORDER BY price DESC;

-- Join orders with customers to get order details
SELECT o.order_id,
       c.customer_name,
       o.order_date,
       o.total_amount
FROM orders o
INNER JOIN customers c
    ON o.customer_id = c.customer_id;

-- Left join products with order items to see quantities ordered
SELECT p.product_name,
       oi.quantity
FROM products p
LEFT JOIN order_items oi
    ON p.product_id = oi.product_id;

-- Group orders by customer to calculate total spending
SELECT c.customer_name,
       SUM(o.total_amount) AS total_spent
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- Calculate average order value
SELECT AVG(total_amount) AS avg_order_value
FROM orders;

-- Subquery: Customers who spent more than average
SELECT customer_name,
       total_spent
FROM (
    SELECT c.customer_name,
           SUM(o.total_amount) AS total_spent
    FROM orders o
    JOIN customers c
        ON o.customer_id = c.customer_id
    GROUP BY c.customer_name
) AS totals
WHERE total_spent > (
    SELECT AVG(total_amount)
    FROM orders
);

-- Create a view of top 3 customers by spending (safe to re-run)
DROP VIEW IF EXISTS top_customers;

CREATE VIEW top_customers AS
SELECT c.customer_name,
       SUM(o.total_amount) AS total_spent
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 3;

-- View the top customers
SELECT *
FROM top_customers;

-- Create an index on orders.customer_id (safe to re-run)
CREATE INDEX IF NOT EXISTS idx_customer_id
ON orders(customer_id);