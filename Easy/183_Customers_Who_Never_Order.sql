-- ===============================================================
-- Problem: 183. Customers Who Never Order
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/customers-who-never-order/
-- ===============================================================

/*
Problem Summary:
Find all customers who have never placed an order.

Tables:
Customers(id, name)
Orders(id, customerId)

Explanation:
- customerId in Orders refers to id in Customers.
- We must return customers whose id does NOT appear in Orders.
*/

-- Approach:
-- 1. Use LEFT JOIN to join Customers with Orders.
-- 2. LEFT JOIN ensures all customers are included.
-- 3. If a customer has not placed any order,
--    the Orders columns will be NULL.
-- 4. Filter those rows using WHERE o.customerId IS NULL.

SELECT 
    c.name AS Customers
FROM Customers c
LEFT JOIN Orders o
ON c.id = o.customerId
WHERE o.customerId IS NULL;
