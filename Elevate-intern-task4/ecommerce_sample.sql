-- Ecommerce sample SQL for Task 4

PRAGMA foreign_keys = ON;

-- Drop tables if they exist
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS customers;

-- Create Customers Table
CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name TEXT,
    country TEXT
);

-- Insert sample customers
INSERT OR IGNORE INTO customers (customer_id, customer_name, country) VALUES
    (1, 'John Doe', 'India'),
    (2, 'Alice Smith', 'USA'),
    (3, 'Ravi Kumar', 'India'),
    (4, 'Sophia Lee', 'Canada');

-- Create Products Table
CREATE TABLE products (
    product_id INTEGER PRIMARY KEY,
    product_name TEXT,
    price REAL
);

-- Insert sample products
INSERT OR IGNORE INTO products (product_id, product_name, price) VALUES
    (101, 'Laptop', 55000.00),
    (102, 'Smartphone', 25000.00),
    (103, 'Headphones', 2000.00),
    (104, 'Keyboard', 1200.00);

-- Create Orders Table
CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date TEXT,
    total_amount REAL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Insert sample orders
INSERT OR IGNORE INTO orders (order_id, customer_id, order_date, total_amount) VALUES
    (1001, 1, '2025-09-01', 57000.00),
    (1002, 2, '2025-09-02', 25000.00),
    (1003, 3, '2025-09-03', 2000.00),
    (1004, 1, '2025-09-04', 1200.00);

-- Create Order Items Table
CREATE TABLE order_items (
    item_id INTEGER PRIMARY KEY,
    order_id INTEGER,
    product_id INTEGER,
    quantity INTEGER,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert sample order items
INSERT OR IGNORE INTO order_items (item_id, order_id, product_id, quantity) VALUES
    (1, 1001, 101, 1),
    (2, 1001, 103, 1),
    (3, 1002, 102, 1),
    (4, 1003, 103, 1),
    (5, 1004, 104, 1);

-- You can try the following queries after importing:
-- SELECT * FROM customers;
-- SELECT * FROM products;
-- SELECT o.order_id, c.customer_name, o.total_amount 
-- FROM orders o 
-- JOIN customers c ON o.customer_id = c.customer_id;
-- SELECT c.customer_name, SUM(o.total_amount) AS total_revenue 
-- FROM orders o 
-- JOIN customers c ON o.customer_id = c.customer_id 
-- GROUP BY c.customer_name 
-- ORDER BY total_revenue DESC;