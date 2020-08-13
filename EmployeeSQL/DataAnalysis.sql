--List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT emp.emp_no as "Employee No", emp.last_name as "Last Name", emp.first_name as "First Name",emp.sex as "Sex" ,sal.salary
FROM employees emp
INNER JOIN dept_salary sal
ON emp.emp_no=sal.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name  as "First Name",last_name as "Last Name", hire_date as "Hire Date"
FROM employees
WHERE hire_date >'1985-12-31' 
	AND hire_date <='1986-12-31';


--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name.

SELECT dm.dept_no,dept.dept_name,emp.emp_no,emp.last_name, emp.first_name
FROM dept_manager dm
INNER JOIN departments dept
ON dept.dept_no=dm.dept_no
INNER JOIN employees emp
ON emp.emp_no=dm.emp_no


--List the department of each employee with the following information: employee number, last name, first name, 
--and department name.

SELECT emp.emp_no,emp.last_name,emp.first_name,dept.dept_name
FROM employees emp
INNER JOIN dept_emp de
ON emp.emp_no=de.emp_no
INNER JOIN departments dept
ON dept.dept_no=de.dept_no;



--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name,last_name,sex
FROM employees
WHERE first_name ='Hercules'
	AND last_name like 'B%';
	

--List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT emp.emp_no,emp.last_name,emp.first_name, dept.dept_name
FROM employees emp
INNER JOIN dept_emp de
ON emp.emp_no=de.emp_no
INNER JOIN departments dept
ON dept.dept_no=de.dept_no
WHERE dept.dept_name='Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department 
SELECT * FROM  departments;
SELECT * FROM  employees;
SELECT * FROM  dept_emp;
SELECT * FROM  dept_manager;
SELECT * FROM  titles;
SELECT * FROM  dept_salary;
