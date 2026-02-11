-- ==================================================================
-- Problem: 196. Delete Duplicate Emails
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/delete-duplicate-emails/
-- ==================================================================

/*
Problem Summary:
Delete duplicate email records from the Person table,
keeping only the record with the smallest id for each email.

Table:
Person(id, email)

Important Requirement:
- Keep only one unique email.
- If duplicates exist, retain the row with the smallest id.
- Must use DELETE statement (not SELECT).
*/

-- Approach:
-- 1. Group records by email.
-- 2. For each email, find the smallest id using MIN(id).
-- 3. Keep those minimum id records.
-- 4. Delete all other records using NOT IN.

DELETE FROM Person
WHERE id NOT IN (
    SELECT id FROM (
        SELECT MIN(id) AS id
        FROM Person
        GROUP BY email
    ) t
);
