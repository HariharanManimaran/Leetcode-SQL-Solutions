-- LeetCode Problem Number - 183
-- Difficulty - Easy
-- PostgreSQL

select c.name as Customers 
from Customers c
where c.id not in (select customerId from Orders);
