-- Rodgers sql-challenge data analysis queries

-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT * FROM salary
SELECT * FROM employee_roster

SELECT er.empl_no, er.last_name, er.first_name, er.sex 
FROM employee_roster er
JOIN salary s
ON (er.empl_no = s.empl_no)
LIMIT 20

