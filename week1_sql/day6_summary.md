# Week 1 Summary – SQL Analytical Insights

**Focus:** SQL for Analytical Thinking (Window Functions, CTEs, CASE, and Segmentation)  
**Dataset:** Global Cybersecurity Threats (2015–2024)  
**Tools:** SQL Server (SSMS)

---

## 🧠 Executive Summary
This week’s analysis explored global cybersecurity incidents from 2015–2024 using advanced SQL techniques such as window functions, CTEs, and conditional logic.  
The findings reveal that **global incident volumes remain relatively stable over time**, but **cyber risk is concentrated among a handful of nations**—notably Brazil, India, and the UK.  
Although these countries consistently rank highest, earlier analysis showed that the **numerical differences between nations are relatively small**, suggesting that rankings alone may exaggerate perceived risk differences.

---

## 📊 Key Insights by Topic

| Focus Area | Technique | Summary Insight |
|-------------|------------|------------------|
| **Year-over-Year Trend (Day 1)** | `LAG()` + Arithmetic | Incident totals changed modestly year-to-year, with brief spikes in 2017 and 2020. Overall variation stayed within ±10%, indicating a stable global trend. |
| **CTEs & Subqueries (Day 2)** | `CTE` + `LAG()` + `RANK()` | Japan, Germany, and Australia showed the largest year-over-year surges, particularly in 2016–2017 and 2020, pointing to event-driven spikes. |
| **CASE Categorization (Day 3)** | `CASE` Statements | Most countries fall in the “Medium Threat” group (25–39 incidents/year), showing moderate but steady exposure. |
| **NTILE Segmentation (Day 4)** | `NTILE(4)` + `CASE` | Quartile analysis classified many nations as “High” or “Very High Threat,” but with only small differences in totals, revealing a compressed and skewed distribution. |
| **Ranking Consistency (Day 5)** | Multi-CTE + `RANK()` | Brazil, India, and the UK ranked in the top 3 in 5 of 10 years, suggesting recurring high exposure; however, the gap between top and bottom remains minor. |

---

## 🧩 Analytical Reflection
Working through these SQL challenges strengthened my ability to:
- Structure queries using multiple CTEs for clarity and modular analysis.  
- Combine window functions with `CASE` logic to extract business-relevant patterns.  
- Translate raw data into concise, business-friendly insights.  
- Recognize that **statistical rankings don’t always imply meaningful differences**—context matters.  

This SQL foundation sets the stage for **Week 2: Power BI and Business Storytelling**, where I’ll transform these insights into clear, visual narratives for decision-making.

---

## ✅ Next Step
**Week 2 (Power BI):**  
- Import and model the same dataset in Power BI.  
- Recreate key SQL findings visually (trends, country comparisons).  
- Focus on clean dashboards and narrative-driven insights.

---

✍️ **Author:** Joakim André Holtbakk Torp  
📍 Oslo, Norway  
🔗 [LinkedIn](#) | [Portfolio](#)
