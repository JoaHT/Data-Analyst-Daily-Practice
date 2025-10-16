WITH country_yearly AS (
	SELECT
		Country,
		Year,
		COUNT(*) AS total_incidents
	FROM [Global_Cybersecurity_Threats_2015-2024]
	GROUP BY Country, Year
	)
SELECT
	Country,
	Year,
	total_incidents,
	CASE 
		WHEN total_incidents >= 40 THEN 'High threat'
		WHEN total_incidents BETWEEN 25 AND 39 THEN 'Medium threat'
		ELSE 'Low threat'
	END AS threat_level
FROM country_yearly
ORDER BY Year, total_incidents DESC;