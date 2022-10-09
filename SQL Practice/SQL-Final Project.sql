# Part one 

CREATE TABLE Authors (
    AuthorID integer primary key auto_increment ,
    FullName varchar(50),
    BirthCountry varchar(50)
);

INSERT INTO Authors (FullName, BirthCountry)
VALUES
("Jane Austen", "England"),
("Charles Dickens", "England"),
("Mark Twain", "United States");

select * from Authors;

# Part Two

CREATE TABLE  Books (
    BookID integer primary key auto_increment ,
    Name varchar(50),
    AuthorID integer, 
    foreign key (AuthorID) references Authors (AuthorID)
);


INSERT INTO Books (Name, AuthorID)
VALUES
("Pride and Pejudice", 1),
("Sense and Sensibility", 1),
("The Pickwick Papers", "2");

select * from Books;

#Part Three

SELECT * FROM Authors
JOIN Books USING(AuthorID);

create view AuthorBooks as
select FullName as AuthorName, Name as BookName
from Authors, Books
ORDER by AuthorName asc;

SELECT * FROM authorbooks
