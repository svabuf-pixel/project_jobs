# Data Science Salary & Skill Analysis 📈
This repository contains a comprehensive analysis of the Data Science job market, focusing on the relationship between technical competencies, company demographics, and compensation.

## 📌 Project Overview
The goal of this project was to identify the "Value Drivers" in the data science industry. By analyzing job postings and company data, we've mapped out how specific skills influence salary and how company scale affects the workplace experience.

### 📊 1. Technical Skill Analysis

**Skill Popularity vs. Pay**

Not all skills are created equal. While some are "entry-level," others act as high-salary multipliers.
1. Market Leaders: Python leads the market, appearing in 51.46% of job postings, followed by SQL at 48.33%.
2. The Salary Premium: AWS ($112.1k$) and Spark ($110.3k$) command the highest average salary estimates.
3. The Excel Floor: Roles requiring Excel average $87.3k, which is approximately $25k less than cloud-based roles.
   
<img width="339" height="239" alt="image" src="https://github.com/user-attachments/assets/e4a52775-25d7-4509-a917-6a2965e886a7" />
<img width="774" height="428" alt="image" src="https://github.com/user-attachments/assets/c671fb3e-c1a6-4c0b-8892-aba7cf098a54" />

**Skill Correlations**

Our analysis shows how technologies cluster together:
1. Data Engineering Cluster: Strong synergy between AWS and Spark ($0.4$ correlation).
2. Business Intelligence Cluster: SQL and Tableau frequently appear together ($0.4$ correlation).
<img width="519" height="415" alt="image" src="https://github.com/user-attachments/assets/38217c81-dc44-4e94-b513-b1279ae14dda" />


### 💰 2. Salary Dynamics

**The "Python" Pay Climb**
There is a direct relationship between salary brackets and the necessity of Python.
1. In the lowest salary bracket ($15k–$55k$), Python is only required by ~14% of jobs.
2. In the highest salary bracket ($214k–$254k$), Python is a 100% requirement.

<img width="1071" height="532" alt="image" src="https://github.com/user-attachments/assets/2618abd7-58b9-4a70-b8da-7ce9a1458400" />
<img width="1191" height="590" alt="image" src="https://github.com/user-attachments/assets/dd67e9ba-d8d8-4ed0-a5dd-3f58fb79d752" />
<img width="1187" height="587" alt="image" src="https://github.com/user-attachments/assets/5f08515d-e9bb-42af-b7b7-6220068d04c8" />


### 🏢 3. Company & Sector Insights

**Scale vs. Reward**

One of the most surprising findings was the disconnect between company size and individual pay:

1. Revenue & Size: Highly correlated (0.9), meaning bigger companies consistently generate more revenue.
2. Salary & Size: Almost no correlation (0.1), indicating that a massive company does not guarantee a higher salary estimate than a mid-sized firm.
3. Company Ratings: Larger, high-revenue companies tend to have slightly lower ratings (-0.3) compared to smaller firms.

<img width="783" height="638" alt="image" src="https://github.com/user-attachments/assets/c1802846-fc59-4efd-b760-45ca452e4e2d" />

### 📍Salary by Location

1. The most listed jobs by state is in CA followed by Massachusetts and NY, comparing the jobs count and average salary, I'm surprised that NY has such low salary.
   
<img width="215" height="250" alt="image" src="https://github.com/user-attachments/assets/3c8751b7-f963-4b0d-9a4b-98706e92e0c0" />
<img width="265" height="271" alt="image" src="https://github.com/user-attachments/assets/4cb3335c-2f6a-48e3-b7e9-ef967ae53a2d" />


### 🚀 Key Takeaways
1. **Skills Over Size:** Individual salary is driven more by your tech stack (Python, AWS, Spark) than the size of the company you work for.
2. **The Cloud Shift:** Moving from Excel to Cloud/Big Data tools represents the single largest jump in salary potential.
3. **Foundational SQL:** Regardless of salary, SQL remains a core requirement across nearly all pay scales.

### EXTRA
<img width="490" height="827" alt="image" src="https://github.com/user-attachments/assets/859976ca-89af-4323-bb8b-f005b53a4987" />
<img width="845" height="236" alt="image" src="https://github.com/user-attachments/assets/f4be0f3d-b96a-42e2-934a-ebd04968186d" />


### 🛠️ Built With
1. **Python:** Primary analysis language.
2. **Pandas:** Data manipulation and cleaning.
3. **Matplotlib & Seaborn:** Data visualization and heatmaps.
