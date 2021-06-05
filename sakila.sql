select c.first_name, c.last_name, c.email, a.address, a.district, ci.city
from customer c, address a, city ci
where c.address_id = a.address_id
and a.city_id = ci.city_id
and ci.city_id=312;

select f.film_id, f.title, f.description, f.release_year, f.rating, f.special_features, c.name as genre 
from film f, category c, film_category fc
where f.film_id = fc.film_id
and fc.category_id = c.category_id
and c.name = 'comedy';

select a.actor_id, concat(a.first_name, ' ', a.last_name) as actor_name, f.title, f.description, f.release_year
from actor a, film f, film_actor fa
where a.actor_id = fa.actor_id
and fa.film_id = f.film_id
and a.actor_id = 5;

select c.first_name, c.last_name, c.email, c.store_id, a.address, a.district, ci.city, ci.city_id
from customer c, address a, city ci
where c.address_id = a.address_id
and a.city_id = ci.city_id
and c.store_id = 1
and ci.city_id in (1,42,312,459);

select f.title, f.description, f.release_year, f.rating, f.special_features 
from film f, actor a, film_actor fa
where f.film_id = fa.film_id
and fa.actor_id = a.actor_id
and a.actor_id = 15
and f.rating = 'G'
and f.special_features like '%behind the scenes%';


select f.film_id, f.title, a.actor_id, concat(a.first_name, ' ', a.last_name) as actor_name 
from film f, actor a, film_actor fa
where f.film_id = fa.film_id
and fa.actor_id = a.actor_id
and f.film_id = 369;

select f.film_id, f.title, f.description, f.release_year, f.rating, f.special_features, c.name as genre, f.rental_rate 
from film f, category c, film_category fc
where f.film_id = fc.film_id
and fc.category_id = c.category_id
and c.name = 'drama'
and f.rental_rate = 2.99;

select f.title, f.description, f.release_year, f.rating, f.special_features, c.name as genre, a.actor_id, concat(a.first_name, ' ', a.last_name) as actor_name  
from film f, category c, film_category fc, actor a, film_actor fa
where f.film_id = fc.film_id
and fc.category_id = c.category_id
and f.film_id = fa.film_id
and fa.actor_id = a.actor_id
and a.actor_id = 23
and c.category_id= 1;

    
   