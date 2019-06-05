SELECT customer_id, count(*) FROM payment
	GROUP  BY customer_id
	HAVING count(*) >= 40
	ORDER  BY customer_id;
	
SELECT rating, ROUND(AVG(rental_duration),2)
	FROM film
	GROUP BY rating
	HAVING AVG(rental_duration) > 5
	ORDER BY rating;
