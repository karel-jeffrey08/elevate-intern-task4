# SQL Task 4 – Ecommerce Data Analysis

## Objective
The objective of this task is to **use SQL queries to extract and analyze data** from an ecommerce database.  
The task covers: `SELECT`, `WHERE`, `ORDER BY`, `JOINs`, `GROUP BY`, `aggregate functions`, `subqueries`, `views`, and `index optimization`.

## Dataset
We created a sample ecommerce database with the following tables:

- **customers** – customer_id, customer_name, country  
- **products** – product_id, product_name, price  
- **orders** – order_id, customer_id, order_date, total_amount  
- **order_items** – item_id, order_id, product_id, quantity  

The database file is `ecommerce.db`.

---

## SQL Queries
All SQL queries are included in `ecommerce_sample.sql`, which can be run safely multiple times.  
The queries cover:

1. SELECT, WHERE, ORDER BY  
2. INNER JOIN  
3. LEFT JOIN  
4. GROUP BY with SUM and AVG  
5. Subqueries (e.g., customers who spent above average)  
6. Views (`top_customers`)  
7. Index creation for optimization  

---

## Screenshots
Screenshots of database and query results are available in the `screenshots/` folder.  
| No | Screenshot | Description |
|----|------------|-------------|
| 0  | 0_database_structure.png | Shows all 4 tables in the database structure |
| 1  | 1_customers_data.png | Sample data from customers table |
| 2  | 2_products_data.png | Sample data from products table |
| 3  | 3_orders_data.png | Sample data from orders table |
| 4  | 4_order_items_data.png | Sample data from order_items table |
| 5  | 5_select_where.png | SELECT + WHERE + ORDER BY queries |
| 6  | 6_inner_join.png | INNER JOIN query results |
| 7  | 7_left_join.png | LEFT JOIN query results |
| 8  | 8_group_by.png | GROUP BY with SUM/AVG results |
| 9  | 9_subquery.png | Subquery results (above average customers) |
| 10 | 10_top_customers.png | Result of `SELECT * FROM top_customers` view |
| 11 | 11_index.png | Index creation execution message (optional) |

---

## How to Run
1. Open **DB Browser for SQLite**.  
2. Open the database file `ecommerce.db`.  
3. Go to **Execute SQL** tab and open `ecommerce_human_safe.sql`.  
4. Click **Execute All** to run the queries safely.  
5. Use the **Browse Data** tab to check table contents and query results.

---
