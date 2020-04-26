create table COUNTER_TOP_PROJECTS(
    id int,
    customername varchar(50),
    city varchar(50),
    squarefootage int,
    price int,
    material varchar(10)
);

insert into COUNTER_TOP_PROJECTS (id, customername, city, squarefootage, price, material) 
values
    (1, 'Joe', 'Atlanta', 50, 2000, 'Granite'),
    (2, 'Frank', 'Marietta', 38, 1600, 'Quartz'),
    (3, 'Bill', 'Kennesaw', 43, 1700, 'Granite'),
    (4, 'Will', 'Roswell', 55, 2100, 'Marble'),
    (5, 'Hassan', 'Marietta', 60, 2200, 'Quartzite'),
    (6, 'Roy', 'Atlanta', 30, 1500, 'Quartz'),
    (7, 'Nicole', 'Roswell', 40, 1650, 'Marble'),
    (8, 'Alex', 'Kennesaw', 70, 2300, 'Quartzite'),
    (9, 'John', 'Marietta', 51, 1800, 'Marble'),
    (10, 'Chris', 'Atlanta', 55, 2200, 'Granite')
;

-- HAVING

-- The HAVING clause was added to SQL because the WHERE keyword 
-- could not be used with aggregate functions.

SELECT [columns]
FROM [table]
GROUP BY [columns]
HAVING [condition];

select city, count(*) from COUNTER_TOP_PROJECTS group by city;

-- find sum price for each city
select city, sum(price) as 'TOTAL_PRICE' 
from COUNTER_TOP_PROJECTS 
group by city 
having sum(price) >= 4000
order by 'TOTAL_PRICE';

-- find sum price for each material
select material, sum(price) as 'TOTAL_PRICE'
from COUNTER_TOP_PROJECTS
group by material
having sum(price) > 5000
order by 'TOTAL_PRICE';


select material, sum(price) as 'TOTAL_PRICE'
from COUNTER_TOP_PROJECTS
group by material
having min(price) >= 2000
order by 'TOTAL_PRICE';
