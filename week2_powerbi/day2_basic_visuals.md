# Day 2 – DAX Basics Visual Testing

**Goal:** Visualize and verify DAX measures using CALCULATE(), FILTER(), and ALL().

## Visuals Built
1. **Country Incident Summary (Table)**
   - Shows Total Incidents and % of Total per country.
   - Demonstrates how CALCULATE() overrides filters.

2. **High Incident Countries (KPI Card)**
   - Displays incidents only above a defined threshold.
   - Demonstrates FILTER() and dynamic evaluation.

3. **Post-2020 % of Total (Bar Chart)**
   - Shows relative performance by country for incidents after 2020.
   - Demonstrates combined CALCULATE() + FILTER() + ALL() logic.

**Key Takeaway:**
DAX context is dynamic — understanding how filters change or reset is essential before moving to KPI storytelling and time intelligence.
