-- ===============================================================
-- Problem: 584. Find Customer Referee
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/find-customer-referee/
-- ===============================================================

/*
Problem Summary:
Find names of customers who are:
1. Not referred by customer with id = 2
OR
2. Not referred by anyone (referee_id IS NULL)

Table:
Customer(id, name, referee_id)
*/

-- Approach:
-- 1. If referee_id = 2 → exclude them.
-- 2. If referee_id IS NULL → include them.
-- 3. If referee_id != 2 → include them.
-- 4. Use OR condition to combine both cases.

SELECT 
    name
FROM Customer
WHERE referee_id IS NULL
   OR referee_id != 2;