SELECT c.customer_id, c.first_name, c.last_name, p.payment_id, p.amount
	from customer AS c
 	INNER JOIN payment AS p 
 		ON c.customer_id = p.customer_id

-- is equal to;

SELECT c.customer_id AS klant, c.first_name, c.last_name, p.payment_id, p.amount
	from customer c, payment p
	WHERE c.customer_id = p.customer_id
 
SELECT a.address, c.city 
	FROM address a
	INNER JOIN city c ON a.city_id = c.city_id
	
SELECT cu.first_name, cu.last_name, cu.email, a.address, a.postal_code, ci.city
	FROM customer cu
INNER JOIN address a ON cu.address_id = a.address_id
INNER JOIN city ci ON ci.city_id = a.city_id
ORDER BY cu.first_name, cu.last_name

SELECT f.film_id, f.title, i.inventory_id, i.film_id as inventory_film_id
	FROM film f
	LEFT OUTER JOIN inventory i ON f.film_id = i.film_id
	ORDER BY f.film_id

SELECT f.film_id, f.title, i.inventory_id, i.film_id as inventory_film_id
	FROM film f
	LEFT OUTER JOIN inventory i ON f.film_id = i.film_id
	WHERE i.film_id IS NULL -- WHERE i.inventory_id IS NULL (geeft zelfde resultaat)
	ORDER BY f.film_id
	