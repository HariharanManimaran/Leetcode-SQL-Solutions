-- LeetCode Problem Number - 178
-- Difficulty - Medium
-- PostgreSQL

SELECT Score as score,DENSE_RANK() OVER(ORDER BY Score DESC) as rank
FROM Scores
ORDER BY rank;
