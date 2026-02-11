-- ===============================================================
-- Problem: 197. Rising Temperature
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/rising-temperature/
-- ===============================================================

/*
Problem Summary:
Find all ids where the temperature is higher than
the temperature of the previous day (yesterday).

Table:
Weather(id, recordDate, temperature)

Important Points:
- No two rows have the same recordDate.
- We must compare temperature with exactly the previous day.
*/

-- Approach:
-- 1. Perform a SELF JOIN on the Weather table.
-- 2. Use two aliases:
--      w1 → current day
--      w2 → previous day
-- 3. Use DATEDIFF to check if w1.recordDate is exactly
--    one day after w2.recordDate.
-- 4. Compare temperatures and return the id where
--    current day's temperature is greater.

SELECT w1.id
FROM Weather w1
JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;
