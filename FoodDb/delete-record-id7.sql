-- Update total of order ticket ID 1 to $11.00
SELECT * FROM orderticket WHERE id = 1;
UPDATE orderticket SET total = 11
WHERE id =1;

DELETE FROM category WHERE id = 7;