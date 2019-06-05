-- 1 How can you retrieve all the information from the cd.facilities table?
select * from cd.facilities

-- 2 You want to print out a list of all of the facilities and their cost to members. How would you retrieve a list of only facility names and costs?
select name, membercost from cd.facilities

-- 3 How can you produce a list of facilities that charge a fee to members?
select * from cd.facilities where membercost > 0

-- 4 How can you produce a list of facilities that charge a fee to members, 
--   and that fee is less than 1/50th of the monthly maintenance cost? Return the facid, 
--   facility name, member cost, and monthly maintenance of the facilities in question.
select facid, name, membercost, monthlymaintenance
	FROM cd.facilities
	where membercost < monthlymaintenance / 50.0
	
-- 5 How can you produce a list of all facilities with the word 'Tennis' in their name?
SELECT * FROM cd.facilities WHERE name LIKE '%Tennis%'

-- 6 How can you retrieve the details of facilities with ID 1 and 5? Try to do it without using the OR operator.
SELECT * FROM cd.facilities WHERE facid IN (1, 5)

-- 7 How can you produce a list of members who joined after the start of September 2012? 
--   Return the memid, surname, firstname, and joindate of the members in question.
SELECT memid, surname, firstname, joindate FROM cd.members WHERE joindate >= '2012-09-01' ORDER BY joindate

-- 8 How can you produce an ordered list of the first 10 surnames in the members table? The list must not contain duplicates.
SELECT DISTINCT surname FROM cd.members
	ORDER BY surname
	LIMIT 10;
	
-- 9 You'd like to get the signup date of your last member. How can you retrieve this information?
SELECT * FROM cd.members
	ORDER BY joindate DESC 
	LIMIT 1
	
SELECT MAX(joindate) AS latest FROM cd.members

-- 10 Produce a count of the number of facilities that have a cost to guests of 10 or more.
SELECT count(*) FROM cd.facilities
	WHERE guestcost >= 10

-- 11 Skip this one, no question for #11.

-- 12 Produce a list of the total number of slots booked per facility in the month of September 2012. 
--    Produce an output table consisting of facility id and slots, sorted by the number of slots.4
SELECT facid, SUM(slots) FROM cd.bookings 
	WHERE starttime BETWEEN '2012-09-01' AND '2012-09-30'
	GROUP BY facid
	ORDER BY SUM(slots) DESC

-- 13 Produce a list of facilities with more than 1000 slots booked. 
--    Produce an output table consisting of facility id and total slots, sorted by facility id.
SELECT facid, SUM(slots) FROM cd.bookings
	GROUP BY facid
	HAVING  SUM(slots) > 1000
	ORDER BY facid 
	
-- 14 How can you produce a list of the start times for bookings for tennis courts, for the date '2012-09-21'? 
--    Return a list of start time and facility name pairings, ordered by the time.
SELECT b.starttime, f.name FROM cd.bookings AS b
		INNER JOIN cd.facilities AS f ON b.facid = f.facid
	WHERE starttime BETWEEN '2012-09-21' AND '2012-09-22' 
		AND b.facid IN (SELECT facid FROM cd.facilities WHERE name LIKE '%Tennis%')
	ORDER BY starttime

-- 15 How can you produce a list of the start times for bookings by members named 'David Farrell'? 
SELECT * FROM cd.bookings 
WHERE memid IN (SELECT memid from cd.members WHERE firstname || ' ' || surname = 'David Farrell')


