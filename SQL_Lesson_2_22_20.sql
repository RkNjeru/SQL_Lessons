-- LIKE
-- Used in a where clause instead of an operators like:
--     {=, >, <, <>}
-- WHERE full_name = 'John'; 
-- WHERE full_name = 'John Smith';
-- Special characters in SQL for strings:
--     {%, _}
-- % - The percent sign represents zero, one, or 
--     multiple characters
-- '%Smith' := any string that ends with 'Smith'
-- '%Smith%' := any string that has 'Smith' in it 
-- 'S%ith' 'Sjdkfdkjdkjkjith'
-- _ - The underscore represents a single character
-- 'S_ith' 'Smith' 'S3ith' 'Sbith' 
-- 'S__th' 'Smith' 'S34th' 'Sbbth'

-- WHERE full_name LIKE 'John Smith';
-- WHERE full_name LIKE 'John %'; 

-- [] Represents any single character within the brackets
-- h[oa]t finds hot and hat, but not hit

-- ^ Represents any character not in the brackets
-- h[^oa]t finds hit, but not hot and hat

-- - Represents a range of character
-- c[a-b]t finds cat and cbt

CREATE TABLE players(
    name varchar(20),
    age int
);

INSERT INTO players VALUES 
    ('Hassan', 21), ('Roy', 24), ('Will', 25), 
    ('John', 56), ('Celery', 29), ('Billie', 18);

-- '2007-05-06'

alter table players add column `league_enter_date` DATE;

-- ALIASES:= used to give a column in a table a temporary name
-- uses the 'AS' keyword
-- Only exists in result set and query
--     doesn't change the column in the table

-- FULLY QUALIFIED NAME:= has [table].[column]
-- select name from players;
-- select players.name from players;

-- update each row in the prof table to have only first name
-- Ex change 'Hugo Pernot' to 'Hugo' 

-- selecting data from more than one table

-- make a query that has a player's:
--  {name, age, wins and losses}

-- name and age are in the players table
-- select name, age from players;

-- wins and losses from the ping_pong
-- select wins, losses from ping_pong;

select 
    players.name, 
    players.age, 
    ping_pong.wins, 
    ping_pong.losses
from
    players,
    ping_pong
where
    players.name = ping_pong.player;

-- add all the professors to the ping_pong table
-- give them an id and wins and losses

Insert into ping_pong values (10,'Hugo', 34, 45),(11,'Mike', 56, 12), (12,'Robert',11,506
);

-- for the professors, make a query that has their:
-- name, college, wins and losses

select
    prof.name, 
    prof.college,
    ping_pong.wins,
    ping_pong.losses
from 
    prof,
    ping_pong
where 
    prof.name = ping_pong.player;

-- using an alias as a table name

select
    F.name AS 'Name',
    F.college AS 'University',
    G.wins AS 'Total Wins',
    G.losses AS 'Total Losses'
from 
    prof AS F,
    ping_pong AS G
where
    F.name = G.player;

CREATE TABLE ping_pong(
    id INT,
    player varchar(50),
    wins int,
    losses int
);

