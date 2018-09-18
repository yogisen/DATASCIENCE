# les dates en SQL

select *
from fact
where creates_at < "2015-11-01" and creates_at > "2015-10-30"
;



select col1, col2, ....
from table
where colonne_date < "date1"
and colonne_date > "date2"


# les types de données

# integer
# real et float
# test et varchar(255)
# datetime
# type de données 
pragma table_info(facts)


# primay keys 

select *
from fact
order by id desc
limit 1 ;


# inserer des données dans une table
insert into nom_table
values [vlauer1, valeur2,...]

insert into facts
values(262, "ms", "mars", 600000,40000,20000,50000000,100,50,10,20,"2017-02-25 12:00:00","2017-02-25 12:00:00")


# valeurs manquantes

null 

select *
from nom_table
where nom_colonne IS NULL


select * 
from facts
where area IS NULL;

# modifier des valeurs


update
	update nom_table
		set colonne1 = vlauer1, coleonne2 = valeur2
		where colonne1 = valeur3,

update facts
set name="new zeland", code="nz"
where name="australia"

# supprimer des lignes

delete

delete from nom_table
	where colonne1=valeurs1;


delete from facts
	where name="brazil"


	




























