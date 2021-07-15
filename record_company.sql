-- Create Database
-- CREATE DATABASE test;

-- Drop Databse
-- DROP database test;

-- Create a Record Company Database
-- CREATE database record_company;

-- We want to tell SQ that we want to add Data to the record_Company Database, we do this with the USE command
-- USE record_company;

-- I want to create a 'band' Table
-- CREATE TABLE bands (
-- id INT NOT NULL AUTO_INCREMENT,
-- name VARCHAR(255) NOT NULL,
-- PRIMARY KEY (id)
-- );

-- I want to create a 'albums' Table, and reference the band table
-- CREATE TABLE albums (
-- id INT NOT NULL AUTO_INCREMENT,
-- name VARCHAR(255) NOT NULL,
-- release_year INT,

-- Foreign Key = any form of key that references a table other than itself
-- band_id INT NOT NULL,
-- PRIMARY KEY (id),
-- This will 'reference the band table', this will be 'band_id' which references the 'bands table', and 'ID column' - this is a Foreign Key
-- FOREIGN KEY (band_id) REFERENCES bands(id)
-- );


-- Insert Data into our Bands Table, inserting Data into the 'Name' Column
 -- INSERT INTO bands (name)
-- Values is what we want to put in 
-- VALUES ('38 Special'), ('Van Halen'), ('Quiet Riot'), ('STYX');

-- I want to see all of the bands in the Bands Table
-- 'Select' = command, '*' - column, FROM bands = from what table
-- SELECT * FROM bands;

-- If I only wanted '3' bands instead of all in my qyery, I could do this
-- SELECT * FROM bands LIMIT 3;

-- If I wanted to format my output, I could do this, make it UpperCase.
SELECT id AS 'ID', name AS 'Band Name' FROM bands;







