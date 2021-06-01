-- Join Views
-- Join students and major
-- a list of all students and their respective majors (INNERJOIN)
SELECT firstname, lastname, code, description FROM student
JOIN major
ON MajorId = major.id;

-- JOIN with an Alias
SELECT firstname, lastname, code, description FROM student
JOIN major m
ON MajorId = m.id;

-- JOIN with an Alias and 
SELECT firstname, lastname, code, description FROM student
JOIN major m
ON MajorId = m.id;

-- Create a list of classes enrolled for each student.
Select firstname, lastname, code, subject FROM student
JOIN studentclass ON StudentId = student.id 
JOIN class ON ClassId = class.id;


-- Create a list of major description, class code and class subject for required classes for the major 'General Business'.
SELECT Description, class.code, Subject FROM major 
JOIN majorclass ON MajorId = Major.id
JOIN class ON ClassId = class.Id
WHERE Description = 'General Business';



