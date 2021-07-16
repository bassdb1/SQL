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
-- SELECT id AS 'ID', name AS 'Band Name' FROM bands;

-- If I wanted to order by name instead of ID, I could do this
-- SELECT * FROM bands ORDER BY name DESC;

--  Insert Albums into the Album Table
-- insert into albums (name, release_year, band_id)
-- values ('Wild-Eyed Southern Boys', 1981, 1),
--	   ('1984', 1984, 2),
--     ('Metal Health', 1983, 3),
--     ('Cornersrtone', 1979, 4);

-- Do a select to see all of the alnums in the Albums Table
-- SELECT * FROM albums;

-- If you only wanted a 'unique' name, not entered twice
-- SELECT DISTINCT name FROM albums;

-- If I wanted to update a specific album to another date I could do this
-- Select The DB I want to use
-- Use record_company;
-- Then Query to find 'ID' of Albums, which is a table in the record_company DB
-- SELECT * FROM albums;

-- UPDATE albums 
-- SET release_year = 1981
-- WHERE id = 1;

-- check the results
-- SELECT * FROM albums;

-- What If I wanted to list all of the 'albums' before 1980?  I can use the 'WHERE' Clause
-- SELECT * FROM albums WHERE release_year < 1980

-- SELECT * FROM albums

-- If I wanted to find certain text, I could do this
-- select * from albums where name like '%er%';

-- If I wanted to do a selection where both clauses are true
-- select * from albums where release_year and band_id = 2;


-- If I wanted to know the realease date of an album between certain years
-- SELECT * FROM albums WHERE release_year BETWEEN 1981 AND 1983;

-- If I wanted to find all albums where the release year = NULL, no value
-- SELECT * FROM albums WHERE release_year IS NULL;

-- Joins - it would be cool to join two tables together
-- SELECT * FROM bands JOIN albums ON bands.id = albums.band_id;

-- Aggregate functions - find the 'average' on the 'release_year' coloumn from the 'albums table'
-- select avg(release_year) from albums;

-- If I wanted to know how many Albums Each Band Made, I could use the 'Aggregate Function' Count
-- SELECT band_id, COUNT(band_id) FROM albums GROUP BY band_id;

-- I want to do a join so I can see the bands name and albums, also using alias
SELECT b.name AS Band_Name, COUNT(a.id) AS Number_Albums 
FROM bands AS b
LEFT JOIN albums AS a ON b.id = a.band_id
GROUP BY b.id;
 


	








