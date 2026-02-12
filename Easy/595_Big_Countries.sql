-- ===============================================================
-- Problem: 595. Big Countries
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/big-countries/
-- ===============================================================

/*
Table: World
+-------------+---------+
| name        | varchar |
| continent   | varchar |
| area        | int     |
| population  | int     |
| gdp         | bigint  |
+-------------+---------+

A country is considered "big" if:
1. area >= 3,000,000
OR
2. population >= 25,000,000

Task:
Return the name, population, and area of the big countries.
*/

-- Approach:
-- Use OR condition to check both criteria.

SELECT 
    name, 
    population, 
    area
FROM World
WHERE area >= 3000000 
   OR population >= 25000000;