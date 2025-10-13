# 🧠 Data Analyst Daily Practice Log

Welcome to my **Data Analyst Daily Practice** repository — a living record of my continuous learning journey as I strengthen my SQL, Power BI, and Python analytics skills.

I dedicate **1 hour per day** to hands-on data analysis, following a 4-week rotating plan:
- Week 1 → SQL & Analytical Thinking  
- Week 2 → Power BI & Dashboard Storytelling  
- Week 3 → Python for Data Exploration  
- Week 4 → Business Projects & Portfolio Building  

This repo documents my daily progress — short examples, quick notes, and reflections that show how I’m improving one step at a time.

---

## 📂 Repository Structure
data-analyst-daily-practice/
│
├── week1_sql/
│ ├── day1_window_functions.sql
│ ├── day2_case_cte_examples.sql
│ ├── day3_rank_practice.sql
│ ├── day4_dense_rank_vs_row_number.sql
│ └── notes_day4.md
│
├── week2_powerbi/
│ ├── dax_practice.md
│ ├── dashboard_screenshot.png
│
├── week3_python/
│ ├── pandas_groupby_examples.ipynb
│ ├── value_counts_visualization.png
│
└── reflections/
├── week1_summary.md

---

💡 *Each folder will grow gradually — this is a long-term log of my consistent practice.*

---

## 🎯 Goals

- Build **consistency** through daily, focused 1-hour practice  
- Strengthen **SQL** problem-solving and business interpretation skills  
- Develop **Power BI** dashboards that communicate insights clearly  
- Explore **Python** for exploratory data analysis and validation  
- Maintain a transparent record of learning and improvement  

---

## 🧩 Example Entry

### Week 1 – Day 3: Ranking & Aggregation Challenge  
**Focus:** Practicing `RANK()`, `DENSE_RANK()`, and `ROW_NUMBER()` in SQL  
**Code:** [`week1_sql/day3_rank_practice.sql`](week1_sql/day3_rank_practice.sql)  
**Key Learnings:**
- `RANK()` → Ties share rank but skip numbers  
- `DENSE_RANK()` → Ties share rank without skipping numbers  
- `ROW_NUMBER()` → Gives unique ranks (no ties)  
**Analytical Insight:**  
> “Ranking functions help identify top-performing users or categories. For example, `DENSE_RANK()` is ideal when analyzing top performers without skipping rank numbers due to ties.”

---

## 🗓️ Weekly Reflection Template

Each week, I summarize what I learned under `/reflections/weekX_summary.md`.

Example:

```markdown
## Week 1 Reflection

**Focus:** SQL Fundamentals and Window Functions  
**Wins:** Improved understanding of `DENSE_RANK()` vs `ROW_NUMBER()` and how to use `CASE` with `MAX()` for conditional aggregation.  
**Challenges:** Remembering small MySQL syntax rules (trailing commas, missing aliases).  
**Next Steps:** Keep practicing CTE chaining and start using real business datasets (e.g., Airbnb, e-commerce).

---

✍️ Author

Joakim André Holtbakk Torp
📍 Oslo, Norway
💼 Aspiring Data Analyst
🔗 LinkedIn
 | Portfolio
