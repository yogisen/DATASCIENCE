
select count(birth_rate) from facts;

select min(population_growth), name from facts where population_growth != 0;

select max(death_rate), name from facts where death_rate != 0;

select avg(area_water) from facts;

select sum(area_land) from facts;

select avg(population_growth from facts where population > 1000000)

select count (distinct birth_rate) from facts;

select avg (distinct birth_rate) from facts;

select (birth_rate + migration_rate ) / death_rate from facts;

select Major_category, sum(employed)
from recent_grads
group by Major_category

select Major_category, avg(ShareWomen)*100 as rename
from recent_grads
group by Major_category

select sum(Men) as total_men,sum(Women) as total_women
from recent_grads

select Major_category, avg(Employed) / avg(total) as share_employed
from recent_grads
group by Major_category
having share_employed > 0.8


select Major_category, avg (Low_wage_Jobs) / avg(Total) as Share_low_wage
from recent_grads
group by Major_category
having Share_low_wage >0.1


select ShareWomen, round(ShareWomen, 3) as arrondi
from recent_grads































