-- Left Join - Student - Major
SELECT Firstname, Lastname, majorid, Description FROM student
LEFT OUTER JOIN major ON MajorId = major.id;

-- Left Join - class - instructor
SELECT code, subject, firstname, lastname FROM class
LEFT OUTER JOIN instructor ON InstructorId = instructor.Id;

-- Functions & Sub Query with SQL
SELECT * FROM student
WHERE GPA >= (SELECT avg(gpa) FROM student)
ORDER BY gpa desc;

-- More function and sub query
SELECT * FROM student
WHERE SAT <= (SELECT avg(SAT) FROM student)
ORDER BY sat desc;


