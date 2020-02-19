select the top 2 players from ping_pong table who have more 
than 2 wins

select * from ping_pong where wins > 2 limit 2;


select all the players from ping_pong who have more than 2 wins

select * from ping_pong where wins > 2;

-- MIN Syntax
SELECT MIN(column_name) FROM [table] where condition;

-- MAX Syntax
SELECT MAX(column_name) FROM [table] where condition;

-- pick the most wins of players with id greater than 4. 
select max(wins) from ping_pong where id > 4;

-- COUNT syntax

SELECT COUNT([column_name]) FROM [table] WHERE [condition];
-- how many players have played a game? 
select count(player) from ping_pong where wins>=1 or losses>=1;

-- AVG() syntax
-- average function will return the average value of a 
-- numeric column

SELECT AVG([column_name]) from [table] where [condition];

-- select average number of wins for Hassan and Will
select AVG(wins) from ping_pong where player = 'Hassan' or player = 'Will';

-- IN Operator 
SELECT [columns] 
    from [table] 
    where [column_name] IN (<value1>, <value2>, ...);

select * from ping_pong where player = 'Hassan' or player = 'Will';

select * from ping_pong where player IN ('Hassan', 'Will');

-- SUM() syntax
-- returns the total sum of a numeric column

SELECT SUM([column_name]) 
    FROM [table]
    WHERE [condition];

-- select the total wins in ping_pong table
select sum(wins) from ping_pong;

-- select the total wins for Hassan, Will and Roy
-- use ID to identify players
select sum(wins) from ping_pong where id in (1,2,3);
