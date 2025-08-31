-- ==========================================
-- Seed script for ALX Airbnb Database
-- ==========================================

-- ==========================
-- Users
-- ==========================
INSERT INTO "User" (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('11111111-1111-1111-1111-111111111111', 'Alice', 'Johnson', 'alice@example.com', 'hashedpassword1', '1234567890', 'guest'),
  ('22222222-2222-2222-2222-222222222222', 'Bob', 'Smith', 'bob@example.com', 'hashedpassword2', '0987654321', 'host'),
  ('33333333-3333-3333-3333-333333333333', 'Charlie', 'Brown', 'charlie@example.com', 'hashedpassword3', '5555555555', 'admin');

-- ==========================
-- Properties
-- ==========================
INSERT INTO "Property" (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '22222222-2222-2222-2222-222222222222', 'Cozy Apartment', 'A nice cozy apartment in the city center', 'New York', 120.00),
  ('aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '22222222-2222-2222-2222-222222222222', 'Beach House', 'Beautiful beach house with ocean view', 'Miami', 250.00);

-- ==========================
-- Bookings
-- ==========================
INSERT INTO "Booking" (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', '2025-09-05', '2025-09-10', 600.00, 'confirmed'),
  ('bbbbbbb2-bbbb-bbbb-bbbb-bbbbbbbbbbb2', 'aaaaaaa2-aaaa-aaaa-aaaa-aaaaaaaaaaa2', '11111111-1111-1111-1111-111111111111', '2025-10-01', '2025-10-05', 1000.00, 'pending');

-- ==========================
-- Payments
-- ==========================
INSERT INTO "Payment" (payment_id, booking_id, amount, payment_method)
VALUES
  ('ccccccc1-cccc-cccc-cccc-ccccccccccc1', 'bbbbbbb1-bbbb-bbbb-bbbb-bbbbbbbbbbb1', 600.00, 'credit_card');

-- ==========================
-- Reviews
-- ==========================
INSERT INTO "Review" (review_id, property_id, user_id, rating, comment)
VALUES
  ('ddddddd1-dddd-dddd-dddd-ddddddddddd1', 'aaaaaaa1-aaaa-aaaa-aaaa-aaaaaaaaaaa1', '11111111-1111-1111-1111-111111111111', 5, 'Loved the apartment! Very clean and well-located.');

-- ==========================
-- Messages
-- ==========================
INSERT INTO "Message" (message_id, sender_id, recipient_id, message_body)
VALUES
  ('eeeeeee1-eeee-eeee-eeee-eeeeeeeeeee1', '11111111-1111-1111-1111-111111111111', '22222222-2222-2222-2222-222222222222', 'Hello Bob, I would like to book your apartment next month.'),
  ('eeeeeee2-eeee-eeee-eeee-eeeeeeeeeee2', '22222222-2222-2222-2222-222222222222', '11111111-1111-1111-1111-111111111111', 'Hi Alice! The apartment is available. Looking forward to hosting you.');
