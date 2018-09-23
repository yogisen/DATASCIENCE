# creer la table cereminues


INSERT INTO ceremonies (Year, Host) VALUES (?;?)

(2010, "peter")
(2011, "Marcel")
(2013) "Jcques") ....
;


# contrainte de clé externe


PRAGMA foreign_keys = ON;

# relation one to manu avec la table nominations 

select nominations.category, nominations.nominee, nominations.movie, nominations.Characters, nominations.won, ceremonies.id
from nominations
inner join ceremonies
on nominations.year == ceremonies.year
;


select *
from nominations
limti 10


# supprimer et renomer des tables


drop table nom_table;

alter table nom_table_a_renommer
rename to nouveau_nom_table


# creer  une join table

create table movies_actors(id integer primary key, movie_id integer references movies(id), actor_id integer references actors(id) );



