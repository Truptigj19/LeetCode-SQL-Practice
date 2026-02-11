-- ==========================================================
-- Problem: 182. Duplicate Emails
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/duplicate-emails/
-- ==========================================================

/*
Problem Summary:
Find all email addresses that appear more than once
in the Person table.

Table:
Person(id, email)

Important Points:
- id is unique (Primary Key).
- email is NOT NULL.
- We must return only duplicate emails.
*/

-- Approach:
-- 1. Group records by email.
-- 2. Count how many times each email appears.
-- 3. Use HAVING to filter emails appearing more than once.
-- 4. Rename column as "Email" as required in output.

SELECT 
    email AS Email
FROM Person
GROUP BY email
HAVING COUNT(email) > 1;
