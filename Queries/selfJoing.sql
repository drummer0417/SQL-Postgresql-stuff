SELECT c1.customer_id, c1.first_name, c1.last_name, c2.customer_id,c2.first_name, c2.last_name 
	FROM customer c1, customer c2
	WHERE c1.last_name = c2.first_name

	-- same as 