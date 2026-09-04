-- 1. Total matches per team (as team1 + team2)
SELECT team, COUNT(*) AS matches
FROM (
    SELECT team1 AS team FROM matches
    UNION ALL
    SELECT team2 AS team FROM matches
)
GROUP BY team
ORDER BY matches DESC
LIMIT 10;


-- 2. Top winning teams
SELECT match_winner, COUNT(*) AS wins
FROM matches
WHERE match_winner IS NOT NULL
GROUP BY match_winner
ORDER BY wins DESC
LIMIT 10;


-- 3. Toss decision impact
SELECT toss_decision, COUNT(*) AS matches
FROM matches
GROUP BY toss_decision;


-- 4. Toss winner = match winner (important insight)
SELECT COUNT(*) AS same_winner
FROM matches
WHERE toss_winner = match_winner;


-- 5. Top players of the match
SELECT player_of_match, COUNT(*) AS awards
FROM matches
GROUP BY player_of_match
ORDER BY awards DESC
LIMIT 10;


-- 6. Matches per city
SELECT city, COUNT(*) AS matches
FROM matches
GROUP BY city
ORDER BY matches DESC
LIMIT 10;


-- 7. Big wins (by runs)
SELECT match_winner, MAX(win_by_runs) AS biggest_win
FROM matches
GROUP BY match_winner
ORDER BY biggest_win DESC
LIMIT 10;
