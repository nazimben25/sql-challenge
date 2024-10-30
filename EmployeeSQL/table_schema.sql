-- 1) Create tables

	-- 1.1) create table departments
		-- 1.1.1) Drop table if exists
		DROP TABLE departements;
		
		-- 1.1.2) Create new table
		
		create table departements (
			dept_no CHAR(4) primary key,
			dept_name varchar(25)
			)	

		select * from departements ;

	-- 1.2) create table dept_emp
		-- 1.2.1) Drop table if exists
		DROP TABLE dept_emp;
		
		-- 1.2.2) Create new table
		
		create table dept_emp (
			emp_no int primary key,
			dept_no CHAR(4)
			)	
			
		select * from dept_emp ;

	-- 1.3) create table dept_manager
		-- 1.3.1) Drop table if exists
		DROP TABLE dept_manager;
		
		-- 1.3.2) Create new table
		
		create table dept_manager (
			dept_no CHAR(4) ,
			emp_no int
			)	
			
		select * from dept_manager ;

	-- 1.4) create table employees
		-- 1.4.1) Drop table if exists
		DROP TABLE employees;
		
		-- 1.4.2) Create new table
		
		create table employees (
			emp_no int primary key ,
			emp_title_id char(5),
			birth_date DATE,
			first_name varchar(25),
			last_name varchar(25),
			sex char(1),
			hire_date DATE
			)	
			
		select * from employees ;

	-- 1.5) create table salaries
		-- 1.5.1) Drop table if exists
		DROP TABLE salaries;
		
		-- 1.5.2) Create new table
		
		create table salaries (
			emp_no int primary key ,
			salary DECIMAL
			)	
			
		select * from salaries ;

	-- 1.6) create table titles
		-- 1.6.1) Drop table if exists
		DROP TABLE titles;
		
		-- 1.6.2) Create new table
		
		create table titles (
			title_id char(5) primary key ,
			title varchar(20)
			)	
		select * from titles ;