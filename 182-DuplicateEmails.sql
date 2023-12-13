
-- LeetCode Problem Number - 182
-- Difficulty - Easy
-- PostgreSQL

SELECT email as Email
FROM Person
GROUP BY email
HAVING count(email) > 1;
