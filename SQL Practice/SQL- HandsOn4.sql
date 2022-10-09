# Part one 

create view initialcustomer as
select email, first_name, last_name
from sakila.customer
Where customer_id < 100; 

# Part two and

create table  ProductList (
    ProductID integer auto_increment primary key,
    ProductName varchar(50) not null,
    Price numeric (4,2) not null,
    DateAdded datetime default current_timestamp not null,
    EmployeeSupportID integer not null
    );
    
    drop table ProductList;