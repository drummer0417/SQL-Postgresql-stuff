DROP VIEW IF EXISTS customer_address;

CREATE VIEW customer_address AS
	SELECT c.customer_id, c.first_name, c.last_name, c.email, active, c.last_update AS last_customer_update,
	a.address, a.address2, a.city_id, a.postal_code, a.phone, a.last_update AS last_address_update
		FROM customer AS c
		JOIN address AS a ON c.customer_id = a.address_id;
		
 SELECT * FROM customer_address;
 
 DORP VIEW IF EXISTS customer_address;
 
 ALTER VIEW customer_info RENAME TO customer_info;
 SELECT * FROM customer_info;
 