SELECT customer_id, SUM(amount) FROM payment
	WHERE staff_id = 2
	GROUP BY customer_id
	HAVING SUM(amount) > 110;

SELECT count(DISTINCT title) FROM film 
	WHERE title LIKE 'J%'; 
	
SELECT first_name, last_name FROM customer 
	WHERE first_name like 'E%'
	AND address_id < 500 
	ORDER BY customer_id DESC
	LIMIT 1;
	
