WITH yearly_threats AS (
	SELECT
		Country,
		Year,
		COUNT(*) AS total_incident
	FROM [Global_Cybersecurity_Threats_2015-2024]
	GROUP BY Country, Year
),
country_trends AS (
	SELECT 
		Country,
		Year,
		total_incident,
		LAG(total_incident) OVER(PARTITION BY Country ORDER BY Year) AS pre_year_incident,
		CAST(
			ROUND(
				(
					(CAST(total_incident AS DECIMAL(10,2)) 
					- CAST(LAG(total_incident) OVER(PARTITION BY Country ORDER BY Year) AS DECIMAL(10,2))) 
					/ NULLIF(CAST(LAG(total_incident) OVER(PARTITION BY Country ORDER BY Year) AS DECIMAL(10,2)), 0)
				) * 100, 
				2
			) 
			AS DECIMAL(10,2)
		) AS yoy_change_percent
	FROM yearly_threats
	)
SELECT TOP 10
	Country,
	Year,
	yoy_change_percent
FROM country_trends
WHERE yoy_change_percent IS NOT NULL 
ORDER BY yoy_change_percent DESC;





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