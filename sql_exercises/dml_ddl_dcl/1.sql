-- Data Definition Language creates and controls the schema (relational structure and rules) for a dataset. 
CREATE DATABASE example;

ALTER TABLE orders
ALTER COLUMN name SET NOT NULL;

-- Data Manipulation Language creates and manipulates the actual data in the data set. 
INSERT INTO orders (name, order)
VALUES ('Chad', 'Burger');

DELETE FROM orders;
