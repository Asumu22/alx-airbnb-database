-- 1. Non-correlated subquery: Find properties with average rating > 4.0
SELECT 
    p.id AS property_id,
    p.title AS property_title
FROM properties p
WHERE (
    SELECT AVG(r.rating)
    FROM reviews r
    WHERE r.property_id = p.id
) > 4.0;


-- 2. Correlated subquery: Find users who have made more than 3 bookings
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.id
) > 3;
