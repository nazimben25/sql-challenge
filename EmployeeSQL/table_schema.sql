-- (0) TO USE if needed to reset the DB, otherwise go to (1)

DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS titles CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS departements CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;


-- 1) Create tables

	-- 1.1) create table salaries
		-- Drop table if exists
		DROP TABLE salaries;
		
		-- Create new table
		
		create table salaries (
			emp_no int primary key ,
			salary DECIMAL
			)	;
			
		select * from salaries ;

	-- 1.2) create table titles
		-- Drop table if exists
		DROP TABLE titles;
		
		-- Create new table
		
		create table titles (
			title_id CHAR(5) PRIMARY KEY,
			title VARCHAR(20)  not null
			)	;
		select * from titles ;


	-- 1.3) create table employees
		--  Drop table if exists
		DROP TABLE employees;
		
		-- Create new table
		
		create table employees (
			emp_no int primary key ,
			emp_title_id char(5)  not null,
			birth_date DATE,
			first_name varchar(25)  not null,
			last_name varchar(25),
			sex char(1)  not null,
			hire_date DATE,
			FOREIGN KEY (emp_no) REFERENCES salaries(emp_no),
			FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
			)	;
			
		select * from employees ;

	-- 1.4) create table departments
		-- Drop table if exists
		DROP TABLE departements;
		
		-- Create new table
		
		create table departements (
			dept_no CHAR(4) primary key,
			dept_name varchar(25)  not null
			)	;

		select * from departements ;

	-- 1.5) create table dept_emp
		-- Drop table if exists
		DROP TABLE dept_emp;
		
		--  Create new table
		
		create table dept_emp (
			emp_no int  not null,
			dept_no CHAR(4)  not null,
			
			PRIMARY KEY (emp_no, dept_no),
			
			FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
			FOREIGN KEY (dept_no) REFERENCES departements(dept_no)
			)	;
			
		select * from dept_emp ;

	-- 1.6) create table dept_manager
		-- drop table if exists
		DROP TABLE dept_manager;
		
		-- Create new table
		
		create table dept_manager (
			dept_no CHAR(4)  not null,
			emp_no int  not null,
			
			PRIMARY KEY (dept_no, emp_no),
			
			FOREIGN KEY (dept_no) REFERENCES departements(dept_no),
			FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
			)	;
			
		select * from dept_manager ;





