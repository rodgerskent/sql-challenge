-- Rodgers SQL-Challenge Table Setup

-- Titles table setup
DROP TABLE titles
CREATE TABLE titles (
--	title_item SERIAL,
	title_id VARCHAR(10) PRIMARY KEY,
	title VARCHAR (30) NOT NULL
);
SELECT * FROM titles

-- Salary table setup
DROP TABLE Salary
CREATE TABLE salary (
-- salary_item SERIAL,
	empl_no INT PRIMARY KEY,
	salary INT
);
SELECT * FROM salary

-- Employee_Roster table setup
DROP TABLE employee_roster
CREATE TABLE employee_roster (
-- empl_item SERIAL,
	empl_no INT PRIMARY KEY,
	emp_title_id VARCHAR (30),
	birth_date VARCHAR (10),
	first_name VARCHAR (30),
	last_name VARCHAR (30),
	sex VARCHAR (10),
	hire_date VARCHAR (10),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
	);
SELECT * FROM employee_roster
LIMIT 20

-- Departments table setup
DROP TABLE departments
CREATE TABLE departments (
-- department_item SERIAL,
	dept_no VARCHAR (30) PRIMARY KEY,
	dept_name VARCHAR (30) NOT NULL
	);
SELECT * FROM departments

-- Employee_Manager table setup
DROP TABLE employee_manager
CREATE TABLE employee_manager (
-- manager_item SERIAL,
	dept_no VARCHAR (30),
	empl_no INT PRIMARY KEY,
-- manager BOOLEAN
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);
SELECT * FROM employee_manager

-- Employee_Department table setup
DROP TABLE employee_department
CREATE TABLE employee_department (
-- junction_item SERIAL,
	empl_no INT PRIMARY KEY,
	dept_no VARCHAR (30) PRIMARY KEY,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
	);
SELECT * FROM employee_department







