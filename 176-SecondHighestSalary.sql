-- LeetCode Problem Number - 176
-- Difficulty - Medium
 
    WITH cte AS (
    SELECT *,
    CASE WHEN dense_rank() over(ORDER BY e.salary DESC) = 2 THEN e.salary
    ELSE NULL END AS SecondHighestSalary
    FROM Employee e
    )
    SELECT max(SecondHighestSalary) AS SecondHighestSalary
    FROM cte;
