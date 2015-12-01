SELECT CONCAT(first_name, ' ', last_name) AS name, hire_date
FROM employees
WHERE hire_date IN (
	SELECT hire_date 
	FROM employees
	WHERE emp_no = '101010'
);

SELECT t.title, CONCAT(e.first_name, ' ', e.last_name) AS full_name
FROM employees AS e
LEFT JOIN titles AS t
ON t.emp_no = e.emp_no
WHERE e.first_name = 'Aamod';


SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name, e.gender
FROM employees AS e
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE e.gender = 'F' AND dm.to_date > NOW();


SELECT d.dept_name
FROM employees AS e
JOIN dept_manager as dm
ON dm.emp_no = e.emp_no
JOIN departments AS d
ON d.dept_no = dm.dept_no
WHERE e.gender = 'F' AND dm.to_date > NOW();
