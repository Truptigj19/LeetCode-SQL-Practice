-- ===============================================================
-- Problem: 1148. Article Views I
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/article-views-i/
-- ===============================================================

/*
Table: Views
+------------+-----------+-----------+------------+
| article_id | author_id | viewer_id | view_date  |
+------------+-----------+-----------+------------+

Each row indicates that a viewer viewed an article written by an author.
If author_id = viewer_id, it means the author viewed their own article.

Task:
Find all authors who viewed at least one of their own articles.
Return the result sorted by id in ascending order.
*/

-- Approach:
-- 1. Check where author_id = viewer_id
-- 2. Use DISTINCT to remove duplicates
-- 3. Sort results in ascending order

SELECT DISTINCT author_id AS id
FROM Views
WHERE author_id = viewer_id
ORDER BY author_id ASC;