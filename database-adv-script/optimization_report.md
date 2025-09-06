# Task 4 - Optimize Complex Queries

## Objective
Refactor complex SQL queries to improve performance, reduce execution time, and leverage indexes effectively.

## Initial Query
- Joined `bookings`, `users`, `properties`, and `payments`.
- Retrieved all columns.
- Checked execution plan using `EXPLAIN ANALYZE`.

## Identified Bottlenecks
- Retrieving all columns increased I/O.
- No filter resulted in full table scans on large tables.
- LEFT JOIN on `payments` table caused slower execution when many bookings exist.

## Optimization Steps
1. Selected only necessary columns.
2. Applied a date filter on `start_date` to reduce scanned rows.
3. Leveraged indexes on `bookings(user_id)`, `bookings(start_date)`, `users(id)`, `properties(id)`.

## Results
- Query execution time reduced significantly.
- EXPLAIN ANALYZE shows fewer rows scanned and faster retrieval.
- Optimized query can be used in production for reports and dashboards.

## Recommendations
- Continuously monitor query performance.
- Add more filters where appropriate.
- Use indexed columns in WHERE and JOIN conditions.
