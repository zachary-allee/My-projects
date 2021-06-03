
-- I found everything I needed in the game table and created a new table with just the values I need right now.
  
 CREATE TABLE possesion_analysis AS
	SELECT 
		game_id, pts_home, pts_away, 
		pts_home + pts_away  AS pts_combined,
		fga_home, fgm_home, fga_away, fgm_away,
		fta_home, fta_away, ftm_home, ftm_away, 
		oreb_home, dreb_home, oreb_away, dreb_away
		tov_home, tov_away, season
	FROM game
	WHERE season > 1984   		-- The NBA did not start recording all data needed until 1984

