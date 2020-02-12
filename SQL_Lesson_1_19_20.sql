SELECT [COLUMNS] FROM [TABLE];

-- select every column and every row from HOWSTUFFWORKS table
SELECT * FROM HOWSTUFFWORKS;

-- select all the names from HOWSTUFFWORKS table
SELECT FIRSTNAME FROM HOWSTUFFWORKS;

-- AS is an SQL keyword that helps you name an Alias

SELECT PostalCode FROM CUSTOMERS;

-- Give 'PostalCode' an alias of 'ZIPCODE'
SELECT PostalCode AS ZIPCODE FROM CUSTOMERS;

SELECT Count(*) AS DistinctCountries
FROM (SELECT DISTINCT Country FROM Customers);

-- select all rows for people with a salary of more $300

-- Syntax:
--  SELECT [COLUMNS] FROM [TABLE] WHERE [Condition is true];
-- Operator for Conditions: {>, <, =, <>, IS, LIKE, IS NOT, IN}
-- <> means not equal
-- LIKE is used to compare strings 
-- Syntax for IN: SELECT [COLUMNS] FROM [TABLE] WHERE [COLUMN] IN [value1, value2, ...] 

SELECT * FROM HOWSTUFFWORKS WHERE Salary > 300;

