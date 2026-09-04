-- 1. Top 5 teams by win %
SELECT team1 AS team,
       ROUND(100.0 * SUM(CASE WHEN match_winner = team1 THEN 1 ELSE 0 END) / COUNT(*),2) AS win_pct
FROM matches
GROUP BY team1
ORDER BY win_pct DESC
LIMIT 5;

-- 2. Most successful player in finals (approx using match_number high)
SELECT player_of_match, COUNT(*) AS finals_awards
FROM matches
WHERE match_number > 70
GROUP BY player_of_match
ORDER BY finals_awards DESC
LIMIT 5;

-- 3. Best chasing team (win by wickets not null)
SELECT match_winner, COUNT(*) AS chase_wins
FROM matches
WHERE win_by_wickets IS NOT NULL
GROUP BY match_winner
ORDER BY chase_wins DESC
LIMIT 5;

-- 4. Toss impact
SELECT 
ROUND(100.0 * SUM(CASE WHEN toss_winner = match_winner THEN 1 ELSE 0 END)/COUNT(*),2) 
AS toss_win_match_win_pct
FROM matches;

-- 5. Most used venue per team
SELECT team1, venue, COUNT(*) AS matches
FROM matches
GROUP BY team1, venue
ORDER BY matches DESC
LIMIT 10;
