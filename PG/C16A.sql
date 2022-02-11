select first_name as nombre, last_name as apellido from actor limit 5; #no se a que se refiere con "disponible"
select first_name as nombre, last_name as apellido, email from customer where active=0;
select title as título, release_year as año, description as descripción from film where rental_duration>5 order by rental_duration desc;
select * from rental where rental_date between "2005-05-01" and "2005-05-31";
select count(*) as cantidad from rental;
select sum(amount) as total, count(*) as cantidad, avg(amount) as promedio from payment;

select first_name as nombre, last_name as apellido, sum(amount) as gastan, count(*) from customer 
inner join payment on customer.customer_id=payment.customer_id
group by payment.customer_id
order by gastan desc limit 10;

select customer_id, count(*), sum(amount) from payment group by customer_id having sum(amount)>150 ;

select extract(month from rental_date) as mes, count(*) as cantidad, sum(payment.amount) as total from rental 
inner join payment on rental.rental_id=payment.rental_id
where year(rental_date)="2005" group by mes

