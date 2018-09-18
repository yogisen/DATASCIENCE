select round (avg(population)3), avg (population_growth), avg (birth_rate), avg (death_rate) from facts;


select round(avg(population), 2), round(avg(population_growth), 2), round(avg(birth_rate), 2), round(avg(death_rate),2) from facts;


select round(avg(population), 2) from facts;
select round(avg(population_growth), 2)from facts;
select round(avg(birth_rate), 2) from facts;
select round(avg(death_rate),2) from facts;


select min	(population), min(population_growth), min (birth_rate), min(death_rate)from facts;
select max	(population), max(population_growth), max (birth_rate), max(death_rate)from facts;

select min	(population),max(population), min(population_growth), max(population_growth),min (birth_rate),max(birth_rate), min(death_rate), max(death_rate)from facts
where population>0 and population<20000000

select name,population,population *round((population_growth/100 +1),1)as popnext, population_growth from facts where population !='null' or population_growth !='null' ;

select round(population + population * (population_growth/100), 0)
from facts
where population >0 and population < 700000000
and population IS NOT NULL and population_growth is not null
;

select min (round(population + population * (population_growth/100), 0)),
max  (round(population + population * (population_growth/100), 0)),
avg  (round(population + population * (population_growth/100), 0))
from facts
where population >0 and population < 700000000
and population IS NOT NULL and population_growth is not null
;
select min (round(population + population * (population_growth/100), 0)),max  (round(population + population * (population_growth/100), 0)), avg  (round(population + population * (population_growth/100), 0))from facts where population >0 and population < 700000000 and population IS NOT NULL and population_growth is not null
;
 