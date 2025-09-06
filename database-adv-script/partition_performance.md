# Task 5 - Partitioning Large Tables

## Objective
Partition the `bookings` table by `start_date` to improve query performance for large datasets.

## Implementation
- Created a new table `bookings_partitioned` partitioned by `start_date` using **range partitioning**.
- Created yearly partitions: `bookings_2025`, `bookings_2026`.
- Added indexes on the `start_date` column for each partition to optimize queries.
- Migrated existing data from `bookings` into the partitioned table.

## Test Query
```sql
SELECT * 
FROM bookings_partitioned
WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';
