-- Select the title, year, name and role of the following movies
SELECT Title, Year, FirstName, LastName, Role FROM actor
JOIN credit ON ActorID = actor.id
JOIN movie ON MovieID = movie.id;

-- Outer JOIN for Movie DB includes movies without actors
SELECT * FROM actor
JOIN credit ON ActorID = actor.id
Right OUTER JOIN movie ON MovieID = movie.id;

-- Select all statements
SELECT * FROM credit;

-- Insert statements
SELECT * FROM movie;

INSERT INTO movie VALUES
(14, 'Inception', 2010, 'PG-13', 'Christopher Nolan');

-- Insert letting DB decide primary key
INSERT INTO movie (Title, Year, Rating, Director)
VALUES ('Fight Club', 1999, 'R', 'David Fincher');
