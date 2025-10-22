# Day 3 – Conditional Formatting (Top 5 by Year)

**Goal:** Highlight top 5 countries per year in the matrix visual.

## DAX Measures
- `Country Rank by Year` – ranks countries within each year by Total Incidents.
- `Top 5 Flag` – assigns 1 to top 5, 0 otherwise.

## Steps
1. Apply background color conditional formatting using `Top 5 Flag`.
2. Rule-based: 1 = Highlight color, 0 = White.
3. Test with `Year` on rows and `Country` on columns.

**Result:** Each year’s top 5 countries are visually emphasized, making patterns easier to spot.
