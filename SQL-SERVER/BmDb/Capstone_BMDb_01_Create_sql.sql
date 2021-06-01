use master;
go
alter database BmDb set single_user with rollback immediate
go
drop database if exists BmDb;
go
create database BmDb;
go
use BmDb;
go
-- create Movie table
-- DROP TABLE IF EXISTS Movie;
Create table Movie (
ID int primary key identity(1,1),
Title varchar(255) not null unique,
Year integer not null,
Rating varchar(5) not null,
Director varchar(255) not null
-- CONSTRAINT utitle unique (Title)
);

-- create Actor table
-- DROP TABLE IF EXISTS Actor;
Create table Actor (
ID int primary key identity(1,1),
FirstName varchar(255) not null,
LastName varchar(255) not null,
Gender 	varchar(1) 	not null,
BirthDate date not null,
CONSTRAINT unq_actor unique (FirstName, LastName, BirthDate)
);

-- create Credits table
-- business rule - combo of actor+movie must be unique
Create table Credit (
ID 	int	primary key identity(1,1),
ActorID int not null,
MovieID int	not null,
Role varchar(255) not null,
Foreign Key (ActorID) references Actor(ID),
Foreign Key (MovieID) references Movie(ID),
CONSTRAINT act_mov unique (ActorID, MovieID)
);

-- Add some movies
SET IDENTITY_INSERT Movie ON
 insert into Movie (ID, Title, Year, Rating, Director) VALUES
 	(1, 'Revenge of the Nerds', 1984, 'R', 'Jeff Kanew'),
 	(2, 'Avengers Infinity War', 2018, 'PG-13', 'Anthony Russo, John Russo'),
    (3, 'Fellowship of the Ring', 2001, 'PG-13', 'Peter Jackson'),
 	(4, 'A New Hope', 1977, 'PG', 'George Lucas'),
    (5, 'Return of the Jedi', 1983, 'PG', 'Richard Marquand'),
 	(6, 'Wolf of Wall Street', 2013, 'R', 'Martin Scorsese'),
    (7, 'Titanic ', 1997, 'PG-13', 'James Cameron'),
 	(8, 'Chappie', 2015, 'R', 'Neill Blomkamp'),
    (9, 'TED', 2012, 'R', 'Seth MacFarlane'),
 	(10, 'Toy Story', 1995, 'G', 'John Lasseter'),
    (11, 'Blazing Saddles', 1995, 'R', 'Mel Brooks'),
    (12, 'The Shining', 1980, 'R', 'Stanly Kubrick'),
    (13, 'A Space Odyssey', 1968, 'G', 'Stanley Kubrick');
SET IDENTITY_INSERT Movie OFF

    
-- Add some actors
SET IDENTITY_INSERT Actor ON
 insert into Actor (ID, Firstname, Lastname, Gender, Birthdate) VALUES
 	(1, 'Robert', 'Downey Jr.', 'M', '1965-04-04'),
 	(2, 'Chris', 'Hemsworth', 'M', '1983-09-11'),
    (3, 'Scarlett', 'Johansson', 'F', '1984-11-22'),
 	(4, 'Robert', 'Carradine', 'M', '1954-03-24'),
 	(5, 'Anthony', 'Edwards', 'M', '1962-07-19'),
    (6, 'Elijah', 'Wood', 'M', '1981-01-28'),
    (7, 'Ian', 'McKellen', 'M', '1939-05-25'),
    (8, 'Mark', 'Hamill', 'M', '1951-09-25'),
    (9, 'Harrison', 'Ford', 'M', '1942-06-13'),
    (10, 'Mila', 'Kunis', 'F', '1983-08-14'),
    (11, 'Mark', 'Wahlberg', 'M', '1971-10-05'),
    (12, 'Kate', 'Winslet', 'F', '1975-10-05'),
    (13, 'Tom', 'Hanks', 'M', '1956-07-09'),
    (14, 'Tim', 'Allen', 'M', '1953-06-13'),
    (15, 'Yo-Landi', 'Visser', 'F', '1984-12-01'),
    (16, 'Jona', 'Hill', 'M', '1983-12-20'),
    (17, 'Leonardo', 'DiCaprio', 'M', '1974-11-11'),
    (18, 'Hugh', 'Jackman', 'M', '1968-10-12');
SET IDENTITY_INSERT Actor Off

    
    
-- Add movie credits for actors
 insert into Credit (ActorID, MovieID, Role) VALUES
 	(1, 2, 'Tony Stark - Iron Man'),
    (2, 2, 'Thor'),
    (3, 2, 'Natasha Romanoff - Black Widow'),
    (4, 1, 'Lewis'),
    (5, 1, 'Gilbert'),
    (6, 3, 'Frodo Baggins'),
    (7, 3, 'Samwise Gamgee'),
    (8, 4, 'Luke Skywalker'),
    (9, 4, 'Han Solo'),
    (8, 5, 'Luke Skywalker'),
    (9, 5, 'Han Solo'),
    (11, 9, 'John'),
    (10, 9, 'Lori'),
    (18, 8, 'Vincent'),
    (15, 8, 'Yo-Landi'),
    (13, 10, 'Buzz'),
    (14, 10, 'Woody'),
    (17, 6, 'Jordan Belfort'),
    (16, 6, 'Donnie Azoff'),
    (17, 7, 'Jack Dawson'),
    (12, 7, 'Rose Bukater');



---- create a user and grant privileges to that user
--DROP USER IF EXISTS bmdb_user@localhost;
--CREATE USER bmdb_user@localhost IDENTIFIED BY 'sesame';
--GRANT SELECT, INSERT, DELETE, UPDATE ON bmdb.* TO bmdb_user@localhost;
