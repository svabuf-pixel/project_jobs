-- 1. How the salary varies from the company size?
SELECT Size, round(AVG("Salary Estimate"),2) as avg_salary
FROM cleaned_data
WHERE Size != -1.0
GROUP BY Size
ORDER BY Size ASC;

-- 2. Do skill requirements (Python, R , SQL) increase salary?
/* Python, R , SQL */
SELECT
	CASE WHEN SQL = 1 AND Python = 1 AND R = 1 THEN 'Requires ' ELSE 'No requires' END as skill_check,
	ROUND(AVG("Salary Estimate"),2) as avg_salary
FROM cleaned_data
GROUP BY skill_check;

-- 3. Which state has the biggest salary offer?
SELECT Location as State, MAX("Salary Estimate") as max_salary
FROM cleaned_data
GROUP BY State
ORDER BY max_salary DESC
LIMIT 1;

-- 4. How the revenue and salary are related?
SELECT Revenue, round(AVG("Salary Estimate"),2) as avg_salary
FROM cleaned_data
WHERE Revenue != -1.0
GROUP BY Revenue
ORDER BY Revenue ASC;

-- 5. Do older companies offer bigger salaries and require more/less skills, what about smaller?
SELECT 
    CASE WHEN Founded > 50 THEN 'Old (>50yrs)' ELSE 'Young' END as company_category,
    ROUND(AVG("Salary Estimate"),2) as avg_salary,
    ROUND(AVG(Python + SQL + R + Excel + Tableau + SAS + spark + aws),2) as avg_skills_count
FROM cleaned_data
WHERE Founded > 0
GROUP BY company_category;

-- 6. Which sector and industry offers the biggest salary?
SELECT Sector, Industry, ROUND(AVG("Salary Estimate"),2) as avg_salary
FROM cleaned_data
GROUP BY Sector, Industry
ORDER BY avg_salary DESC
LIMIT 5;

-- 7. Correlation check: Sector, Industry, Revenue, and Salary
-- (SQL provides the data for correlation analysis)
SELECT Sector, Revenue, ROUND(AVG("Salary Estimate"),2) as avg_salary
FROM cleaned_data
WHERE Sector != -1 AND Revenue != -1.0
GROUP BY Sector, Revenue;

-- 8. Which sector requires more skills?
SELECT Sector, ROUND(AVG(Python + SQL + R + Excel + Tableau + SAS + spark + aws),2) as avg_skills
FROM cleaned_data
WHERE Sector != -1
GROUP BY Sector
ORDER BY avg_skills DESC;

-- 9. Do high-skill sectors pay more or less?
SELECT Sector, 
       ROUND(AVG(Python + SQL + R + Excel + Tableau + SAS + spark + aws),2) as avg_skills,
       ROUND(AVG("Salary Estimate"),2) as avg_salary
FROM cleaned_data
WHERE Sector != -1
GROUP BY Sector
ORDER BY avg_salary DESC;

-- 10. Do companies with best revies pay better or no?
SELECT Rating,
	ROUND(AVG("Salary Estimate"),2) AS avg_salary
FROM cleaned_data
WHERE Rating != -1
GROUP BY Rating
ORDER BY Rating DESC;

-- 11. Do the which mentioned competitors pay more?
SELECT Competitors,
	ROUND(AVG("Salary Estimate"),2) AS avg_salary
FROM cleaned_data
GROUP BY Competitors;

-- 12. shows you which skills are most in-demand across my dataset, and the salary
SELECT 
    'SQL' as Skill, SUM(sql) as Total_Postings, ROUND((SUM(sql) * 100.0 / 956),2) as Requirement_Percentage FROM cleaned_data
UNION ALL
SELECT 
    'Python', SUM(python), ROUND((SUM(python) * 100.0 / 956),2) FROM cleaned_data
UNION ALL
SELECT 
    'AWS', SUM(aws), ROUND((SUM(aws) * 100.0 / 956),2) FROM cleaned_data
UNION ALL
SELECT 
    'Excel', SUM(excel), ROUND((SUM(excel) * 100.0 / 956),2) FROM cleaned_data
ORDER BY Total_Postings DESC;

-- 13. 
SELECT 
    CASE 
        WHEN (Python + SQL + R + Excel + Tableau + SAS + spark + aws) >= 5 THEN 'Expert (5+ Skills)'
        WHEN (Python + SQL + R + Excel + Tableau + SAS + spark + aws) BETWEEN 3 AND 4 THEN 'Advanced (3-4 Skills)'
        WHEN (Python + SQL + R + Excel + Tableau + SAS + spark + aws) BETWEEN 1 AND 2 THEN 'Intermediate (1-2 Skills)'
        ELSE 'Beginner (0 Skills)' 
    END AS Skill_Tier,
    COUNT(*) AS Job_Count,
    ROUND(AVG("Salary Estimate"), 2) AS Avg_Salary
FROM cleaned_data
GROUP BY Skill_Tier
ORDER BY Avg_Salary DESC;


