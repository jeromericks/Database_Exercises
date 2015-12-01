SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, t.title
FROM employees AS e
LEFT JOIN titles AS t
ON t.emp_no = e.emp_no
WHERE t.title LIKE 'Senior%' AND t.to_date > NOW();


SELECT CONCAT(first_name, ' ', last_name) AS full_name, s.salary
FROM employees AS e
LEFT JOIN dept_manager AS dm
ON dm.emp_no = e.emp_no
LEFT JOIN salaries AS s
ON s.emp_no =  dm.emp_no
WHERE s.to_date > NOW() AND dm.to_date > NOW();


SELECT t.title, AVG(s.salary) AS average_salary
FROM titles AS t
LEFT JOIN salaries AS s
ON s.emp_no = t.emp_no
WHERE s.to_date > NOW() AND t.to_date > NOW()
GROUP BY t.title
ORDER BY average_salary;
