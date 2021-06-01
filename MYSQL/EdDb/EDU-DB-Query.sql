-- Basic WHERE Clause.... USE WITH EDDB
SELECT * FROM student
WHERE statecode = 'OH';

-- Basic WHERE Clause with OR
SELECT * FROM student
WHERE statecode = 'OH' or statecode = 'IN';

-- Basic WHERE CLause with IN Keyword
SELECT * FROM student
WHERE statecode IN ('KY', 'IN');

-- Basic WHERE clause with !=
SELECT * FROM student
WHERE statecode != 'KY';

-- Basic WHERE Clause with NOT
SELECT * FROM student
WHERE NOT statecode = 'KY';

-- Basic BETWEEN Clause with ORDER BY
SELECT * FROM student
WHERE gpa BETWEEN 2.0 AND 3.0
ORDER BY gpa;

-- Basic LIKE Clause : % = Wildcard
SELECT * FROM student
WHERE lastname LIKE 'B%'
ORDER BY lastname;

-- Basic LIKE Clause : % = Wildcard : BINARY = Case Sensitive
SELECT * FROM student
WHERE lastname LIKE BINARY 'B%'
ORDER BY lastname;

-- Basic LIKE Clause : % = Wildcard : Start with 'B' - End with 'S'
SELECT * FROM student
WHERE lastname LIKE BINARY 'B%s'
ORDER BY lastname;

-- Basic LIKE Clause : % = Wildcard : Start with 'B' - End with 'S'
SELECT * FROM student
WHERE lastname LIKE BINARY 'B%s'
ORDER BY lastname;

-- Basic LIKE Clause : _ = Underscore : States starting with I
SELECT * FROM student
WHERE statecode LIKE 'I_'

