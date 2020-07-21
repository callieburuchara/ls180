-- 1. How to create a database 
$ createdb animal
#= CREATE DATABASE animal

-- 2. Create a table
CREATE TABLE birds (
id serial PRIMARY KEY,
name varchar(25),
age int,
species varchar(15)
);

-- 3. Insert Data
INSERT INTO birds (name, age, species)
VALUES 
('Charlie', 3, 'Finch'),
('Allie', 5, 'Owl'),
('Jennifer', 3, 'Magpie'),
('Jamie', 4, 'Owl'),
('Roy', 8, 'Crow');

-- 4. Select Data
SELECT * FROM birds;

-- 5. WHERE clause
SELECT * FROM birds WHERE age < 5;

-- 6. Update Data
UPDATE birds SET species = 'Raven'
WHERE species = 'Crow';

-- 7. Delete Data
DELETE FROM birds
WHERE species = 'Finch' AND age = 3;

-- 8. Add Constraint
ALTER TABLE birds
ADD CHECK (age > 0); -- Mine is given as a shorthand solution
-- Given Solution
ALTER TABLE birds ADD CONSTRAINT check_age CHECK (age > 0);

-- 9. Drop a table
DROP TABLE birds;
-- Can also say
DROP TABLE IF EXISTS birds;

-- 10. Drop database
$ dropdb animals
-- Or
DROP DATABASE animals;
