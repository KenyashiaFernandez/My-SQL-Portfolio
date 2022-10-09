select * from sakila.actor where first_name = "cuba"

select title, film_id from sakila.film where film_id > 5 and film_id < 20

select first_name, last_name, email from sakila.customer where last_name = "Rodriguez" or last_name like "mc%"

select * from sakila.film where title like "A%"

select title  from sakila.film where language_id not in(select language_id from sakila.language where name = "English" or name = "Japanese")


select * from sakila.payment ;

select rental_id, payment_date from payment where amount > .99

select staff_id, customer_id from payment where amount > .99