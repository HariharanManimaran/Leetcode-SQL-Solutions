-- LeetCode Problem Number - 197
-- Difficulty - Esay
-- PostgreSQL


SELECT w1.id
FROM Weather w1 
JOIN Weather w2 ON w1.recordDate = w2.recordDate+INTERVAL '1 day'
AND w1.temperature > w2.temperature;
