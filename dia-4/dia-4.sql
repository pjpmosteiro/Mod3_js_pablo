-- INSERT INTO actor (first_name, last_name) 
-- values ('Marcos', 'Martinez');
-- INSERT INTO actor (first_name, last_name)
-- values ('Marcos Javier', 'Martinez Ramos');
-- update actor set
-- first_name='Marcos J',
-- last_name='Martinez Ramos'
-- where actor_id=201;
-- 
-- delete actor where actor_id=203;
-- INSERT INTO actor (first_name, last_name)
-- values ('Marcos Javier 204', 'Martinez Ramos');
-- delete from actor where actor_id=200;

-- INSERT INTO film
-- (`title`,
-- `description`,
-- `release_year`,
-- `language_id`,
-- `original_language_id`,
-- `rental_duration`,
-- `rental_rate`,
-- `length`,
-- `replacement_cost`,
-- `rating`,
-- `special_features`)
-- VALUES
-- ('Mi vida en colores',
-- 'La vida vista despues de pasar una semana en cambados.',
-- 2019,
-- 1,
-- 3,
-- 5,
-- 2.12,
-- 420,
-- 200.43,
-- 'PG-13',
-- 'Commentaries,Deleted scenes')
-- ;

-- insert into film_actor (film_id, actor_id)
-- values (1001,23),(1001,201),(1001,3);

-- INSERT INTO film_category
-- (`film_id`,
-- `category_id`,
-- `last_update`)
-- VALUES
-- (1001,
-- 6,
-- current_timestamp());
-- select * from film_list;+

-- select title as Titulo, release_year as "Año"
-- from film;

-- select film_id as FID, title as Titulo, release_year as `Año Creacion`, rental_rate
-- from film
-- where 
-- film_id < 500
-- or
-- rental_rate > 1
-- and language_id = 4;

-- select film_id as FID, title as Titulo, release_year as `Año Creacion`, length as `Duracion`, rental_rate
-- from film
-- order by length desc, rental_rate;
-- select title, count(*) as cantidadActores, avg(length) as duracionmedia
-- from film as f
-- inner join film_actor as fa on f.film_id= fa.film_id
-- inner join actor as a on a.actor_id = fa.actor_id
-- group by title
-- having count(*)>6
-- order by cantidadActores, title
-- ;
-- select release_year, avg(length)
-- from film
-- group by release_year;

-- ver todas las pelis, solo titulo, y su categoría


