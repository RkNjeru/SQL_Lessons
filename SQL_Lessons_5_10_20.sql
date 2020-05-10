-- SELECT INTO statement copies data from one table into a new table
-- Copy all columns into a new table
-- [database.table]

-- SELECT INTO SYNTAX
SELECT 
INTO [newtable] <IN [externaldb]>
FROM [oldtable]
WHERE [condition];


USE testDB;

CREATE TABLE ping_pong_old(
    id INT,
    player VARCHAR(50), 
    wins INT,
    loses INT
);

-- w/o IN DB
SELECT * 
INTO ping_pong_old 
FROM ping_pong;

-- with IN DB
SELECT * 
INTO ping_pong_old IN 'testDB2'
FROM ping_pong;

-- INSERT INTO SELECT copies data from one table and inserts it into another table
-- INSERT INTO SELECT

INSERT INTO [table2]
SELECT * FROM [table1]
WHERE [condition];

INSERT INTO [table2] ([column1], [column2], ...)
SELECT [column1], [column2], ...
FROM [table1]
WHERE [condition];

INSERT INTO ping_pong_old
SELECT * FROM ping_pong;

CREATE TABLE ping_pong_winners(
    id INT,
    player VARCHAR(50), 
    wins INT,
    loses INT
);

insert into ping_pong_winners
select * from ping_pong
where wins >= losses;

create table player_ids(
    id INT,
    first_name varchar(50),
    last_name varchar(50)
);

insert into player_ids (id, first_name)
select id, player from ping_pong;

-- CASE is like an IF-THEN-ELSE

-- CASE SYNTAX
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;

-- ping pong experience (vets vs amateurs) 
-- vet has played more than 50 games
-- id, player, experience
select 
id, 
player,
CASE 
    WHEN wins is null or losses is null THEN 'Amateur'
    WHEN (wins + losses) > 50 THEN 'Vet'
    ELSE 'Amateur'
END AS 'Experience'
FROM ping_pong;

-- ping pong total games
select id, player,
CASE 
    WHEN wins is null or losses is null THEN 0
    ELSE wins + losses
END AS 'GAMES_PLAYED'
from ping_pong;

select *,
CASE 
    WHEN wins is null or losses is null THEN 0
    ELSE wins + losses
END AS 'GAMES_PLAYED'
from ping_pong;


-- NULL Functions
-- IFNULL() ISNULL() COALESCE() NVL()
select 
    id, 
    player, 
    IFNULL(wins, 0), 
    IFNULL(losses, 0) 
FROM ping_pong;

-- mysql use pipes as concat
set sql_mode=PIPES_AS_CONCAT;

select 
    id,
    IFNULL(player, 'John_Doe_' || id) AS 'player',
    IFNULL(wins, 0) AS 'wins', 
    IFNULL(losses, 0) AS 'losses' 
FROM ping_pong;

INSERT INTO ping_pong
    VALUES (13, NULL, 20, 40);