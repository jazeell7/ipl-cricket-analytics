SELECT * FROM matches LIMIT 10;

SELECT COUNT(*) AS total_matches FROM matches;

SELECT season, COUNT(*) AS matches
FROM matches
GROUP BY season;

SELECT venue, COUNT(*) AS matches
FROM matches
GROUP BY venue
ORDER BY matches DESC
LIMIT 10;

-- 1. View first 10 rows
SELECT * FROM matches LIMIT 10;

-- 2. Count total matches
SELECT COUNT(*) AS total_matches FROM matches;

-- 3. Matches per season
SELECT season, COUNT(*) AS matches
FROM matches
GROUP BY season
ORDER BY season;

-- 4. Top 5 venues
SELECT venue, COUNT(*) AS matches
FROM matches
GROUP BY venue
ORDER BY matches DESC
LIMIT 5;
