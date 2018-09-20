# normalisation des bases de données

select	year, host, category, nominee, movie, character, wom
from ceremonies
inner join nominations
on nominations.ceremony_id == ceremonies.id


# les types de relation entre tables
# one to many une assurance peut avoir plusieurs assurés 1 assuré peut avoir 1 seule assurance
#many to many

# reqyete syr ye base de données normalisees

select ceremonies.year, ceremonies.host, nominations.movie, nominations.nominee
from nominations
inner join ceremonies
on nominations.ceremony_id == ceremonies.id
where ceremonies.year == 2010 and nominations.wom ==1
;


select nominations.movie, ceremonies.year from nominations INNER join ceremonies on nominations.ceremony_id == ceremonies.id WHERE nominations.nominee = "Natalie Portman"


# creer une join table ou table intermediaire


create table movies_actors(
id integer primary key,
movie_id integer references movies(id),
actor_id integer references actors(id),

);

select *
from movies
inner join movies_actors on movies.id == movies_actors.movie_id


inner join actors on movies_actors.actor_id == actors.id
;


select actors.actor
from movies
inner join movies_actors on movies.id == movies_actors.movie_id
inner join actors on movies_actors.actor_id == actors.id
where movies.movie =="invictus"
;

select movies.movie
from movies
inner join movies_actors on movies.id == movies_actors.movie_id
inner join actors on movies_actors.actor_id == actors.id
where actors.actor =="Natalie Portman"

select movies.movie from movies inner join movies_actors on movies.id == movies_actors.movie_id inner join actors on movies_actors.actor_id == actors.id where actors.actor =="Natalie Portman"












