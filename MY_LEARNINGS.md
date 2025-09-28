# My Learnings – SQL Task 4 (Ecommerce Data Analysis)

## 1. Understanding Database Schema
- Learned how to design and create **relational tables** (customers, products, orders, order_items).
- Used **primary keys** and **foreign keys** to maintain relationships between tables.
- Understood the importance of **PRAGMA foreign_keys = ON** in SQLite to enforce referential integrity.

## 2. Writing SQL Queries
- Practiced **SELECT**, **WHERE**, **ORDER BY** to filter and sort data.
- Used **INNER JOIN** to combine data from multiple tables and get meaningful results.
- Learned how **LEFT JOIN** helps retain unmatched rows from one table.

## 3. Aggregate Functions & Grouping
- Applied **SUM** and **AVG** to calculate total and average order amounts.
- Learned **GROUP BY** to group data by customer and get per-customer statistics.
- Used **ORDER BY DESC** to find top-spending customers.

## 4. Subqueries
- Practiced **subqueries** to filter results based on aggregated data (e.g., customers who spent above average).
- Understood the difference between **WHERE** (row-level filtering) and **HAVING** (group-level filtering).

## 5. Views & Indexing
- Created a **view** (`top_customers`) to save frequently used queries and simplify future analysis.
- Created an **index** on `orders.customer_id` to optimize query performance for joins and lookups.

## 6. Best Practices Learned
- Used `DROP TABLE IF EXISTS` and `INSERT OR IGNORE` to make scripts safe to re-run.
- Learned to organize queries logically and write clean, readable SQL code with comments.
- Took structured screenshots for documentation and submission.

## 7. GitHub Workflow
- Learned how to create a proper folder structure for SQL projects.
- Added **README.md** to explain project steps and **screenshots/** folder for clarity.
- Learned how to push everything to GitHub as a professional project.

---

### Key Takeaways
This task improved my **SQL fundamentals**, my ability to work with **realistic datasets**, and my skill in documenting work for others to understand.  
It also helped me understand **query optimization** and **best practices** for database setup and reusability.
