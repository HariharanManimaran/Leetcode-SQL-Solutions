-- LeetCode Problem Number - 180
-- Difficulty - Medium
-- PostgreSQL

select d.num as ConsecutiveNums
from (select distinct 
case when l.num = l2.num and l.num = l3.num 
     then l.num
     end as num
from Logs l 
left join Logs l2 on l2.id = l.id+1  
left join logs l3 on l3.id = l.id+2) as d
where d.num is not null;
