use Sakila;
-- 1.Display all available tables in the Sakila database.
SHOW TABLES;

-- 2.Retrieve all the data from the tables actor, film and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3.Retrieve the following columns from their respective tables:
-- 3.1 Titles of all films from the film table
-- 3.2 List of languages used in films, with the column aliased as language from the language table
-- 3.3 List of first names of all employees from the staff table
SELECT title 
FROM film;

SELECT name AS language 
FROM language;

SELECT first_name 
FROM staff;

-- 4.Retrieve unique release years.

SELECT DISTINCT release_year 
FROM film;

-- SELECT * FROM sakila.film


-- 5.Counting records for database insights:
-- 5.1 Determine the number of stores that the company has.
-- 5.2 Determine the number of employees that the company has.
-- 5.3 Determine how many films are available for rent and how many have been rented.
-- 5.4 Determine the number of distinct last names of the actors in the database.


SELECT COUNT(store_id) AS total_stores 
FROM store;

SELECT COUNT(staff_id) AS total_employees 
FROM staff;
-- SELECT * FROM sakila.staff

-- Total films in inventory 
SELECT COUNT(inventory_id) AS total_inventory_items
FROM inventory;

-- Total number of rental transactions ever made
SELECT COUNT(rental_id) AS total_rentals_item
FROM rental;
 
 
 SELECT COUNT(DISTINCT last_name) AS unique_last_names 
FROM actor;

-- 6.Retrieve the 10 longest films.

SELECT title, length 
FROM film 
ORDER BY length DESC 
LIMIT 10;

-- 7.Use filtering techniques in order to:

-- 7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * 
FROM actor 
WHERE first_name = 'SCARLETT';

-- BONUS:

-- 7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.

-- Hint: use LIKE operator. More information here.
-- 7.3 Determine the number of films that include Behind the Scenes content

SELECT title, length
FROM film
WHERE title LIKE '%ARMAGEDDON%' 
  AND length > 100;
  
  SELECT COUNT(*) AS films_with_behind_the_scenes
FROM film
WHERE special_features LIKE '%Behind the Scenes%';




