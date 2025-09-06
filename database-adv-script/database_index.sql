
-- Indexes for Airbnb database optimization

-- 1. Users table
CREATE INDEX idx_users_email ON users(email);

--  Check query performance before and after index
EXPLAIN SELECT * FROM users WHERE email = 'example@email.com';
ANALYZE SELECT * FROM users WHERE email = 'example@email.com';

-- 2. Bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Check query performance
EXPLAIN SELECT * FROM bookings WHERE user_id = 1;
ANALYZE SELECT * FROM bookings WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';

-- 3. Properties table
CREATE INDEX idx_properties_location ON properties(location);
CREATE INDEX idx_properties_host_id ON properties(host_id);

-- Check query performance
EXPLAIN SELECT * FROM properties WHERE location = 'New York';
ANALYZE SELECT * FROM properties WHERE host_id = 5;
