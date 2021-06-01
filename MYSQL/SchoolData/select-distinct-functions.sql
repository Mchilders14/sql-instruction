-- Select statement
SELECT * FROM student
ORDER BY lastname, firstname;

-- Select Distinct statement
SELECT DISTINCT state FROM student;

-- Select / Functions
SELECT * FROM  student;

SELECT COUNT(*) FROM student;

-- How many students from Ohio
SELECT COUNT(*) FROM student
WHERE state = 'OH';

-- How many students per state ordering by most first (adding alias to column)
SELECT state, COUNT(state) count FROM Student
GROUP BY state
ORDER BY COUNT(state) DESC;

-- Using Max/Min/Count Function
SELECT MAX(birthday) FROM student;

SELECT MAX(birthday) FROM student;

-- Most common middle initial
SELECT middleinitial, count(middleinitial) FROM student
GROUP BY middleinitial
ORDER BY COUNT(middleinitial) DESC
LIMIT 1;

-- Student course enrollment JOINS
SELECT firstname, lastname, courseid, grade, subject, name FROM student s
JOIN enrolled ON studentid = s.id
JOIN course c ON courseid = c.id
ORDER BY grade, lastname;




