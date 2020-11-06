-- Rodgers sql-challenge data analysis queries

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
-- SELECT * FROM salary
-- SELECT * FROM employee_roster
SELECT er.empl_no, er.last_name, er.first_name, er.sex, s.salary
FROM employee_roster er
JOIN salary s
ON (er.empl_no = s.empl_no)
LIMIT 20

-- List first name, last name, and hire date for employees who were hired in 1986.
-- SELECT * FROM employee_roster
SELECT empl_no, first_name, last_name, hire_date FROM employee_roster
WHERE hire_date LIKE '%1986'

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
-- SELECT * FROM departments
-- SELECT * FROM employee_manager
-- SELECT * FROM employee_roster

SELECT d.dept_no, d.dept_name, em.empl_no, er.last_name, er.first_name
FROM departments d
JOIN employee_manager em
ON (d.dept_no = em.dept_no)
JOIN employee_roster er
ON (em.empl_no = er.empl_no)

-- d.	List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT er.empl_no, er.last_name, er.first_name, ed.dept_no, d.dept_name
FROM employee_roster er
JOIN employee_department ed
ON (er.empl_no = ed.empl_no)
JOIN departments d
ON (ed.dept_no = d.dept_no)

-- List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."
SELECT * FROM employee_roster

SELECT first_name, last_name, sex
FROM employee_roster
WHERE first_name = 'Hercules'
AND (last_name) LIKE 'B%'

-- List all employees in the Sales department, including their 
-- employee number, last name, first name, and department name.
SELECT er.empl_no, er.last_name, er.first_name, ed.dept_no, d.dept_name
FROM employee_roster er
JOIN employee_department ed
ON (er.empl_no = ed.empl_no)
JOIN departments d
ON (ed.dept_no = d.dept_no)
WHERE dept_name = 'Sales'

-- g.	List all employees in the Sales and Development departments, including their 
-- employee number, last name, first name, and department name.
SELECT er.empl_no, er.last_name, er.first_name, ed.dept_no, d.dept_name
FROM employee_roster er
JOIN employee_department ed
ON (er.empl_no = ed.empl_no)
JOIN departments d
ON (ed.dept_no = d.dept_no)
WHERE dept_name = 'Sales' OR dept_name = 'Development'
-- WHERE dept_name = 'Sales' AND dept_name = 'Development'

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
SELECT last_name, COUNT(last_name) FROM employee_roster
GROUP BY last_name
ORDER BY last_name desc







































