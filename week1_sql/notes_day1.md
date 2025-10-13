# Day 1 – Window Functions Practice (Cybersecurity Dataset)

**Focus:** LAG(), RANK(), and decimal handling in SQL Server  

**Goal:** Analyze year-over-year change in global cybersecurity incidents from 2015–2024  

**Key Learnings:**
- Integer division caused `0` values — fixed by using `CAST(... AS DECIMAL)`.
- `NULLIF()` prevents division-by-zero errors.
- `LAG()` helps compare sequential years efficiently.

**Insight:**
> Cybersecurity incidents grew steadily between 2015 and 2020 (+19.8% peak), with minor declines afterward.  
> This suggests a long-term rise in reported threats but possible stabilization after 2021.
