-- View first 10 matches
SELECT * FROM matches LIMIT 10;

-- Total matches
SELECT COUNT(*) AS total_matches FROM matches;

-- Matches per season
SELECT season, COUNT(*) AS matches
FROM matches
GROUP BY season
ORDER BY season;

-- Top 10 venues
SELECT venue, COUNT(*) AS matches
FROM matches
GROUP BY venue
ORDER BY matches DESC
LIMIT 10;
