-- Rodgers sql-challenge data analysis queries

-- List the following details of each employee: employee number, last name, first name, sex, and salary
SELECT * FROM salary

SELECT empl_no, last_name, first_name, sex FROM employee_roster


SELECT empl_no, salary FROM salary

JOIN ON empl_no
LIMIT 20


