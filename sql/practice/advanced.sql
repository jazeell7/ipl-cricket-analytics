-- Win percentage of teams
SELECT team,
       SUM(CASE WHEN team = match_winner THEN 1 ELSE 0 END)*100.0 / COUNT(*) AS win_percentage
FROM (
    SELECT team1 AS team, match_winner FROM matches
    UNION ALL
    SELECT team2 AS team, match_winner FROM matches
)
GROUP BY team
ORDER BY win_percentage DESC;


-- Most successful venues for batting first
SELECT venue, COUNT(*) AS wins
FROM matches
WHERE toss_decision = 'bat' AND match_winner = team1
GROUP BY venue
ORDER BY wins DESC
LIMIT 10;
