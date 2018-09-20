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

# ajouter des colonnes

ALTER table

alter table nom_table
add nom_colonne dadatype;


alter table facts
add awesomeness integer;

alter table facts
add leader text;


# supprimer des colonnes

alter table facts
drop column leader

# creer une nouvelle table


create table nom_db.nom_table(colonne1 datatype1 primary key,
	coleonne2 datatype2,
	colonne3 datatype3,
	);


create table factbook3.learders(
id integer primary key,
name text,
country text,
);



#relations entre les tables

insert into learders
	values (1,"barack obama","usa");
select country
from learders
where name="barack obama";

select *
from facts
where name="usa";


create table leaders2(
id integer primary key,
name text,
country integer,
worth float
foreign key (country) references facts(id)

);


create table factbook3.state
(
id integer primary key,
name text,
area integer,
country integer
foreign key (country) references fact(id)


);
create table statess (

id integer primary key,
name text,
area integer,
country integer,
foreign key (country) references facts(id)

);
# INNER JOIN

select *
from statess
inner join facts
on statess.country == facts.id;

select *
from landmarks
inner join facts
on landmarks.country == facts.id;


# types de combinaison entre 2 tables
#inverse les colonnes
select *
from facts
inner join landmarks
on landmarks.country == facts.id;


LEFT OUTER JOIN 
RIGHT OUTER JOIN

















































































