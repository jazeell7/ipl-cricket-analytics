SELECT team1 AS team, COUNT(*) AS matches
FROM matches
GROUP BY team1
ORDER BY matches DESC
LIMIT 10;

