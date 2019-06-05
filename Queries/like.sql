select * from customer where first_name like 'K___y'

select count(amount) from payment where amount > 5;
select count(*) from actor where first_name like 'P%'
select * from actor order by first_name
select DISTINCT district from address
SELECT * FROM film 	WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15.99
	ORDER BY replacement_cost DESC
SELECT count(*) FROM film WHERE title like  '%Truman%'
Select AVG(amount) from payment
Select ROUND(sum(amount),2) from payment
select * from payment
