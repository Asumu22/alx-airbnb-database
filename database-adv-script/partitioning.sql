-- Task 5: Partition the Bookings Table by start_date

-- Step 1: Create a partitioned table (PostgreSQL syntax)
CREATE TABLE bookings_partitioned (
    id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
) PARTITION BY RANGE (start_date);

-- Step 2: Create partitions (e.g., yearly partitions)
CREATE TABLE bookings_2025 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');

CREATE TABLE bookings_2026 PARTITION OF bookings_partitioned
    FOR VALUES FROM ('2026-01-01') TO ('2027-01-01');

-- Step 3: Optional - Index on each partition for performance
CREATE INDEX idx_bookings_2025_start_date ON bookings_2025(start_date);
CREATE INDEX idx_bookings_2026_start_date ON bookings_2026(start_date);

-- Step 4: Insert data from the original table (example)
INSERT INTO bookings_partitioned (id, user_id, property_id, start_date, end_date, created_at, updated_at)
SELECT id, user_id, property_id, start_date, end_date, created_at, updated_at
FROM bookings;

-- Optional: Verify partitions
SELECT * FROM bookings_partitioned WHERE start_date BETWEEN '2025-01-01' AND '2025-12-31';
