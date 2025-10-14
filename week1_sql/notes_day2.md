# Day 2 – Practicing CTEs & Subqueries

**Focus:** Building multi-step SQL logic with CTEs  

**Goals:**
- Identify countries with largest year-over-year increases.
- Rank top 5 countries by annual total incidents.

**Key Learnings:**
- CTEs improve query readability and debugging.
- `LAG()` + CTE combo works well for trend analysis by group.
- Always use `PARTITION BY` when comparing within categories (e.g. country).

**Insights:**
> The sharpest year-over-year increases occurred in 2016–2017 and 2020.
Japan stands out with the highest overall surge (+156% in 2017) and another large jump in 2020, hinting at repeated waves of heightened cyber activity.
These findings suggest that global spikes are driven by isolated, event-heavy years rather than consistent upward trends.

> Despite shifts in ranking, the top five countries show consistent threat levels — the top country in 2015 faced 34 incidents, compared to 37 in 2024.
This indicates that global cyber threat intensity among the most impacted nations has remained relatively stable over the past decade.
