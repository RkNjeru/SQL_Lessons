-- AND 
select [columns] from [table] where [condition] AND [condition];

-- OR
select [columns] form [table] where [conditon] OR [condition];

-- NOT
select [columns] from [table] where NOT [conditon];

-- ORDER BY
select [columns] from [table] ORDER BY [columns]; 

-- multiple columns to order by
select [columns] from [table] order by <colummn1>, <column2>, ....;

select [columns] 
    from [table] 
    where [condition] 
    ORDER BY <column1>, <column2>, ....;

-- COMMIT
-- makes temporary changes permanent

-- ROLLBACK
-- un-does temporary changes

-- datatypes: INT, VARCHAR

-- CREATE TABLE
CREATE TABLE [table_name] (
    <colummn1> <datatype>, 
    <column2> <datatype>,
    ... );

CREATE TABLE prof 
    (id INT,
    name VARCHAR(50),
    college VARCHAR(40),
    login VARCHAR(25)
    );

INSERT INTO PROF VALUES 
(1, 'Fake Name', 'UGA', 'caubert'),
(2, 'Mike Dowell', 'Augusta', 'mdowell'),
(2, 'Robert Smith', 'Tech', 'rsmith');
 CREATE TABLE ping_pong
    (id INT,
    player VARCHAR(50),
    wins INT,
    loses INT);

-- INSERT INTO
INSERT INTO [table] (<column1>, <column2>, ...)
    VALUES ( <value1>, <value2>, ...);

INSERT INTO ping_pong (id, player, wins, losses)
    VALUES (1, 'Hassan', 2, 198);

INSERT INTO ping_pong (id, player, wins, losses)
    VALUES (2, 'Roy', 189, 3), (3, 'Will', 5, 181);

INSERT INTO ping_pong (player, id)
    VALUES ('John', 5);    

INSERT INTO ping_pong
    VALUES ('Kevin', 7);       

INSERT INTO ping_pong
    VALUES (6, 'Celery', 100, 100);

insert into ping_pong VALUES (8, NULL, NULL, NULL);

insert into ping_pong VALUES (9, 'Kevin', NULL, NULL);

insert into ping_pong (id) VALUES (9);

-- UPDATE

UPDATE [table] SET 
    <column1> = <value1>, 
    <column2> = <value2>;

UPDATE [table] SET
    <column1> = <value1>,
    <column2> = <value2>
    WHERE [condition];


update ping_pong SET
    losses = 0,
    wins = 0;

update ping_pong SET
    player = 'Tom'
    where id = 7;    

update ping_pong SET wins=5 where id = 1;

update ping_pong set 
    wins = -10,
    losses = 100
    where id = 3;


-- SET wins and losses equal to null for all players 
-- with an id > 3

Update ping_pong SET 
    losses= null,
    wins= null
    where id > 3;

-- DELETE
-- DELETE applies to entire rows 
DELETE FROM [table];

DELETE FROM [table] WHERE [condition];

delete from ping_pong where id = 6;

-- delete from ping_pong where player value is null
delete from ping_pong where player=null;

delete from ping_pong where player is null;