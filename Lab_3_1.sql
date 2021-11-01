-- Activity 1

-- 1. Drop column picture from staff.
USE sakila;
ALTER TABLE staff
DROP COLUMN picture;

-- 2. A new person is hired to help Jon. 
-- Her name is TAMMY SANDERS, and she is a customer. 
-- Update the database accordingly
USE sakila;
INSERT INTO staff (first_name, last_name, address_id, email, store_id, active, username, password, last_update)
VALUES ('TAMMY', 'SANDERS', 79, 'TAMMY.SANDERS@sakilacustomer.org', 1, 1, 'TBD', 'TBD', '2021-11-01 12:37:25');

-- 3. Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1.
-- You can use current date for the rental_date column in the rental table. 
-- Hint: Check the columns in the table rental and see what information you would need
-- to add there. You can query those pieces of information. 
-- For eg., you would notice that you need customer_id information as well. 
USE sakila;
INSERT INTO rental (rental_date, inventory_id, customer_id, return_date, staff_id, last_update)
VALUES ('2021-11-01 13:56:01', 3, 130, 0, 2,'2021-11-01 14:00:00');


-- Activity 2

-- Use dbdiagram.io or draw.io to propose a new structure for the Sakila database.
-- Define primary keys and foreign keys for the new database.

-- While the diagram tools are nice (I didn't know them before), I think this database has an optimal
-- shape right now, as it is officlally shared by MySQL. It already has the PK and FK constraints.

-- Without any additional project/business related information, no new/more optimal structure
-- can be derived, without eliminating any possibly necessary information.