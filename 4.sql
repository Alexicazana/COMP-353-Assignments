-- Question 4:
-- The tables for product, laptop, PC, and printer are first created similarly to question 2 of the assignment

-- a) 
-- The first insert statement is as follows:
INSERT INTO Product(maker, model, type)
VALUES('C', 1100, 'PC');

-- The second insert statement is as follows:
INSERT INTO PC(model, speed, ram, hd, rd, price)
VALUES(1100, 1800, 256, 80, 20, 2499);

-- c)
DELETE FROM Laptop
WHERE model IN
(SELECT model
FROM Product
WHERE maker IN (
    (SELECT maker FROM Product NATURAL JOIN Laptop)
    MINUS
    (SELECT maker
    FROM Product NATURAL JOIN Printer)
));
-- NATURAL JOIN was used here instead of INNER JOIN because we are using the same attribute names and datatypes. Since we want the resulting table to contain all the attributes from both tables (ie: model is an attribute common to the Laptop and Product tables)
-- INNER JOIN joins two tables on the basis of the column which is explicitly specified in the on clause, giving us a table that will contain the common attributes from both the Laptop and Product tables
-- That is why I used NATURAL JOIN instead of INNER JOIN

-- e) Changing all the products made by B so that they are now made by A
UPDATE product
SET maker='A'
WHERE maker='B';
-- This query is actually pretty simple when using SET - WHERE since we don't need to keep any information regarding manufaturer B, so that loss of data does not concern us


-- f) The UPDATE statement makes this query simple
UPDATE PC
SET ram=ram*2, hd=hd+20;

