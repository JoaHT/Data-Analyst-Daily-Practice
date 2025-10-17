# Day 5 – SQL Mini Case Study: Consistent Threat Patterns

**Focus:** Integrating multiple SQL concepts into a single business analysis.

**Goal:** Identify which countries consistently appear in the top 3 or 5 most-targeted nations each year.

**Key Learnings:**
- Multi-CTE structure improves readability for complex logic.
- `RANK()` + `CASE` combination reveals persistent leaders over time.
- Aggregating consistency (e.g., % of years in top tier) provides strategic insight.

**Insight:**
> The analysis shows a consistent pattern in global cyber threat concentration.
Brazil, India, and the UK each appear in the top three positions in 5 out of 10 years, suggesting recurring high exposure.
However, earlier analysis revealed that the difference in total incidents between nations is relatively small — meaning that ranking positions (top 3 vs bottom 3) may exaggerate minor variations in incident volume.
This indicates that while certain countries appear dominant in rank, the actual global distribution of cyber incidents remains relatively even across most major nations.
