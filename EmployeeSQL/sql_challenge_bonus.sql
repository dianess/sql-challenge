CREATE VIEW avg_salaries_by_title AS
SELECT t.title, ROUND(AVG(s.salary),0) AS average_salary
FROM salaries as s
JOIN titles as t
ON (s.emp_no=t.emp_no)
GROUP BY t.title
ORDER BY average_salary DESC;