##CRUD in SQL: Create, Read, Update, Delete

##Insert examples

##Specify Columns and Values
insert into sakila.actor (first_name, last_name, last_update)
values ("Johnny", "Smith", "2019-01-17 08:43:11");

SELECT * FROM sakila.actor;

select * from sakila.actor
where last_name = "Smith";

##Specify Just Values
insert into sakila.actor
values (202, "Kermit", "DaFrog", "2019-01-19 08:56:12");

##Insert Data when Some is Missing
insert into sakila.actor (first_name, last_name)
values ("Miss", "Pigee");

##Null Values

SELECT * FROM sakila.address 
WHERE address2 is null;

select * from sakila.staff
where picture is null and password is null;

select * from sakila.staff
where picture is null and store_id = 2;

##Update

##Update a table
update sakila.actor
set first_name = "Jonathan"
where actor_id = 201;

select * from sakila.actor
where actor_id = 201;

##Update Multiple Records
update sakila.customer
set active = 1
where store_id = 2;


##Delete
delete from sakila.actor
where actor_id = 201;