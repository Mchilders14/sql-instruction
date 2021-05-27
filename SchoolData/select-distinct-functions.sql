-- Select statement
SELECT * FROM student
ORDER BY lastname, firstname;

-- Select Distinct statement
SELECT DISTINCT state FROM student;

-- Select / Functions
SELECT * FROM  student;

SELECT COUNT(*) FROM student;

SELECT COUNT(*) FROM student
WHERE state = 'OH';
