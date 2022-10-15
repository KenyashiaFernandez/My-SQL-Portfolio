##Select
##Used to select from database

SELECT film_id, title, description, release_year, language_id FROM sakila.film

##See every column that exists in table
SELECT * FROM sakila.film

##See only specific columns from table
SELECT title FROM sakila.film
SELECT title, description, release_year FROM sakila.film

##Limit
##Used to limit the data to a certain number of rows

SELECT title, description, release_year FROM sakila.film LIMIT 5

##Where
##Used to define any restrictions on the data

SELECT * FROM sakila.film WHERE title = "ALI FOREVER"
SELECT * FROM sakila.film WHERE length < 90
SELECT * FROM sakila.film WHERE replacement_cost > 28.99

##AND, OR, NOT
##The AND and OR operators are used to filter the data based on more than one condition.
##The NOT operator checks to see if something is not true

##And
SELECT title, rating, length, release_year FROM sakila.film
WHERE rating = "PG" AND length < 100 AND replacement_cost < 19.99

##OR
SELECT title, rating, length, release_year FROM sakila.film
WHERE rating = "PG" OR length < 100 OR replacement_cost < 19.99

##Not
SELECT title, rating FROM sakila.film
WHERE rating != "PG"

##String Functions

##Upper
##Will convert all characters in a string to uppercase.
SELECT UPPER("sql is super fun!") AS UpperCase

##Lower
##Will convert all characters in a string to lowercase
SELECT LOWER("I LOVE LEARNING SQL") AS LowerCase

##Like
##Used in a WHERE clause to search for a particular pattern or character
## % (percent sign) represents zero, one or multiple characters, _ (underscore) represents a single character

##Find all tracks that start with the word 'the' using this query
SELECT title FROM sakila.film
WHERE title LIKE 'the%'

##Find any data that ends with '%en
SELECT title FROM sakila.film
WHERE title LIKE '%en'

##Find any data that has "or" anywhere within the value
SELECT title FROM sakila.film
WHERE title LIKE '%or%';

##Find a value with a specific character in a particular position
SELECT title FROM sakila.film
WHERE title LIKE '_r%';

##Find any values that start with "h" and are at least three characters in length
SELECT title FROM sakila.film
WHERE title LIKE 'h_%_%';

##Find any values that begin with "b" and end with "y"
SELECT title FROM sakila.film
WHERE title LIKE 'b%y';

##Find any values that do NOT begin with "e"
SELECT title FROM sakila.film
WHERE title NOT LIKE 'e%' 

##IN
##Used to specify multiple values when using WHERE

SELECT title, rating FROM sakila.film
WHERE rating IN ("G", "PG", "PG-13")

SELECT title FROM sakila.film
WHERE language_id
IN (SELECT language_id FROM sakila.language WHERE name = "english")

##Order By
##Used to specify in what order you want your columns to be

SELECT title FROM sakila.film
ORDER BY title

SELECT title FROM sakila.film
ORDER BY title DESC

SELECT title FROM sakila.film
WHERE length < 100
ORDER BY title
