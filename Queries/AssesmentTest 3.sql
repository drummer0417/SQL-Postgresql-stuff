DROP DATABASE IF EXISTS "School";

CREATE DATABASE "School"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    CONNECTION LIMIT = -1;
		
DROP TABLE IF EXISTS teachers;

CREATE TABLE teachers (
	teacher_id serial PRIMARY KEY, 
	first_name VARCHAR(100) NOT NULL, 
	last_name VARCHAR(100) NOT NULL,
	homeroom_number INT NOT NULL, 
	department VARCHAR(100) NOT NULL, 
	email VARCHAR(100) UNIQUE ,
	phone VARCHAR(20)
);
		
DROP TABLE IF EXISTS students;
CREATE TABLE students(
	student_id serial PRIMARY KEY, 
	first_name VARCHAR(100) NOT NULL, 
	last_name VARCHAR(100) NOT NULL, 
	homeroom_number INT,
	phone VARCHAR(20) NOT NULL UNIQUE,
	email VARCHAR(100) UNIQUE ,
	graduation_year INT
);
-- voeg toe: Mark Watney (student_id=1) who has a phone number of 777-555-1234 and doesn't have an email. He graduates in 2035 and has 5 as a homeroom number.
INSERT INTO students 
	(first_name, last_name, phone, graduation_year, homeroom_number) 
	VALUES ('Mark', 'Watney', '777-555-1234', 2035, 5)
	RETURNING *;
	
-- voeg toe: Jonas Salk (teacher_id = 1) who as a homeroom number of 5 and is from the Biology department. 
-- His contact info is: jsalk@school.org and a phone number of 777-555-4321.
INSERT INTO teachers 
(teacher_id, first_name, last_name, homeroom_number, department, email, phone)
VALUES(22334, 'Hans', 'van Meurs', 511, 'Math', 'hans@school.org', '777-666-1234')
RETURNING *;

