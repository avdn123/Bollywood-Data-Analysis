                   #### Top 5 profitable movies ####
SELECT movie_name,(revenue_inr- budget_inr) as profit
FROM bollywood
ORDER BY profit DESC
LIMIT 5;
                  #### Most revenue generating movies ####
SELECT 
    movie_name, 
    revenue_inr
FROM bollywood
WHERE revenue_inr = (SELECT MAX(revenue_inr) FROM bollywood);
               
               #### Actors who have worked in most movies ####
SELECT 
    Lead_Star, 
    COUNT(*) AS total_movies
FROM bollywood
GROUP BY lead_star
ORDER BY total_movies DESC
LIMIT 5;
                      #### MOST EXPENSIVE MOVIES (TOP 5) ####
SELECT movie_name, budget_inr
FROM bollywood
ORDER BY budget_inr DESC
LIMIT 5;
                        #### TOP REVENUE GENERATING GENRE ####
SELECT genre, SUM(revenue_inr) AS total_revenue
FROM bollywood
GROUP BY genre
ORDER BY total_revenue DESC
LIMIT 1;
                #### Finding the list of movies with new lead actors, new director and new music director #### 
SELECT movie_name 
FROM bollywood
WHERE new_actor = 'YES'
AND new_director = 'YES'
AND new_music_director = 'YES';
                                #### IMPACT OF RELEASE PERIOD ON BOX OFFICE ####
SELECT release_period, 
       COUNT(*) AS total_movies,
       SUM(revenue_inr) AS total_revenue,
       AVG(revenue_inr) AS avg_revenue
FROM bollywood
GROUP BY release_period;  
                  #### WHICH MOVIES WERE RELEASED ON THE HIGHEST NUMBER OF SCREENS? (TOP FIVE) ####
SELECT movie_name, number_of_screens
FROM bollywood
ORDER BY number_of_screens DESC
LIMIT 5 ;
