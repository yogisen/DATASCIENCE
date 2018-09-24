# executer des requetes sql en psql


create database db_nom;


\q = quit
\? HELP

\l
\du
\dp

# creer des utilisateurs $

create role username with  createdb createrole superuser login password 'password';



	# ajouter des permissions

grant select on nom_table to nom_utilisateur;


	grant all privileges on nom_table to nom_utilisateur 

# retirer des permissions 


revoke select on nom_table from nom_utilisateur

# superusers

create role nom_utilisateur with superuser;


# supprimer un utilisater une table  une base de donnée



drop role username
drop table nom;
drop database nom;


bank_accounts-# create table notesqlshel (id integer primary key, text text);
ERROR:  syntax error at or near "create"
LINE 2: create table notesqlshel (id integer primary key, text text)...
        ^
bank_accounts=# create table notesqlshel (id integer primary key, text text);
CREATE TABLE










