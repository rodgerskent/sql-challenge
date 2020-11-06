# sql-challenge
Name
SQL Challenge – Pewlett Hackard

Overview
This project requires a new data engineer to complete a research project related to employees of the corporation from the 1980s and 1990s. What remains of the database of employees from that period are six CSV files. The task is to build a SQL database using the six CSV files and perform data analysis on the employee information.

Approach & Methodology
The project required three phases. These phases included Data Modelling, Data Engineering and then Data Analysis. The key deliverables for each phase are listed below. Please see the “Pitchbook” for relevant screen shots and examples of completed work. The two sql files provided have the scripts utilized for building the database (schema) and performing the data analysis (queries).

1.	Data Modeling
  a.	 Inspect the CSVs and sketch out an ERD of the tables. 
  i.	Feel free to use a tool like http://www.quickdatabasediagrams.com.

2.	Data Engineering
  a.	Use the information you have to create a table schema for each of the six CSV files. Remember to specify data types, primary keys, foreign keys, and other constraints.
  b.	For the primary keys check to see if the column is unique, otherwise create a composite key. Which takes to primary keys in order to uniquely identify a row.
  c.	Be sure to create tables in the correct order to handle foreign keys.
  d.	Import each CSV file into the corresponding SQL table. Note be sure to import the data in the same order that the tables were created and account for the headers when importing to avoid errors.

3.	Data Analysis - Once you have a complete database, do the following:
  a.	List the following details of each employee: employee number, last name, first name, sex, and salary.
  b.	List first name, last name, and hire date for employees who were hired in 1986.
  c.	List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
  d.	List the department of each employee with the following information: employee number, last name, first name, and department name.
  e.	List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
  f.	List all employees in the Sales department, including their employee number, last name, first name, and department name.
  g.	List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
  h.	In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Key Takeaways
None outside of building database modelling and engineering competency

Repository Summary & Deliverables Locator
•	Image file of ERD located in Pitchbook (PPT) as well as the Rodgers_ERD Excel file
•	Image examples of completed data analysis located in Pitchbook (PPT)
•	Schema is located in rodgersone.sql
•	Queries are located in rodgerstwo.sql
•	The original six CSV files are located in the EmployeeSQl folder

Support
I attempted to construct an ERD using the recommended third-party application but found the tool to be unreliable based on its requirement to have a pro account and requiring a twitter account to obtain one. 

Roadmap
Not applicable

Contributing
This project was complete on an individual basis

License
PG Admin was utilized without added expense to complete this project

Project status
Core assignment is complete. The bonus section is still pending. 
