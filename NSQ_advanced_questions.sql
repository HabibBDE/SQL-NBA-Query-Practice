-- Question 1: Identify the player with the highest improvement in points per game (pts) between their rookie season and their most recent season.
WITH players_seasons AS (
    SELECT 
        player_name, 
        draft_year, 
        MIN(season) AS rookie_season, 
        MAX(season) AS last_season 
    FROM all_seasons 
    WHERE draft_year >= 1996 
    GROUP BY player_name
), 
points_rookieseason AS (
    SELECT 
        all_seasons.player_name, 
        players_seasons.rookie_season, 
        all_seasons.pts AS rookie_pts 
    FROM all_seasons 
    JOIN players_seasons 
    ON players_seasons.player_name = all_seasons.player_name 
        AND players_seasons.rookie_season = all_seasons.season 
    WHERE all_seasons.draft_year >= 1996 
    GROUP BY all_seasons.player_name
), 
highest_scoring_season AS (
    SELECT 
        player_name, 
        season AS record_season, 
        MAX(pts) AS highest_points 
    FROM all_seasons 
    WHERE all_seasons.draft_year >= 1996 
    GROUP BY player_name
)
SELECT 
    players_seasons.player_name, 
    players_seasons.rookie_season, 
    points_rookieseason.rookie_pts, 
    highest_scoring_season.record_season, 
    highest_scoring_season.highest_points, 
    (highest_points - rookie_pts) AS improvement 
FROM players_seasons 
LEFT JOIN points_rookieseason 
ON points_rookieseason.player_name = players_seasons.player_name 
LEFT JOIN highest_scoring_season 
ON highest_scoring_season.player_name = players_seasons.player_name 
GROUP BY players_seasons.player_name 
ORDER BY improvement DESC;
-- Question 2: For each season, find the team with the highest average net rating (net_rating) across all its players.
WITH all_nr AS (
	SELECT
		team_abbreviation,
		season,
	AVG (net_rating) AS avg_nr
	FROM all seasons
	GROUP BY
		team_abbreviation,
		season
),
SELECT
	team_abbreviation,
	season,
	MAX (avg_nr)
FROM all nr
GROUP BY
	season;
-- Question 3: Retrieve the top 3 draft years with the highest total points scored (pts) by all players drafted in those years.
WITH players_rookie_season AS (
	SELECT
		player_name, 
		draft_year,
		MIN (season) AS rookie_season,
		pts AS rookie_pts
	FROM all_seasons
	WHERE
		draft_year >= 1996
		AND draft_year NOT LIKE 'Undrafted'
	GROUP BY
		player_name
	ORDER BY
		rookie_season
)
SELECT
	rookie_season,
	AVG (rookie_pts) AS points
FROM players_rookie_season
GROUP BY
	rookie_season
ORDER BY points DESC
LIMIT 3;
-- Question 4: Calculate the percentage contribution of each player's points (pts) to their team's total points for the 2022-23 season.
WITH team_stats AS (
	SELECT
		team_abbreviation,
		SUM(pts) AS team_pts,
		season,
	FROM all_seasons
	WHERE season LIKE '2022-23'
	GROUP BY 
		team_abbreviation
)
SELECT
	player_name,
	team_stats.team_abbreviation,
	team_pts,
	pts,
	ROUND((pts / team_pts),4) * 100 AS player_contribution
FROM team_stats
LEFT JOIN all_seasons
	ON all_seasons.team_abbreviation = team_stats.team_abbreviation
	AND all_seasons.season = team_stats.season
WHERE all_seasons.season LIKE '2022-23'
GROUP BY
	team_stats.team_abbreviation,
	player_name
ORDER BY
	team_stats.team_abbreviation;
-- Question 5: Identify the country that produced the highest number of players who played in the NBA between 2015 and 2023, and their total points scored.
WITH players_country AS (
	SELECT
		COUNT (DISTINCT player_name) AS number_of_players
	FROM all seasons
	WHERE season BETWEEN '2015' AND '2023'
	GROUP BY
		country
	ORDER BY
		number_of_players DESC
)
SELECT 
	country,
	SUM(pts * gp) AS points
FROM all seasons
GROUP BY country
ORDER BY points DESC
LIMIT 1;
-- Question 6: For each player, calculate their cumulative career points (pts) across all seasons and rank them in descending order.
SELECT
	player_name,
	SUM(pts * gp) AS total_points
FROM all_seasons
GROUP BY
	player_name
ORDER BY
	total_points DESC;
-- Question 7: Determine which team and season combination had the most rebounds (reb) per game on average.
WITH rebounds_sum AS (
	SELECT
		team_abbreviation,
		SUM(reb * gp) AS total_rebounds,
		season
	FROM all_seasons
	GROUP BY
		team_abbreviation,
		season
)
SELECT
	team_abbreviation,
	ROUND(total_rebounds / 82) AS average_rebounds,
	season
FROM rebounds_sum
GROUP BY
	team_abbreviation,
	season
ORDER BY
	average_rebounds DESC
LIMIT 1;
-- Question 8: Identify the undrafted player with the highest total assists (ast) across all seasons.
SELECT
	player_name,
	SUM(ast * gp) AS total_assists
FROM all_seasons
WHERE
	draft_round LIKE 'Undrafted'
GROUP BY
	player_name
ORDER BY total_assists DESC
LIMIT 1;
-- Question 9: For each team, find the player with the highest true shooting percentage (ts_pct) in every season.
SELECT
	player_name,
	team_abbreviation,
	MAX(ts_pct),
	season
FROM all_seasons
WHERE
	gp > 50
GROUP BY
	team_abbreviation,
	season
ORDER BY 
	season ASC;