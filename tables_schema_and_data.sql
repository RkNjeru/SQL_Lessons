-- databases
create database testDB;
create database testDB2;

-- tables
create table counter_top_projects (
    id int,
    customername varchar(50),
    city varchar(50),
    squarefootage int,
    price int,
    material varchar(10)
);

create table ping_pong(
    id int,
    player varchar(50),
    wins int,
    losses int
);

create table ping_pong_old(
    id int,
    player varchar(50),
    wins int,
    losses int
);

create table ping_pong_winners(
    id int,
    player varchar(50),
    wins int,
    losses int
);

create table player_ids(
    id int,
    first_name varchar(50),
    last_name varchar(50)
);

create table players(
    name varchar(20),
    age int,
    league_enter_date date
);

create table prof(
    id int,
    name varchar(50),
    college varchar(40),
    login varchar(25)
);

create table w3customers(
    id int,
    storename varchar(300),
    contactname varchar(200),
    address varchar(300),
    city varchar(100),
    postalcode varchar(100),
    country varchar(100),
    balance int
);

-- data

-- counter_top_projects
insert into counter_top_tables values(1, 'Joe', 'Atlanta', 50, 2000, 'Granite');
insert into counter_top_tables values(2, 'Frank', 'Marietta', 38, 1600, 'Quartz');
insert into counter_top_tables values(3, 'Bill', 'Kennesaw', 43, 1700, 'Granite');
insert into counter_top_tables values(4, 'Will', 'Roswell', 55, 2100, 'Marble');
insert into counter_top_tables values(5, 'Hassan', 'Marietta', 60, 2200, 'Quartzite');
insert into counter_top_tables values(6, 'Roy', 'Atlanta', 30, 1500, 'Quartz');
insert into counter_top_tables values(7, 'Nicole', 'Roswell', 40, 1650, 'Marble');
insert into counter_top_tables values(8, 'Alex', 'Kennesaw', 70, 2300, 'Quartzite');
insert into counter_top_tables values(9, 'John', 'Marietta', 51, 1800, 'Marble');
insert into counter_top_tables values(10, 'Chris', 'Atlanta', 55, 2200, 'Granite');

-- ping_pong
insert into ping_pong values (1, 'Hassan', 2, 198);
insert into ping_pong values (2, 'Roy', 189, 3);
insert into ping_pong values (3, 'Will', 5, 181);
insert into ping_pong values (5, 'John', NULL, NULL);
insert into ping_pong values (6, 'Celery', 100, 100);
insert into ping_pong values (8, NULL, NULL, NULL);
insert into ping_pong values (9, 'Kevin', NULL, NULL);
insert into ping_pong values (9, 'Kevin', NULL, NULL);
insert into ping_pong values (10, 'Hugo', 34, 45);
insert into ping_pong values (11, 'Mike', 56, 12);
insert into ping_pong values (12, 'Robert', 11, 506);
insert into ping_pong values (13, NULL, 20, 40);

-- ping_pong_old
insert into ping_pong_old values (1, 'Hassan', 2, 198);
insert into ping_pong_old values (2, 'Roy', 189, 3);
insert into ping_pong_old values (3, 'Will', 5, 181);
insert into ping_pong_old values (5, 'John', NULL, NULL);
insert into ping_pong_old values (6, 'Celery', 100, 100);
insert into ping_pong_old values (8, NULL, NULL, NULL);
insert into ping_pong_old values (9, 'Kevin', NULL, NULL);
insert into ping_pong_old values (9, 'Kevin', NULL, NULL);
insert into ping_pong_old values (10, 'Hugo', 34, 45);
insert into ping_pong_old values (11, 'Mike', 56, 12);
insert into ping_pong_old values (12, 'Robert', 11, 506);

-- ping_pong_winners
insert into ping_pong_winners values(2, 'Roy', 189, 3);
insert into ping_pong_winners values(6, 'Celery', 100, 100);
insert into ping_pong_winners values(11, 'Mike', 56, 12);

-- player_ids
insert into player_ids values (1, 'Hassan', NULL);
insert into player_ids values (2, 'Roy', NULL);
insert into player_ids values (3, 'Will', NULL);
insert into player_ids values (5, 'John', NULL);
insert into player_ids values (6, 'Celery', NULL);
insert into player_ids values (8, ' NULL', NULL);
insert into player_ids values (9, 'Kevin', NULL);
insert into player_ids values (9, 'Kevin', NULL);
insert into player_ids values (10, 'Hugo', NULL);
insert into player_ids values (11, 'Mike', NULL);
insert into player_ids values (12, 'Robert', NULL);

-- prof
insert into prof values (1, 'Hugo', 'UGA', 'caubert');
insert into prof values (2, 'Mike', 'Augusta', 'mdowell');
insert into prof values (3, 'Robert', 'Tech', 'rsmith');

-- w3Customers in separate file