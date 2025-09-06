# Task 6 - Monitor and Refine Database Performance

## Objective
Continuously monitor and refine the database performance by analyzing query execution plans and making schema adjustments.

## Implementation Steps

1. **Monitor Query Performance**
   - Used `EXPLAIN ANALYZE` to analyze the execution plan of frequently used queries.
   - Example: Fetch all bookings with user, property, and payment details.

```sql
EXPLAIN ANALYZE
SELECT b.id AS booking_id,
       u.id AS user_id,
       u.name AS user_name,
       p.id AS property_id,
       p.title AS property_title,
       pay.id AS payment_id,
       pay.amount AS payment_amount
FROM bookings_partitioned b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id
WHERE b.start_date BETWEEN '2025-01-01' AND '2025-12-31';
