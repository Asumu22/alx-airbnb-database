# Airbnb Database Normalization

## Overview
Normalization is the process of organizing data to reduce redundancy, improve integrity, and simplify maintenance. We applied normalization principles to the Airbnb database to ensure it meets the Third Normal Form (3NF).

## Normalization Steps Applied

### First Normal Form (1NF)
- Ensured all attributes contain atomic values.
- Each record is unique.
- Example: `Booking.start_date` and `Booking.end_date` store single values, not lists.

### Second Normal Form (2NF)
- Achieved 1NF.
- Ensured all non-key attributes are fully functionally dependent on the primary key.
- Example: `Property.name` depends on `property_id` and not on `host_id`.

### Third Normal Form (3NF)
- Achieved 2NF.
- Removed transitive dependencies so that non-key attributes depend only on the primary key.
- Example: In `Booking`, `total_price` depends on `booking_id`, not on `user_id` or `property_id` directly.

## Result
- All tables (`User`, `Property`, `Booking`, `Payment`, `Review`, `Message`) are in 3NF.
- No redundancy and no transitive dependencies remain.
- Ensures efficient data storage, integrity, and easier maintenance..
