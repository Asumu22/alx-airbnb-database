# Task 0 - Complex Queries with Joins

This task demonstrates how to use different types of SQL joins in the Airbnb-like database.

### Objectives
- Write SQL queries using `INNER JOIN`, `LEFT JOIN`, and `FULL OUTER JOIN`.
- Show how data can be combined across multiple tables.

### Queries Implemented
1. **INNER JOIN**: Retrieve all bookings along with the associated user details.
2. **LEFT JOIN**: Retrieve all properties with their reviews, including properties that have no reviews.
3. **FULL OUTER JOIN**: Retrieve all users and their bookings, ensuring unmatched users and bookings are also included.

### Files
- [`joins_queries.sql`](./joins_queries.sql): Contains all the SQL queries for this task.

# Task 1: Practice Subqueries

This task demonstrates the use of **correlated** and **non-correlated subqueries** to analyze the Airbnb database.

## Queries Implemented

### 1. Non-correlated Subquery
Find all properties where the **average rating** is greater than 4.0.

# Task 2: Aggregations and Window Functions

This task demonstrates the use of **aggregation functions** and **window functions** in SQL to analyze the Airbnb dataset.

## Queries Implemented

### 1. Aggregation
Find the **total number of bookings** made by each user.

# Task 3 - Implement Indexes for Optimization

This task demonstrates how to create indexes in the Airbnb database to optimize query performance.

### Objectives
- Identify high-usage columns in key tables.
- Create appropriate indexes to improve query execution.
- Measure performance improvements.

### Queries Implemented
- Index on `users(email)` to speed up lookups by email.
- Index on `bookings(user_id)` and `bookings(start_date)` for faster booking queries.
- Index on `properties(location)` and `properties(host_id)` to optimize property searches and host queries.


Use `EXPLAIN` or `ANALYZE` on queries before and after adding indexes to verify performance improvement.

### Files
- [`database_index.sql`](./database_index.sql)
