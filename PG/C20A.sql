select concat (first_name, " ", last_name) as Cliente, sum(payment.amount) as Total_gastado, count(*) as cantidad_alquileres from customer
inner join payment on payment.customer_id=customer.customer_id
group by customer.customer_id;

select concat (first_name, " ", last_name) as Cliente, sum(payment.amount) as Total_gastado, count(*) as cantidad_alquileres from customer
inner join payment on payment.customer_id=customer.customer_id
group by customer.customer_id
having Total_gastado>150;

select extract(month from payment.payment_date) as mes, sum(payment.amount) as Total_gastado, count(*) as cantidad_alquileres, payment_date from customer
inner join payment on payment.customer_id=customer.customer_id
group by mes
having extract(year from payment.payment_date)="2005";

select inventory_id as Inventario, count(*) as cantidad from rental
group by Inventario
order by cantidad desc limit 5;

select store.store_id as Tienda, extract(month from payment.payment_date) as mes, count(*) as cantidad, sum(payment.amount) as Total_recaudado from store
inner join inventory on inventory.store_id=store.store_id
inner join rental on rental.inventory_id=inventory.inventory_id
inner join payment on payment.rental_id=rental.rental_id
group by store.store_id and mes;

select film.title as Película, sum(payment.amount) as ingresos, count(*) from film
inner join inventory on inventory.film_id=film.film_id
inner join rental on rental.inventory_id=inventory.inventory_id
inner join payment on payment.rental_id=rental.rental_id
group by film.film_id
order by ingresos desc limit 10;

select film.title as Película, sum(payment.amount) as ingresos, count(*) from film
inner join inventory on inventory.film_id=film.film_id
inner join rental on rental.inventory_id=inventory.inventory_id
inner join payment on payment.rental_id=rental.rental_id
group by film.film_id
order by ingresos limit 10;

select concat (first_name, " ", last_name) as Cliente, count(*) as cantidad_alquileres from customer
left join payment on payment.customer_id=customer.customer_id
where payment.customer_id is null
group by customer.customer_id;

# preguntar si está bien: Nivel avanzado: El jefe de stock quiere discontinuar las películas (film) con menos alquileres (rental). ¿Qué películas serían candidatas a discontinuar? Recordemos que pueden haber películas con 0 (Cero) alquileres.
select film.title as Película, sum(payment.amount) as ingresos, count(*) from film
inner join inventory on inventory.film_id=film.film_id
right join rental on rental.inventory_id=inventory.inventory_id
inner join payment on payment.rental_id=rental.rental_id
group by film.film_id
order by count(*);