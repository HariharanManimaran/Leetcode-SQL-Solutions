-- LeetCode Problem Number - 175 
-- Difficulty - Easy

 -- This approach involves using a LEFT JOIN operation in SQL to combine records from the 'person' and 'address' tables.

select firstName , lastName , city, state
from Person p
Left join Address a on p.personId = a.personId;
