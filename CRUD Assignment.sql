##CRUD hands on practice
SELECT * FROM sakila.actor

##Insert a new actor into the database.Once you have completed the insert, 
##write a query to view all information for that specific actor.
INSERT INTO sakila.actor (first_name, last_name) VALUES ("Jack", "Black")
SELECT * FROM sakila.actor WHERE first_name = "Jack" AND last_name = "Black"

##Update the actor that you just inserted. Give your new actor a first_name of Emmy and a last_name of Rock.
##When you have completed that update, run another query to see your updated actor.
UPDATE sakila.actor
SET first_name = "Emmy", last_name = "Rock" 
WHERE actor_id = 204

SELECT * FROM sakila.actor WHERE actor_id = 204

##Find all staff that do not have a value specified for password.
SELECT * FROM sakila.staff WHERE password IS NULL

##Find all staff's information that has a value for first_name and store_id.
SELECT * FROM sakila.staff WHERE first_name IS NOT NULL AND store_id IS NOT NULL

##Write a query that updates all people with a Null value in the address2 column. 
##If the district is Alberta, put address2 as Canada, and if the district is QLD, put Australia.
UPDATE sakila.address
SET address2 = "Canada"
WHERE district = "Alberta"

UPDATE sakila.address
SET address2 = "Australia"
WHERE district = "QLD"