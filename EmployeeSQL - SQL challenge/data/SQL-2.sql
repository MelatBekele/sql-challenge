Select * from department;
Select * from dept_emp;
Select * from dept_manager;
Select * from employees;
Select * from salaries;
Select * from titles;

1--List the following details of each employee: employee number, last name, first name, sex, and salary.

Select 
employees.emp_no, 
employees.last_name, 
employees.first_name, 
employees.sex,
salaries.salary

from employees
join salaries on employees.emp_no = salaries.emp_no

--changing data type 
ALTER TABLE employees 
ALTER hire_date type date USING hire_date::date; 

2--List first name, last name, and hire date for employees who were hired in 1986.
Select 
employees.last_name, 
employees.first_name,
employees.hire_date
from employees
where employees.hire_date >= '1/1/1986'
order by employees.hire_date

--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
Select
dept_manager.dept_no,
department.dept_name,
dept_emp.emp_no,
employees.last_name, 
employees.first_name 

from dept_manager
join department on dept_manager.dept_no = department.dept_no
join dept_emp on dept_manager.dept_no = dept_emp.dept_no
join employees on dept_emp.emp_no = employees.emp_no

--4. List the department of each employee with the following information: employee number, last name, first name, and department name.
Select 
employees.emp_no, 
employees.last_name, 
employees.first_name, 
dept_emp.dept_no

from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
--where employees.emp_no = '57444'

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."










