# 1204. Last Person to Fit in the Bus
### Problem Link & Description : [ Last Person to Fit in the Bus](https://leetcode.com/problems/last-person-to-fit-in-the-bus/description/?envType=study-plan-v2&envId=top-sql-50)
## Solution 
```sql
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
