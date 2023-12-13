-- LeetCode Problem Number - 181
-- Difficulty - Medium
-- PostgreSQL

SELECT e.Name AS Employee
FROM Employee e
JOIN Employee e2 ON e.managerID = e2.id AND e.salary > e2.salary;

