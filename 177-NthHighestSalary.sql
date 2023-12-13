-- LeetCode Problem Number - 177
-- Difficulty - Medium
-- PostgreSQL

CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
  RETURN QUERY (
  
    WITH cte AS (
    SELECT *,
    CASE WHEN dense_rank() over(ORDER BY e.salary DESC) = N THEN e.salary
    ELSE NULL END AS SecondHighestSalary
    FROM Employee e
    )
    SELECT max(SecondHighestSalary) AS SecondHighestSalary
    FROM cte      
  
  );
END;
$$ LANGUAGE plpgsql;
