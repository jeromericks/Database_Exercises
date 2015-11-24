SELECT COUNT(first_name), gender
FROM employees
WHERE first_name = 'Irena'
OR first_name = 'Vidya'
OR first_name = 'Maya'
GROUP BY gender;

SELECT CONCAT(first_name, ' ', last_name) AS 'Name'
FROM employees
WHERE first_name LIKE 'E%'
AND last_name LIKE '%E';

SELECT DATEDIFF(NOW(), hire_date) AS 'Days working at firm', first_name, last_name, hire_date
FROM employees
WHERE birth_date LIKE '%12-25%' 
	AND(
		hire_date BETWEEN '1990-01-01' AND '1999-12-31'
	)
ORDER BY hire_date;

SELECT DISTINCT first_name, last_name, COUNT(*) as Num
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY COUNT(*) DESC;


SELECT CONCAT(emp_no, ' - ', last_name, ', ', first_name) AS full_name , birth_date AS DOB
FROM employees
LIMIT 10;