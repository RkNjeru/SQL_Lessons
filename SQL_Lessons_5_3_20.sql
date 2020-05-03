-- EXISTS

-- The EXISTS operator is used to test for the existence of any record in a subquery.

-- The EXISTS operator returns true if the subquery returns one or more records.

SELECT [columns]
FROM [table]
WHERE EXISTS
(SELECT [column] FROM [table] WHERE [condition]);

SELECT SupplierName
FROM Suppliers
WHERE EXISTS 
(
    SELECT ProductName FROM Products 
    WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20
);

SELECT distinct(SupplierName)
FROM Suppliers, Products
WHERE Suppliers.SupplierID = Products.SupplierID
AND PRICE < 20 order by suppliername;

-- ANY and ALL

-- The ANY and ALL operators are used with a WHERE or HAVING clause.

-- The ANY operator returns true if any of the subquery values meet the condition.

-- The ALL operator returns true if all of the subquery values meet the condition.

-- ANY SYNTAX

SELECT [columns] 
FROM [table]
WHERE [column] [operator] ANY 
(SELECT [column] FROM [table] WHERE [condition]);


SELECT ProductName
FROM Products
WHERE ProductID = ANY (SELECT ProductID FROM OrderDetails WHERE Quantity = 10);

-- ALL SYNTAX
SELECT [columns]
FROM [table]
WHERE [column] [operator] ALL
(SELECT [column] FROM [table] WHERE [condition]);

SELECT ProductName 
FROM Products
WHERE ProductID = ALL (SELECT ProductID FROM OrderDetails WHERE Quantity = 10);