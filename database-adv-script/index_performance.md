# Task 3 - Implement Indexes for Optimization

This task demonstrates the creation of indexes on high-usage columns to improve query performance in the Airbnb database.

## Indexes Added

1. **Users Table**
   - Column: `email`
   - Index: `idx_users_email`

2. **Bookings Table**
   - Columns: `user_id`, `start_date`
   - Indexes: `idx_bookings_user_id`, `idx_bookings_start_date`

3. **Properties Table**
   - Columns: `location`, `host_id`
   - Indexes: `idx_properties_location`, `idx_properties_host_id`

## Performance Testing

We measured query performance **before and after adding indexes** using `EXPLAIN ANALYZE`.  

- Queries on `users(email)` became faster when filtering by email.  
- Queries on `bookings(user_id)` and `bookings(start_date)` showed reduced execution times.  
- Queries on `properties(location)` and `properties(host_id)` returned results more efficiently.  

**Optional:** Continuously monitor these queries to ensure that indexes remain effective as data grows.
