--How many actors are there with the last name 'Wahlberg'?
select first_name, last_name
from actor
where last_name = 'Wahlberg';



--How many payments were made between $3.99 & $5.99?
select customer_id, amount
from payment
where amount BETWEEN 3.99 and 5.99;



--What film does the store have the most of? (search in inventory)
select store_id, count(distinct film_id), film_id
from inventory
group by store_id, film_id
order by count(film_id) desc;

select title, count(title), film_id
from film
group by film_id
order by film_id desc;



--How many customers have the last name 'William'?
--NONE with 'William', 1 with 'Williams'
select first_name, last_name 
from customer
where last_name = 'Williams';




--What store employee (get the id) sold the most rentals?
--figure out which of the staff_id's has the most amount of entries
select staff_id, count(rental_id)
from rental
group by staff_id
order by count(rental_id) desc;




--How many different district names are there?
select count(district), district
from address
group by district
order by count(district) desc;

select count(distinct district)
from address;



--What film has the most actors in it?
--(use film_actor table and get film_id)
SELECT COUNT(actor_id), film_id
FROM film_actor
GROUP BY film_id
HAVING COUNT(actor_id) > 10
order by count(actor_id) desc;

select film_id, actor_id
from film_actor
where film_id = 508;




--From store_id, how many customers have a last name
--ending with 'es'? (use customer table)
select last_name, store_id 
from customer
where last_name like '%es'
order by store_id;

select count(last_name)
from customer
where last_name  like '%es'
order by count(last_name);



--How many payment amounts (4.99, 5.99, etc.) had a number
--of rentals above 250 for customers with ids between
--380 and 430? (use group by and having > 250)
--Is answer NONE?
select amount, customer_id
from payment
where customer_id between 380 and 430
group by amount, customer_id
having count(rental_id) > 250
order by amount desc;



--Within the film table, how many rating categories are there?
--And what rating has the most movies total?
select count(film_id), rating
from film
group by rating
order by count(film_id) desc;





