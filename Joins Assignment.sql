##Joins Hands on assignment

##Part one 

#Write a query to find the first and last name, customer ID and rental ID for customers who have rented a film.
SELECT first_name, last_name, rental_id, customer_id
FROM sakila.customer
JOIN sakila.rental
USING(customer_id)

#Write a query that finds all films with actors that have an actor_id 5.
SELECT * FROM sakila.actor
JOIN sakila.film_actor USING (actor_id)
JOIN sakila.film USING (film_id)
WHERE actor_id = 5

#Write a query that lists out the title of films and the name of the actors who starred in those films. Additionally, only list films that starred artists whose first names start with a vowel.
SELECT title, first_name, last_name
FROM sakila.film
JOIN sakila.film_actor 
USING (film_id)
JOIN sakila.actor
USING (actor_id)
WHERE first_name LIKE ("A%") 
or first_name LIKE ("E%")
or first_name LIKE ("I%")
or first_name LIKE ("O%")
or first_name LIKE ("U%")

##Part two

#You have just been hired as a Data Analyst for a company that rents films to customers. They would like an inventory list of films that were rented for more than $4.99.
SELECT * FROM sakila.film
JOIN sakila.inventory USING (film_id)
JOIN sakila.rental USING (inventory_id)
JOIN sakila.payment USING (customer_id)
WHERE amount > 4.99

SELECT rental_id AS rental_paymentID FROM sakila.payment
SELECT staff_id AS staff_paymentID FROM sakila.payment
SELECT customer_id AS customer_paymentID FROM sakila.payment