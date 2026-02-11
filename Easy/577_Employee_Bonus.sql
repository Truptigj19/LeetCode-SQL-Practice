-- ===============================================================
-- Problem: 577. Employee Bonus
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/employee-bonus/
-- ===============================================================

/*
Problem Summary:
Report the name and bonus of each employee who:
1. Has a bonus less than 1000
OR
2. Did not receive any bonus.

Tables:
Employee(empId, name, supervisor, salary)
Bonus(empId, bonus)

Important Points:
- Some employees may not exist in Bonus table.
- If no bonus exists, bonus should be NULL.
*/

-- Approach:
-- 1. Use LEFT JOIN to include all employees.
-- 2. Employees without bonus will have NULL in bonus column.
-- 3. Filter:
--      bonus < 1000
--      OR bonus IS NULL

SELECT 
    e.name,
    b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000
   OR b.bonus IS NULL;
