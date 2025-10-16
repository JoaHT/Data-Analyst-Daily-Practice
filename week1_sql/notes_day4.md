# Day 4 – Combining NTILE() and CASE for Segmentation

**Focus:** Multi-step segmentation analysis with window functions and conditional logic.

**Goal:** Divide countries into quartiles based on total incidents and label each segment.

**Key Learnings:**
- `NTILE()` helps identify distribution tiers within data.
- Combining `NTILE()` and `CASE` makes segmentation interpretable.
- This technique is similar to customer segmentation or risk profiling in business analytics.

**Insight:**
>Most countries fall into the “High Threat” or above categories, yet the total number of incidents across all nations is relatively close — ranging from 281 (China) to 321 (UK).
This narrow spread suggests that while the quartile-based segmentation classifies countries into distinct categories, the actual differences in threat volume are minor.
The results indicate a skewed distribution caused by a small dataset where relative ranking exaggerates small numeric gaps.
