
-- Total number of bookings per user
SELECT 
    u.id AS user_id,
    u.first_name,
    u.last_name,
    COUNT(b.id) AS total_bookings
FROM 
    Users u
LEFT JOIN 
    Booking b ON u.id = b.user_id
GROUP BY 
    u.id, u.first_name, u.last_name
ORDER BY 
    total_bookings DESC;

-- Ranking properties based on total bookings using window functions
WITH property_bookings AS (
    SELECT 
        p.id AS property_id,
        p.name,
        COUNT(b.id) AS total_bookings
    FROM 
        Property p
    LEFT JOIN 
        Booking b ON p.id = b.property_id
    GROUP BY 
        p.id, p.name
)
SELECT 
    property_id,
    name,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_number_rank,
    RANK() OVER (ORDER BY total_bookings DESC) AS rank_with_ties
FROM 
    property_bookings
ORDER BY 
    total_bookings DESC;
