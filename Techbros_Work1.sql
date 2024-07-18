
-- In the hr_countries table, retrieve records where the country_name contains the expression 'land'.
SELECT *
FROM hr_countries
WHERE country_name LIKE '%land%';

-- How many distinct job_id's are associated with employees who earn less than 5000 in the hr_employees table? 
SELECT job_id, COUNT(DISTINCT employee_id) AS employee_count
FROM hr_employees 
WHERE salary < 5000 
GROUP BY job_id;

-- Display the employee_id, full name (concatenation of first name and last name),
-- and job_id of employees in the hr_employees table who earn between 10,000 and 20,000.
SELECT 
(first_name || ' '|| last_name) as full_name, job_id
FROM hr_employees
WHERE salary BETWEEN 10000 AND 20000;

-- The shortest country_name in the hr_countries table
SELECT country_name
FROM hr_countries
ORDER BY LENGTH(country_name), country_name
LIMIT 1; 

-- The longest country_name in the hr_countries table
SELECT country_name
FROM hr_countries
ORDER BY LENGTH(country_name) DESC, country_name
LIMIT 1; 


