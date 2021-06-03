# NBA Trends


I recently found a really cool dataset on [Kaggle](https://www.kaggle.com/wyattowalsh/basketball) and I have been having fun digging around and thought I would share cool things I come accross.

# 1. Visualizing Scoring Over Time

I wanted to visualize how scoring has changed over time. I have all the scoring data in the dataset already but to properly compare accross eras we need to account for pace. The standard way this is done is by using per possesion data. When discussing offense and defensive rating it is usually measured in points per 100 possesions.

I thought possession was a tracked stat but I recently discovered that it is actually calculated! The NBA has a simpler calculation but I decided to use the more accurate formula created by [Basketball Reference](https://www.basketball-reference.com//about/glossary.html#poss):

      Possession = 
            0.5 * ((Tm FGA + 0.4 * Tm FTA - 1.07 * (Tm ORB / (Tm ORB + Opp DRB)) 
            * (Tm FGA - Tm FG) + Tm TOV) + (Opp FGA + 0.4 * Opp FTA - 1.07 * (Opp ORB / (Opp ORB + Tm DRB))
            *  (Opp FGA - Opp FG) + Opp TOV)).
      
Okay now that I know what I am looking for I can execute a simple SQL query to pull everything I should need for my visualizations. You can find it [here]in the repo.
