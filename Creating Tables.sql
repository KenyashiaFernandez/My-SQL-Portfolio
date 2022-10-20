##Create Tables

Use sakila

CREATE TABLE AppUsers (
    AppUserID INTEGER,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    SignUpDate DATETIME 
    
    )

##Constraints
##Used to specify rules for data in a table that will limit the type of data that can go within a table or column. 

##Not Null
CREATE TABLE AppUsers1 (
AppUserID INTEGER,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
SignUpDate DATETIME NOT NULL)

##Unique
CREATE TABLE AppUsers2 (
AppUserID INTEGER UNIQUE,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
SignUpDate DATETIME NOT NULL)

##This is to make sure that the AppUserID is going to be unique for each user

##Primary Key 
##This is a combination of NOT NULL and UNIQUE, so that every row in the table is unique and not null.

CREATE TABLE AppUsers3 (
AppUserID INTEGER PRIMARY KEY,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
SignUpDate DATETIME NOT NULL)

##Autoincrement
##This will automatically generate a unique number when a new record is inserted into a table. 

CREATE TABLE AppUsers4 (
AppUserID INTEGER PRIMARY KEY AUTO_INCREMENT,
FirstName VARCHAR(50) NOT NULL,
LastName VARCHAR(50) NOT NULL,
SignUpDate DATETIME NOT NULL)

##Foreign Key
##Is a relation between tables that will restrict the insertion of data in one table, depending on the contents of a second table

CREATE TABLE customerExample(
  FirstName NVARCHAR(40),
  LastName NVARCHAR(30),
  State NVARCHAR(2),
  FOREIGN KEY(State) REFERENCES states(Abbreviation)
);

CREATE TABLE customerExample(
  FirstName NVARCHAR(40),
  LastName NVARCHAR(30),
  State NVARCHAR(10),
  PostalCode INTEGER,
  FOREIGN KEY(State) REFERENCES states(Abbreviation),
  CHECK (length(PostalCode) = 5)
);

##Insert

create table actorExample(
	actor_id smallint(5) unsigned,
    first_name varchar(45),
    last_name varchar(45),
    last_update timestamp)
    
Insert into actorExample
values (200, "Jamie", "Thomas", "2020-01-23 12:16:34")

##Insert into some Columns
INSERT INTO actorExample (actor_id, first_name, last_name, last_update)
SELECT actor_id, first_name, last_name, last_update
FROM actor;

##Dropping a Table
drop table actorExample

##Views
##Is a virtual table based on the result of a SQL statement

create view CurrentCustomers as
select customer_id, first_name, last_name
from customer
where active = 1

SELECT * FROM CurrentCustomers;

##Create View with Join

SELECT first_name, last_name, film_id
FROM sakila.actor
INNER JOIN sakila.film_actor
ON sakila.actor.actor_id = sakila.film_actor.actor_id

create view ActorFilms as
SELECT first_name, last_name, film_id
FROM sakila.actor
INNER JOIN sakila.film_actor
ON sakila.actor.actor_id = sakila.film_actor.actor_id

SELECT * FROM ActorFilms;

##Drop View

drop view CurrentCustomers