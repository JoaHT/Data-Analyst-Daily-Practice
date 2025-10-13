
WITH yearly_threats AS (
	SELECT
		Year,
		COUNT(*) AS total_incident
	FROM [Global_Cybersecurity_Threats_2015-2024]
	GROUP BY Year
)
SELECT 
	Year,
	total_incident,
	LAG(total_incident) OVER(ORDER BY Year) AS pre_year_incident,
	CAST(
		ROUND(
			(
				(CAST(total_incident AS DECIMAL(10,2)) 
				- CAST(LAG(total_incident) OVER(ORDER BY Year) AS DECIMAL(10,2))) 
				/ NULLIF(CAST(LAG(total_incident) OVER(ORDER BY Year) AS DECIMAL(10,2)), 0)
			) * 100, 
			2
		) 
		AS DECIMAL(10,2)
	) AS yoy_change_percent,
	RANK() OVER (ORDER BY total_incident DESC) AS incident_rnk
FROM yearly_threats
ORDER BY Year;
