-- 1. INNER JOIN: Retrieve all bookings with user details
SELECT 
    b.id AS booking_id,
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email,
    b.property_id,
    b.start_date,
    b.end_date
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;


-- 2. LEFT JOIN: Retrieve all properties and their reviews (including those without reviews)
SELECT 
    p.id AS property_id,
    p.title AS property_title,
    r.id AS review_id,
    r.rating,
    r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;


-- 3. FULL OUTER JOIN: Retrieve all users and their bookings
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    b.id AS booking_id,
    b.property_id,
    b.start_date,
    b.end_date
FROM users u
FULL OUTER JOIN bookings b ON u.id = b.user_id;
