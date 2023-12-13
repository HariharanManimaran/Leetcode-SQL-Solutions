-- LeetCode Problem Number - 184
-- Difficulty - Medium
-- PostgreSQL


SELECT d.name as Department, 
        e.name as Employee,
        e.salary as Salary 
FROM Employee e
JOIN (
    SELECT d.id,d.name,
        MAX(e.salary) as Salary
        FROM Department d
        JOIN Employee e ON 
        e.departmentId = d.id
        GROUP BY 1,2
        ) d
ON  d.id = e.departmentId
AND d.Salary = e.salary;
