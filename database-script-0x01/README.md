# Airbnb Database Schema (DDL)

## Overview

This project focuses on designing the database schema for an Airbnb-like application. The schema is based on the normalized database structure (3NF) and incorporates all entities, relationships, and constraints required to maintain data integrity and scalability.

The schema includes tables for:

- **User** – stores information about guests, hosts, and admins.  
- **Property** – contains details about properties listed by hosts.  
- **Booking** – manages bookings made by users.  
- **Payment** – records payments associated with bookings.  
- **Review** – stores reviews and ratings submitted by users for properties.  
- **Message** – facilitates communication between users.

---

## Design Goals

1. **Data Integrity:** Ensure that relationships between entities are maintained through foreign keys and constraints.  
2. **Scalability:** Structure tables to accommodate a growing number of users, properties, and transactions.  
3. **Performance:** Index frequently queried columns to optimize database queries.  
4. **Normalization:** Minimize redundancy and improve consistency by adhering to the third normal form (3NF).  

---

## Tables and Key Constraints

### User
- `user_id` (Primary Key, UUID)  
- `email` (Unique, NOT NULL)  
- `role` ENUM('guest', 'host', 'admin')  
- Stores all user-related information including authentication data.

### Property
- `property_id` (Primary Key, UUID)  
- `host_id` (Foreign Key → User.user_id)  
- Contains property details such as name, description, location, and pricing.

### Booking
- `booking_id` (Primary Key, UUID)  
- `property_id` (Foreign Key → Property.property_id)  
- `user_id` (Foreign Key → User.user_id)  
- Tracks booking dates, total price, and booking status (pending, confirmed, canceled).

### Payment
- `payment_id` (Primary Key, UUID)  
- `booking_id` (Foreign Key → Booking.booking_id)  
- Records payment amount, date, and payment method (credit_card, paypal, stripe).

### Review
- `review_id` (Primary Key, UUID)  
- `property_id` (Foreign Key → Property.property_id)  
- `user_id` (Foreign Key → User.user_id)  
- Stores ratings (1–5) and comments.

### Message
- `message_id` (Primary Key, UUID)  
- `sender_id` and `recipient_id` (Foreign Key → User.user_id)  
- Stores user-to-user messages with timestamps.

---

## Indexing Strategy

- `User.email` → for fast lookup of users.  
- `Property.property_id` → to speed up property queries.  
- `Booking.booking_id` and `Booking.property_id` → optimize booking searches.  
- `Payment.booking_id` → quick retrieval of payment data.

---

## Notes

- All primary keys use UUIDs for uniqueness.  
- Enum and check constraints are applied to maintain data validity.  
- Timestamp columns (`created_at`, `updated_at`) help in tracking record creation and updates.

---

## Database Schema SQL

The full SQL script to create the schema is available here: [schema.sql](database-script-0x01/schema.sql)
