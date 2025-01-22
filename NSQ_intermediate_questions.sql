-- Question 1: Find the average points (pts) scored by players for each season.
SELECT season, 
       AVG(pts) AS average_points
FROM all_seasons
GROUP BY season;

-- Question 2: Display the top 3 players with the highest true shooting percentage (ts_pct) for the 2021-22 season.
SELECT player_name, 
       team_abbreviation, 
       ts_pct
FROM all_seasons
WHERE season LIKE '2021-22'
ORDER BY ts_pct DESC
LIMIT 3;

-- Question 3: List all players who played more than 50 games (gp) and scored more than 500 points (pts) in the 2022-23 season.
SELECT player_name, 
       team_abbreviation, 
       gp, 
       (pts * gp) AS total_points
FROM all_seasons
WHERE season LIKE '2022-23'
  AND gp > 50
  AND total_points > 500
ORDER BY total_points DESC;

-- Question 4: Retrieve the number of players drafted in each round.
SELECT draft_year, 
       draft_round, 
       COUNT(DISTINCT draft_number) AS draft_number
FROM all_seasons
WHERE draft_round NOT LIKE 'Undrafted'
GROUP BY draft_year, 
         draft_round;

-- Question 5: Find the player with the highest assist-to-turnover ratio in the 2020-21 season.
SELECT player_name, 
       team_abbreviation, 
       (ast_pct / usg_pct) AS assist_usage_ratio, 
       season
FROM all_seasons
WHERE season LIKE '2020-21'
ORDER BY assist_usage_ratio DESC
LIMIT 3;

-- Question 6: Count the total number of players from each country.
SELECT COUNT(DISTINCT player_name) AS players, 
       country
FROM all_seasons
GROUP BY country;

-- Question 7: Find the player with the highest rebounds per game for the 2019-20 season.
SELECT player_name, 
       team_abbreviation, 
       MAX(reb)
FROM all_seasons
WHERE season LIKE '2019-20';

-- Question 8: Show all players who have a dreb_pct (defensive rebound percentage) greater than 20 and an oreb_pct (offensive rebound percentage) greater than 15 in the 2020-21 season.
SELECT player_name, 
       team_abbreviation, 
       oreb_pct, 
       dreb_pct
FROM all_seasons
WHERE season LIKE '2020-21'
  AND oreb_pct > 0.15
  AND dreb_pct > 0.20;

-- Question 9: Calculate the total number of points scored by players from the United States in the 2021-22 season.
SELECT SUM(pts * gp) AS total_points
FROM all_seasons
WHERE country LIKE 'USA'
  AND season LIKE '2021-22';

-- Question 10: Display the player name and net rating for all players ranked in the top 10 for net_rating in the 2019-20 season.
SELECT player_name, 
       team_abbreviation, 
       net_rating
FROM all_seasons
WHERE season LIKE '2019-20'
ORDER BY net_rating DESC
LIMIT 10;

-- Question 11: List the players who were not drafted.
SELECT DISTINCT player_name
FROM all_seasons
WHERE draft_round LIKE 'Undrafted';

-- Question 12: Find the total assists made by players from colleges located in California.
SELECT player_name, 
       college, 
       ROUND(SUM(ast * gp)) AS total_assists
FROM all_seasons
WHERE college LIKE '%California%'
GROUP BY player_name
ORDER BY total_assists DESC;

-- Question 13: Show all players who were drafted between 2000 and 2010 and had a true shooting percentage greater than 60%.
SELECT DISTINCT player_name, 
       ts_pct
FROM all_seasons
WHERE draft_year BETWEEN 2000 AND 2010
  AND ts_pct > 0.60;

-- Question 14: Calculate the average rebounds_per_game for players drafted in the first round.
SELECT AVG(reb) 
FROM all_seasons
WHERE draft_round = '1';
