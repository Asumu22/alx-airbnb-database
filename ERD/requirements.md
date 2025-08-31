# Airbnb Database Project – ERD Requirements

## Objective
The objective of this task is to design a robust Entity-Relationship Diagram (ERD) for an Airbnb-like application.  
The ERD will serve as the foundation for database normalization, schema creation, and data seeding in subsequent tasks.

---

## Entities and Attributes
Based on the Airbnb specification, the following core entities and their key attributes have been identified:

### 1. User
- **user_id** (Primary Key)  
- first_name  
- last_name  
- email (Unique)  
- phone_number  
- password  
- created_at  
- updated_at  

### 2. Property
- **property_id** (Primary Key)  
- host_id (FK → User)  
- title  
- description  
- location  
- price_per_night  
- property_type  
- created_at  
- updated_at  

### 3. Booking
- **booking_id** (Primary Key)  
- user_id (FK → User)  
- property_id (FK → Property)  
- check_in_date  
- check_out_date  
- total_amount  
- status (e.g., confirmed, cancelled, pending)  
- created_at  
- updated_at  

### 4. Payment
- **payment_id** (Primary Key)  
- booking_id (FK → Booking)  
- amount  
- payment_date  
- payment_method (card, PayPal, etc.)  
- status (successful, failed, refunded)  

### 5. Review
- **review_id** (Primary Key)  
- booking_id (FK → Booking)  
- user_id (FK → User)  
- rating (1–5)  
- comment  
- created_at  

---

## Relationships
- **User → Property**: One-to-Many (a user can host multiple properties).  
- **User → Booking**: One-to-Many (a user can make multiple bookings).  
- **Property → Booking**: One-to-Many (a property can have multiple bookings).  
- **Booking → Payment**: One-to-One (each booking has one payment).  
- **Booking → Review**: One-to-One (each booking can have one review).  

---

## Tools
- **Draw.io (recommended)** or any ER diagramming tool can be used to visually represent the above entities and relationships.  

---

## Deliverable
- An ERD diagram (saved as an image or PDF in this directory).  
- This `requirements.md` file describing entities, attributes, and relationships.  

