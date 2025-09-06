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

```sql
SELECT 
    p.id AS property_id,
    p.title AS property_title
FROM properties p
WHERE (
    SELECT AVG(r.rating)
    FROM reviews r
    WHERE r.property_id = p.id
) > 4.0;

# Task 2: Aggregations and Window Functions

This task demonstrates the use of **aggregation functions** and **window functions** in SQL to analyze the Airbnb dataset.

## Queries Implemented

### 1. Aggregation
Find the **total number of bookings** made by each user.

```sql
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    COUNT(b.id) AS total_bookings
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
GROUP BY u.id, u.name
ORDER BY total_bookings DESC;
