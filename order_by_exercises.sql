SELECT * 
FROM employees
WHERE first_name IN('Irena', 'Vidya')
OR first_name = 'Maya'
ORDER BY first_name ASC;

SELECT * 
FROM employees
WHERE first_name IN('Irena', 'Vidya')
OR first_name = 'Maya'
ORDER BY first_name ASC, last_name ASC;

SELECT * 
FROM employees
WHERE first_name IN('Irena', 'Vidya')
OR first_name = 'Maya'
ORDER BY last_name ASC, first_name ASC;

SELECT * 
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
ORDER BY emp_no ASC;

SELECT * 
FROM employees
WHERE last_name LIKE 'E%'
OR last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT * 
FROM employees
WHERE last_name LIKE 'E%'
AND last_name LIKE '%E'
ORDER BY emp_no DESC;

SELECT * 
FROM employees
WHERE birth_date LIKE '%12-25%' 
	AND(
		hire_date BETWEEN '1990-01-01' AND '1999-12-31'
	)
ORDER BY birth_date ASC, hire_date DESC;