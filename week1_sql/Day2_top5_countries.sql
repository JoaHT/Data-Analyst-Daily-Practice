

WITH country_totals AS (
	SELECT 
		Country, 
		Year,
		COUNT(*) as total_incidents
	FROM [Global_Cybersecurity_Threats_2015-2024]
	GROUP BY Country, Year
),
ranked_countries AS (
	SELECT
		Country,
		Year,
		total_incidents,
		RANK() OVER (PARTITION BY Year ORDER BY total_incidents DESC) AS yearly_rank
	FROM country_totals
)
SELECT
	Country,
	Year,
	total_incidents,
	yearly_rank
FROM ranked_countries
WHERE yearly_rank <= 5
ORDER BY Year, yearly_rank;