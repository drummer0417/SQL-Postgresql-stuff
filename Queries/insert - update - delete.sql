

-- Applies onn db Exercises, schema public!!

INSERT INTO leads (username   , first_name, last_name  , email        , signup_date , minutes_spend)
	VALUES(            'user2', 'Jaapie'    , 'Doedel', 'jd.com', current_date, 10),
				(            'SomeoneElse', 'Kees'    , 'Aaa', 'ka@gm.com', current_date, 1330);

SELECT * FROM leads

-- Insert fron other table ---> copy
INSERT INTO leads_copy 	
	SELECT * FROM leads;
	
SELECT * FROM leads_copy;

UPDATE leads
	SET email = 'jd@iets.com'
	WHERE userid =5;
	
SELECT * FROM leads

UPDATE leads
	SET minutes_spend = minutes_spend + 110
	WHERE userid = 5
	RETURNING *;
	
DELETE FROM leads_copy
	WHERE userid  between 2 AND 5
	RETURNING *;