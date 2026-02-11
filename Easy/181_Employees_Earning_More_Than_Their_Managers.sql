-- ==============================================================
-- Problem: 181. Employees Earning More Than Their Managers
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/employees-earning-more-than-their-managers/
-- ==============================================================

/*
Problem Summary:
Find the employees whose salary is strictly greater than
their manager's salary.

Table:
Employee(id, name, salary, managerId)

Explanation:
- managerId refers to the id of another employee in the same table.
- We must compare employee salary with their manager's salary.

Approach:
- This is a SELF JOIN problem.
- We join the Employee table with itself.
- First alias (e) → represents the employee.
- Second alias (m) → represents the manager.
- Join condition: e.managerId = m.id
- Then filter employees where e.salary > m.salary.
*/

SELECT 
    e.name AS Employee
FROM Employee e
JOIN Employee m
ON e.managerId = m.id
WHERE e.salary > m.salary;
