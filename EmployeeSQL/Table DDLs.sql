--Dropping table if already exists

DROP TABLE departments;
DROP TABLE employees;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE titles;
DROP TABLE dept_salary;

--Create tables

CREATE TABLE departments (
	dept_no VARCHAR(25) PRIMARY KEY,
	dept_name VARCHAR(255) not null
	);
	
CREATE TABLE employees(
	emp_no INT PRIMARY KEY,
	emp_title_id VARCHAR(25),
	birth_date DATE,
	first_name VARCHAR(35),
	last_name VARCHAR(35),
	sex VARCHAR(1),
	hire_date DATE,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE DEPT_EMP(
	emp_no INT NOT NULL,
	dept_no VARCHAR(25) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(25) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE titles(
	title_id VARCHAR(25) PRIMARY KEY,
	title VARCHAR(255)
);

CREATE TABLE dept_salary(
	emp_no INT ,
	salary INTEGER,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

--SELECT from tables once data is imported.

SELECT * FROM departments;
SELECT * FROM  employees;
SELECT * FROM  dept_emp;
SELECT * FROM  dept_manager;
SELECT * FROM  titles;
SELECT * FROM  dept_salary;