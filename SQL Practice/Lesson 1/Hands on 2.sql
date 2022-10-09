#PART ONE

SELECT first_name, last_name, customer_id, rental_id
FROM sakila.rental
JOIN sakila.customer
Using (customer_id)

SELECT * FROM sakila.actor
JOIN sakila.film_actor USING (actor_id)
JOIN sakila.film USING (film_id)
WHERE actor_id = 5

SELECT * FROM sakila.film

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



#PART TWO

SELECT * FROM sakila.film
JOIN sakila.inventory USING (film_id)
JOIN sakila.rental USING (inventory_id)
JOIN sakila.payment USING (customer_id)
WHERE amount > 4.99

SELECT rental_id AS rental_paymentID FROM sakila.payment
SELECT staff_id AS staff_paymentID FROM sakila.payment
SELECT customer_id AS customer_paymentID FROM sakila.payment