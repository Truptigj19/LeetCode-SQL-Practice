-- =====================================================
-- Problem: 175. Combine Two Tables
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/combine-two-tables/
-- =====================================================

/*
Problem Summary:
Write a SQL query to report the first name, last name,
city, and state of each person from the Person table.
If a person does not have an address in the Address table,
the city and state should be returned as NULL.

Tables:
Person(personId, firstName, lastName)
Address(addressId, personId, city, state)

Approach:
- We use LEFT JOIN to combine Person and Address tables.
- LEFT JOIN ensures that all records from the Person table are included.
- If a matching address does not exist, city and state will be NULL.
- We join both tables using personId as the common column.
*/

SELECT 
    P.firstName,
    P.lastName,
    A.city,
    A.state
FROM Person P
LEFT JOIN Address A
ON P.personId = A.personId;
