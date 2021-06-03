# NBA Trends


I recently found a really cool dataset on [Kaggle](https://www.kaggle.com/wyattowalsh/basketball) and I have been having fun digging around and thought I would share cool things I come accross.

select GAME_ID, PTS_HOME, PTS_AWAY, PTS_HOME + PTS_AWAY as PTS_COMBINED,
FGA_HOME, FGM_HOME, FGA_AWAY, FGM_AWAY, FTA_HOME, FTA_AWAY,
OREB_HOME, DREB_HOME, OREB_AWAY, DREB_AWAY, TOV_HOME, TOV_AWAY, SEASON from game
where season > 1984;
 
