WITH country_totals AS (
	SELECT
		Country,
		COUNT(*) AS total_incidents
	FROM [Global_Cybersecurity_Threats_2015-2024]
	GROUP BY Country
	),
quartiles AS (
	SELECT
		Country,
		total_incidents,
		NTILE(4) OVER (ORDER BY total_incidents DESC) as threat_quartile
	FROM country_totals
)
SELECT
	Country, 
	total_incidents,
	threat_quartile,
	CASE 
		WHEN threat_quartile = 1 THEN 'Very High Threat'
		WHEN threat_quartile = 2 THEN 'High Threat'
		WHEN threat_quartile = 3 THEN 'Medium Threat'
		ELSE 'Low Threat'
	END AS threat_category
FROM quartiles
ORDER BY total_incidents DESC;