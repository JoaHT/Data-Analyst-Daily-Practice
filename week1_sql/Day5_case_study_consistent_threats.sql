WITH country_yearly AS ( 
	SELECT 
		Country, 
		Year,
		COUNT(*) AS total_incidents
	FROM [Global_Cybersecurity_Threats_2015-2024]
	GROUP BY Country, Year
	),
ranked AS (
	SELECT 
		Country, 
		Year,
		total_incidents,
		RANK () OVER (PARTITION BY Year ORDER BY total_incidents DESC) AS yearly_rnk
	FROM country_yearly
	),
classified AS (
	SELECT 
		Country,
		Year,
		total_incidents,
		yearly_rnk,
		CASE 
			WHEN yearly_rnk <= 3 THEN 'Top 3'
			WHEN yearly_rnk <= 5 THEN 'Top 5'
			ELSE 'Other'
		END AS threat_tier
	FROM ranked
	)
SELECT 
	Country,
	COUNT(CASE WHEN threat_tier = 'Top 3' THEN 1 END) AS top3_years,
	COUNT(CASE WHEN threat_tier = 'Top 5' THEN 1 END) AS top5_years,
	COUNT(*) AS total_years,
	ROUND(COUNT(CASE WHEN threat_tier = 'Top 3' THEN 1 END) * 100 / COUNT(*), 1) AS pct_top3_years
FROM classified
GROUP BY Country
ORDER BY pct_top3_years DESC;

