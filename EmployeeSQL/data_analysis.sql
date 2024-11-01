-- DATA ANALYSIS

-- 1) List the employee number, last name, first name, sex, and salary of each employee.

select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary

from employees
join salaries
on employees.emp_no = salaries.emp_no
order by employees.emp_no
;
 -- OK rows 300024

-- 2) List the first name, last name, and hire date for the employees who were hired in 1986.

select last_name, first_name, hire_date
from employees
where extract(year from hire_date)= 1986
order by hire_date ;

	-- OK 36150 rows



-- 3) List the manager of each department along with their department number, department name, employee number, last name, and first name.

select departements.dept_no, departements.dept_name, dept_manager.emp_no , employees.last_name , employees.first_name

from departements
	join dept_manager
		join employees
		on dept_manager.emp_no = employees.emp_no
	on departements.dept_no = dept_manager.dept_no

	-- OK 24 rows


-- 4) List the department number for each employee along with that employee’s employee number, last name, first name, and department name.

select employees.emp_no , employees.last_name  , employees.first_name , dept_emp.dept_no , departements.dept_name

from employees
	join dept_emp
		join departements
		on dept_emp.dept_no  = departements.dept_no
	on employees.emp_no  = dept_emp.emp_no

	--  OK 331,603 rows (consistant with emp_dept table) because there are 31579 employees that have been in 2 different departments

		-- count of multi-aaigned employees
		select count(*) as multi_assignment
		from  ( 
			select *
			from (
				select emp_no, count(emp_no) as assignment
				from dept_emp
				group by emp_no 
				order by assignment desc
				) 
			where assignment >1
			);


-- 5) List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

select  first_name , last_name, sex
from employees
where 
	first_name = 'Hercules' 	and last_name like 'B%' 
order by last_name
;
	
	-- OK 20 rows  : baak, baer,... , buchter

-- 6) List each employee in the Sales department, including their employee number, last name, and first name.

select employees.emp_no , employees.last_name  , employees.first_name 

from employees
	join dept_emp
		join departements
		on dept_emp.dept_no  = departements.dept_no
	on employees.emp_no  = dept_emp.emp_no
	
where departements.dept_name = 'Sales'
order by emp_no

	-- OK rows = 52245

-- 7) List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

select employees.emp_no , employees.last_name  , employees.first_name , departements.dept_name

from employees
	join dept_emp
		join departements
		on dept_emp.dept_no  = departements.dept_no
	on employees.emp_no  = dept_emp.emp_no
	
where departements.dept_name = 'Sales' or departements.dept_name = 'Development'
order by emp_no

	-- OK rows = 137952


-- 8) List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

select last_name , count(last_name) as frequency
from employees
group by last_name
order by frequency desc

	-- OK 1638 rows : baba (226), corg(223), gelosh(223),..., sadowsky(145), foolsday (1)
