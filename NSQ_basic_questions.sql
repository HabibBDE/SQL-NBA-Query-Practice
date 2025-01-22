-- Question 1: Retrieve all columns for players who played in the 2019-20 season.
SELECT *
FROM all_seasons
WHERE season LIKE '2019-20';

-- Question 2: List the unique countries represented in the dataset.
SELECT DISTINCT country
FROM all_seasons;

-- Question 3: Find the total number of games played (gp) by all players combined in the 2020-21 season.
SELECT SUM(gp) AS all_games_combined
FROM all_seasons
WHERE season LIKE '2020-21';

-- Question 4: Display the player name, team abbreviation, and points (pts) for players who scored more than 20 points in the 2021-22 season.
SELECT player_name,
       team_abbreviation,
       pts
FROM all_seasons
WHERE season LIKE '2021-22'
  AND pts > 20;

-- Question 5: Show the average height (player_height) of all players in the dataset.
SELECT AVG(player_height) AS height_average
FROM all_seasons;

-- Question 6: Retrieve all players who were drafted in the first round (draft_round = "1").
SELECT *
FROM all_seasons
WHERE draft_round = 1;

-- Question 7: List all players who played for the Los Angeles Lakers (team_abbreviation = "LAL") in the 2022-23 season.
SELECT *
FROM all_seasons
WHERE team_abbreviation = 'LAL'
  AND season LIKE '2022-23';

-- Question 8: Count the total number of players in the dataset.
SELECT COUNT(*) AS total_players
FROM all_seasons;

-- Question 9: Retrieve the names of players who attended college in the United States (country = "USA").
SELECT player_name, college
FROM all_seasons
WHERE college NOT LIKE 'None';

-- Question 10: Find the tallest player in the dataset.
SELECT *, MAX(player_height)
FROM all_seasons;

-- Question 11: Display the player name, country, and points (pts) for the top 5 players with the most points in the 2020-21 season.
SELECT player_name, country, pts
FROM all_seasons
WHERE season LIKE '2020-21'
ORDER BY pts DESC
LIMIT 5;

-- Question 12: Show all columns for players who have a net_rating greater than 10 in the 2019-20 season.
SELECT *
FROM all_seasons
WHERE net_rating > 10
  AND season LIKE '2019-20';

-- Question 13: Retrieve all players who were drafted in 2010 or later.
SELECT player_name,
       team_abbreviation,
       draft_year
FROM all_seasons
WHERE draft_year >= 2010;

-- Question 14: Find the average age of players for the 2022-23 season.
SELECT ROUND(AVG(age))
FROM all_seasons
WHERE season LIKE '2022-23';

-- Question 15: List all players whose player_name starts with the letter "K."
SELECT *
FROM all_seasons
WHERE player_name LIKE 'K%';
