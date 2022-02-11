create view vista_mostrar_pais as
select * from country;

select * from vista_mostrar_pais;

create view lista_artistas as
select concat(first_name, " ", last_name) as artista, count(*)  from actor
inner join film_actor on actor.actor_id=film_actor.actor_id
group by actor.actor_id order by last_name
limit 25;

select * from lista_artistas;

select * from lista_artistas having count(*)<33;

select * from lista_artistas where actor.last_name like "a%";

drop view lista_artistas;

create view vista_films as
select title, concat(actor.first_name, " ", actor.last_name) as artista, replacement_cost from film
inner join film_actor on film_actor.film_id=film.film_id
inner join actor on film_actor.actor_id=actor.actor_id
where replacement_cost between 15 and 27
order by replacement_cost;

select * from vista_films;

select * from vista_films where title like "B%";

alter view vista_films as 
select title, concat(actor.first_name, " ", actor.last_name), replacement_cost as artista from film
inner join film_actor on film_actor.film_id=film.film_id
inner join actor on film_actor.actor_id=actor.actor_id
where actor.first_name like ("%a")
order by replacement_cost desc;

select * from vista_films;