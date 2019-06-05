
-- Applies onn db Exercises, schema public!!

DROP TABLE IF EXISTS link;
DROP TABLE IF EXISTS urls;

CREATE TABLE link(
	id SERIAL PRIMARY KEY,
	title VARCHAR(500) NOT NULL,
	url VARCHAR(500) NOT NULL UNIQUE
);

ALTER TABLE link 
	ADD COLUMN active BOOLEAN;

ALTER TABLE link
	DROP COLUMN active;

ALTER TABLE link
	RENAME COLUMN title TO new_title;
	
SELECT * FROM link;

ALTER TABLE link 
	RENAME TO urls;
	
SELECT * FROM urls;


