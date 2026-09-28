
SELECT * FROM netflix;

SELECT COUNT(*) FROM netflix;

SELECT DISTINCT type From netflix;

-- 15 Business Problems

-- 1. Count the number of Movies vs TV Shows
SELECT "type", COUNT (*) as "TOTAL CONTENT"
FROM netflix
GROUP BY type;
-- 2. Find the most common rating for movies and TV shows
SELECT 
    type,
    rating
FROM 
(
    SELECT 
        "type",
        rating,
        COUNT(*),
        RANK() OVER(PARTITION BY type ORDER BY COUNT(*) DESC) as ranking
    FROM netflix
    GROUP BY 1, 2
) as t1
WHERE
    ranking = 1
-- 3. List all movies released in a specific year (e.g., 2020)
SELECT * FROM netflix
WHERE 
      type = 'Movie'
      AND
	  release_year= 2020;
-- 4. Find the top 5 countries with the most content on Netflix
SELECT 
    UNNEST(STRING_TO_ARRAY(country, ',')) as new_country,
    COUNT(show_id) as total_content
FROM netflix
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5
-- 5. Identify the longest movie or TV show duration
SELECT * 
FROM netflix
WHERE type = 'Movie' 
  AND duration IS NOT NULL
ORDER BY CAST(SPLIT_PART(duration, ' ', 1) AS INT) DESC
LIMIT 1;
-- 6. Find content added in the last 5 years
SELECT *
FROM netflix
WHERE date_added >= CURRENT_DATE - INTERVAL '5 years';
7. Find all the movies/TV shows by director 'Rajiv Chilaka'!
SELECT * FROM netflix
WHERE director ILIKE '%Rajiv Chilaka%'
-- 8. List all TV shows with more than 5 seasons
SELECT * FROM netflix
Where
     type='TV Show'
	 AND
	 SPLIT_PART(duration,' ', 1):: INT >= 5
-- 9. Count the number of content items in each genre
SELECT 
    UNNEST(STRING_TO_ARRAY(listed_in, ',')) as genre,
    COUNT(show_id) as total_content
FROM netflix
GROUP BY 1
-- 10. Find top 5 yearly content count in a specific country!
SELECT 
    EXTRACT(YEAR FROM date_added) AS year,
    COUNT(*) AS content_count
FROM netflix
WHERE country = 'India'
GROUP BY 1
ORDER BY content_count DESC
LIMIT 5;
-- 11. List all movies that are documentaries
SELECT * FROM netflix
WHERE listed_in ILIKE '%documentaries%'
-- 12. Find all content without a director
SELECT * FROM netflix
WHERE director IS NULL
-- 13. Find how many movies actor 'Salman Khan' appeared in last 10 years!
SELECT * FROM netflix
WHERE
    "cast" ILIKE '%Salman Khan%'
    AND
    release_year > EXTRACT(YEAR FROM CURRENT_DATE) - 10;
-- 14. Find the top 10 actors who have appeared in the highest number of movies produced in India.
SELECT 
    UNNEST(STRING_TO_ARRAY("cast", ',')) as actors,
    COUNT(*) as total_content
FROM netflix
WHERE country ILIKE '%india%'
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10;
-- 15. Categorize the content based on the presence of the keywords 'kill' and 'violence' in the description field. Label content 
-- containing these keywords as 'Bad' and all other content as 'Good'. Count how many items fall into each category. 
WITH new_table
AS
(
SELECT
*,
    CASE 
        WHEN 
            description ILIKE '%kill%' OR 
            description ILIKE '%violence%' THEN 'Bad_Content'
        ELSE 'Good Content'
    END category
FROM netflix
)
SELECT 
    category,
    COUNT(*) as total_content
FROM new_table
GROUP BY 1;
