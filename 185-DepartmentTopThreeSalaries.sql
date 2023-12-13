-- LeetCode Problem Number - 185
-- Difficulty - Hard
-- PostgreSQL



with cte as (
   select d.name as Department ,e.name as Employee,e.salary as Salary,
   Dense_Rank() Over(Partition by d.id Order by e.salary desc) as rnk
   from Department  d
   join Employee e on e.departmentId = d.Id
)select c.Department , c.Employee , c.Salary
from cte c
where c.rnk <= 3
order by 1,2;
