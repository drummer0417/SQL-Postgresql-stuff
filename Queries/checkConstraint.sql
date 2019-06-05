
CREATE TABLE users(
	id serial PRIMARY KEY,
	first_name VARCHAR(50),
	birth_date DATE CHECK (birth_date > '1900-01-01'),
	join_date DATE CHECK (join_date > birth_date),
	salary integer CHECK (salary > 0)
);
SELECT * FROM users;

INSERT INTO users (first_name, birth_date, join_date, salary)
	VALUES('Piet', '1981-05-15', '1999-11-13', 110);
	
SELECT * FROM users;