# Task 4 - Optimize Complex Queries

## Objective
The goal of this task is to optimize a complex query that retrieves bookings along with user, property, and payment details. The query is analyzed for performance issues and refactored to improve execution times.

## Initial Query
The initial query retrieves all bookings with associated user, property, and payment details, using an `AND` condition to filter by date range:

```sql
SELECT 
    b.id AS booking_id,
    b.start_date,
    b.end_date,
    u.id AS user_id,
    u.name AS user_name,
    p.id AS property_id,
    p.title AS property_title,
    pay.id AS payment_id,
    pay.amount AS payment_amount
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id
WHERE b.start_date >= '2025-01-01'
AND b.end_date <= '2025-12-31';
