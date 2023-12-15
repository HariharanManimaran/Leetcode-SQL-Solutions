-- LeetCode Problem Number - 196
-- Difficulty - Easy
-- PostgreSQL

WITH CTE AS (SELECT id , email
            ,row_number() OVER(PARTITION BY EMAIL ORDER BY ID) AS num
            FROM person)
DELETE FROM person 
WHERE id IN (SELECT id FROM cte WHERE num > 1);
