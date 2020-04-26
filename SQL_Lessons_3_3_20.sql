-- UNION
-- used to combine 2 or more SELECT statements
-- select statements must produce the same number of columns
-- need to have the same data type, in the same order

SELECT [columns1] FROM [table1]
UNION
SELECT [columns2] FROm [table2];

-- [columns1] and [columns2] need to have the same amound
-- of columns with matching data types in order

select * from testDB.ping_pong
UNION
select * from testDB2.ping_pong;

select player, wins, losses from testDB.ping_pong
UNION
select player, wins, losses from testDB2.ping_pong;

-- by default UNION selects only distinct values

-- UNION ALL selects duplicate values

select player, wins, losses from testDB.ping_pong
where wins is not null and losses is not null
UNION ALL
select player, wins, losses from testDB2.ping_pong;

-- GROUP BY 

-- groups rows that have the same values for a given column
-- or columns
-- example: 'find the number of customers in each country'

-- most often used with aggregate functions:
-- (COUNT, MAX, MIN, SUM, AVG) to group the result set
-- by one or more columns

-- SYNTAX:
SELECT [columns]
FROM [table]
GROUP BY [columns];

-- example: 'find the number of customers in each country'
select country, count(*) from w3Customers group by country;

select country AS 'Country', count(*) AS 'Number of Customers' from w3Customers group by country order by count(*) desc;

-- find the sum balance value for each county
select county, sum(balance) from w3Customers group by county;

select city, sum(balance) from w3Customers group by city order by max(balance) desc;

-- find the average balance for each country 
select country, avg(balance) from w3Customers group by country order by avg(balance) desc;