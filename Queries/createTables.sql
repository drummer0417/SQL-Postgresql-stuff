

-- Applies onn db Exercises, schema public!!

DROP TABLE IF EXISTS account ;
CREATE TABLE account(
		user_id serial  PRIMARY KEY,
		username VARCHAR(50) UNIQUE NOT NULL,
		password VARCHAR(50) NOT NULL,
		email VARCHAR(500) NOT NULL,
		created_on TIMESTAMP NOT NULL,
		last_login TIMESTAMP
);

DROP TABLE IF EXISTS role;
CREATE TABLE role(
	role_id serial PRIMARY KEY,
	role_namwe VARCHAR(255) UNIQUE NOT NULL
);

DROP TABLE IF EXISTS account_role;
CREATE TABLE account_role(
	user_id INTEGER NOT NULL,
	role_id INTEGER NOT NULL,
	grant_date TIMESTAMP WITHOUT TIME ZONE,
	PRIMARY KEY(user_id, role_id)
);

DROP TABLE IF EXISTS leads;
CREATE TABLE leads(
	userid serial PRIMARY KEY,
	username VARCHAR(100) NOT NULL UNIQUE,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(255) NOT NULL UNIQUE,
	signup_date TIMESTAMP NOT NULL,
	minutes_spend INTEGER
);

SELECT * FROM leads;

DROP TABLE IF EXISTS leads_copy;
CREATE TABLE leads_copy (LIKE leads);
SELECT * FROM leads_copy;
