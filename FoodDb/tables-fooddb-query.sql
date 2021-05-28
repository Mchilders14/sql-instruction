SELECT * FROM menuitem
JOIN MenuItem ON menuitemid = menuitem.id;

SELECT * FROM OrderTicket;

SELECT orderid, CONCAT(lastname, ', ', firstname) as 'Customer Name', cat.name as category,
		mi.name as item, price, qty, CONCAT('$', (price*qty)) as subtotal
	FROM lineitem
    JOIN menuitem mi 	ON menuitemid = mi.id
    JOIN orderticket ot ON orderid = ot.id
	JOIN customer c		ON customerid = c.id
    JOIN category cat  	ON categoryid = cat.id
WHERE ot.id = 2;

-- Calculate total for order
SELECT orderid, SUM(price * qty) as total FROM lineitem
JOIN menuitem mi ON menuitemid = mi.id
WHERE orderid = 2
GROUP BY orderid;

