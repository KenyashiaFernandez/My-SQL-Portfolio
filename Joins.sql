##JOINS

##Outer Joins

##LEFT OUTER JOIN
##Will return all records from the left table and all matched records from the right table

SELECT * FROM sakila.film
LEFT OUTER JOIN sakila.film_actor
ON sakila.film.film_id = sakila.film_actor.film_id

##Left Inner
SELECT * FROM sakila.film
INNER JOIN sakila.film_actor
ON sakila.film.film_id = sakila.film_actor.film_id

##RIGHT OUTER JOIN
SELECT * FROM sakila.film
RIGHT OUTER JOIN sakila.film_actor
ON sakila.film.film_id = sakila.film_actor.film_id

##Using
##To cut down your query. You can use USING instead of ON

SELECT first_name, last_name, film_id
FROM sakila.actor
INNER JOIN sakila.film_actor
USING(actor_id)

##Aliases
##Used to give tables or columns different names than what is currently in the database

SELECT title AS filmTitle FROM sakila.film

##Multiple Joins

SELECT * from sakila.actor
JOIN sakila.film_actor USING (actor_id)
JOIN sakila.film_category USING (film_id)

##Walkthrough scenario
##Write a query to find all rental's rental_date, return_date, amount paid for the rental, and the title of each rental.

SELECT rental_date, return_date, amount, title FROM sakila.rental
JOIN sakila.payment USING (rental_id)
JOIN sakila.inventory USING (inventory_id)
JOIN sakila.film USING (film_id)

