SELECT lastname from person WHERE firstname LIKE "%я"

-----

SELECT DISTINCT ON (productname) productname, price FROM product 
WHERE orderID IN (
    SELECT orderID FROM orders 
    WHERE orderdate BETWEEN "2013-03-08 00:00:00" AND "2013-03-08 23:59:59"
)

SELECT DISTINCT ON (productname) productname, price FROM product
JOIN orders o ON product.orderID = o.orderID
WHERE o.orderdate  BETWEEN "2013-03-08 00:00:00" AND "2013-03-08 23:59:59"

-----


SELECT student.name, SUM(payment.amount) FROM student s
JOIN payments p on s.id = p.student_id
WHERE p.payment_date BETWEEN '2013-01-01 00:00:00' AND '2013-01-31 23:59:59'
GROUP BY s.name




