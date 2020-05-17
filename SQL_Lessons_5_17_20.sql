-- JOINS

-- GENERIC SYNTAX
SELECT [columns] 
FROM [table1]
JOIN [table2] 
ON [table1].[column] = [table2].[column]; 

-- generic inner join
select a.column1, a.column2, b.column3, b.column2
from table1 a 
inner join table2 b 
on a.column1 = b.column1; 


-- generic left join 
select a.column1, a.column2, b.column3, b.column2
from table1 a 
left join table2 b 
on a.column1 = b.column1; 

-- id = 1 in both tables
-- 1, 'data', 'data', 'data'

-- id = 2 in table1 and no id=2 in table2
-- inner join:
-- empty result set
-- left join 
-- 2, 'data', NULL, NULL

-- generic right join 
select a.column1, a.column2, b.column3, b.column2
from table1 a 
right join table2 b 
on a.column1 = b.column1; 

-- id = 1 in both tables
-- 1, 'data', 'data', 'data'

-- id = 2 in table2 b and no id=2 in table1 a
-- right join
-- NULL, NULL, 'data', 'data'

select a.customerid, a.orderid, b.customername, b.country 
from orders a 
inner join customers b 
on a.customerid = b.customerid; 
-- 2, 10308, 'Ana Trujillo Emparedados y helados', 'Mexico'

select a.customerid, a.orderid, b.customername, b.country 
from orders a 
left join customers b 
on a.customerid = b.customerid;
-- 2, 10308, 'Ana Trujillo Emparedados y helados', 'Mexico'
-- 37, 10309, NULL, NULL
-- 77, 10310, NULL, NULL

select a.customerid, a.orderid, b.customername, b.country 
from orders a 
right join customers b 
on a.customerid = b.customerid;
-- NULL, NULL, 'Alfreds Futterkiste', 'Germany'
-- 2, 10308, 'Ana Trujillo Emparedados y helados', 'Mexico'
-- NULL, NULL, 'Antonio Moreno Taquería', 'Mexico'