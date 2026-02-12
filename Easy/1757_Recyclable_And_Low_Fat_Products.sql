-- ===============================================================
-- Problem: 1757. Recyclable and Low Fat Products
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/recyclable-and-low-fat-products/
-- ===============================================================

/*
Problem Summary:
Find the product_ids of products that are:
1. Low fat
AND
2. Recyclable

Table:
Products(product_id, low_fats, recyclable)

Column Details:
- low_fats = 'Y' → product is low fat
- recyclable = 'Y' → product is recyclable
*/

-- Approach:
-- 1. Use WHERE clause to filter rows.
-- 2. Select rows where both conditions are satisfied.
-- 3. Use AND operator to ensure both are true.

SELECT 
    product_id
FROM Products
WHERE low_fats = 'Y'
  AND recyclable = 'Y';