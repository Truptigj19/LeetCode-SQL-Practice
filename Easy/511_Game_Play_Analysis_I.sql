-- ===============================================================
-- Problem: 511. Game Play Analysis I
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/game-play-analysis-i/
-- ===============================================================

/*
Problem Summary:
Find the first login date for each player.

Table:
Activity(player_id, device_id, event_date, games_played)

Important Points:
- (player_id, event_date) is the primary key.
- Each player can have multiple login records.
- We must return the earliest (minimum) event_date per player.
*/

-- Approach:
-- 1. Group records by player_id.
-- 2. Use MIN(event_date) to get the earliest login date.
-- 3. Rename the column as first_login as required.

SELECT 
    player_id,
    MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id;
