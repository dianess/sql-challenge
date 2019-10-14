CREATE VIEW employee_details AS
SELECT e.emp_no, e.last_name, e.first_name, e.gender, s.salary
FROM salaries AS s
JOIN employees AS e
ON (e.emp_no = s.emp_no);


CREATE VIEW employees_hired_in_1986 AS
SELECT hire_date, first_name, last_name
FROM employees
WHERE hire_date >= '1986-01-01' 
       AND hire_date < '1987-01-01';

CREATE VIEW department_managers_details AS
SELECT dm.dept_no, d.dept_name, dm.emp_no, dm.from_date, dm.to_date, e.last_name, e.first_name
FROM dept_manager AS dm
JOIN employees AS e
ON (e.emp_no = dm.emp_no)
	JOIN departments AS d
	ON (d.dept_no = dm.dept_no);

CREATE VIEW department_of_each_employee AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM dept_emp AS de
JOIN employees AS e
ON (e.emp_no = de.emp_no)
	JOIN departments AS d
	ON (d.dept_no = de.dept_no);

CREATE VIEW employees_Hercules_B AS
SELECT e.first_name, e.last_name 
FROM employees AS e
WHERE e.first_name = 'Hercules' AND e.last_name LIKE 'B%';

CREATE VIEW sales_department AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM dept_emp AS de
JOIN employees AS e
ON (e.emp_no = de.emp_no)
	JOIN departments AS d
	ON (d.dept_no = de.dept_no)
		WHERE d.dept_name = 'Sales';

CREATE VIEW sales_development_departments AS
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name 
FROM dept_emp AS de
JOIN employees AS e
ON (e.emp_no = de.emp_no)
	JOIN departments AS d
	ON (d.dept_no = de.dept_no)
		WHERE d.dept_name = 'Sales' OR d.dept_name = 'Development';

CREATE VIEW employee_shared_names AS
SELECT e.last_name, COUNT(e.last_name)
FROM employees AS e
GROUP BY last_name
ORDER BY COUNT(e.last_name)DESC;

