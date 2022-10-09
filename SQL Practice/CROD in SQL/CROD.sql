#PART ONE 

insert into sakila.actor (first_name, last_name)
values ("Lilly", "Rose")

select * from sakila.actor
where last_name = "Rose";

update sakila.actor
set first_name = "Emmy", last_name = "Rock"
where actor_id = 203

SELECT * FROM sakila.staff
WHERE password IS NULL

select * from sakila.staff
where first_name and store_id is not null

update sakila.address
set address2 = "Canada"
where district = "Alberta"

update sakila.address
set address2 = "Australia"
where district = "QLD"