INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 1),
('sally', 'sally@example.com', 1),
('mike', 'mike@example.com', null);

SELECT *
FROM users as u
JOIN roles AS r
ON r.id = u.role_id;

SELECT *
FROM users as u
LEFT JOIN roles AS r
ON r.id = u.role_id;

SELECT *
FROM users as u
RIGHT JOIN roles AS r
ON r.id = u.role_id;

SELECT r.name, COUNT(*) AS number_of_users
FROM users as u
LEFT JOIN roles AS r
ON r.id = u.role_id
GROUP BY r.name DESC;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM departments AS d
LEFT JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
LEFT JOIN employees AS e
ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW();

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM departments AS d
LEFT JOIN dept_manager AS dm
ON d.dept_no = dm.dept_no
LEFT JOIN employees AS e
ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
AND e.gender = 'F';

SELECT t.title AS Title, COUNT(t.title) AS Count
FROM titles AS t
LEFT JOIN dept_emp AS de
ON  t.emp_no = de.emp_no
LEFT JOIN departments AS d
ON d.dept_no = de.dept_no
WHERE de.to_date > NOW()
AND t.to_date > NOW()
AND d.dept_name = 'Customer Service'
GROUP BY t.title;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Name', s.salary AS 'Salary'
FROM salaries AS s
LEFT JOIN dept_manager AS dm
ON s.emp_no = dm.emp_no
LEFT JOIN departments AS d
ON d.dept_no = dm.dept_no
LEFT JOIN employees AS e
ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
AND s.to_date > NOW()
GROUP BY d.dept_name;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee', d.dept_name, CONCAT(me.first_name, ' ', me.last_name)
FROM employees AS e
LEFT JOIN dept_emp AS de
ON de.emp_no = e.emp_no
LEFT JOIN departments AS d
ON d.dept_no = de.dept_no
LEFT JOIN dept_manager AS dm
ON dm.dept_no = d.dept_no
LEFT JOIN employees as me
ON me.emp_no = dm.emp_no 
WHERE de.to_date > NOW() AND dm.to_date > NOW();
