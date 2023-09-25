WITH RankQueue AS (
    SELECT person_id
    ,person_name
    ,weight
    ,turn
    ,SUM(weight) OVER (ORDER BY turn) total
    FROM Queue
)
SELECT top 1 person_name
FROM RankQueue
WHERE total <=1000
ORDER BY total DESC
