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
dept_manager.emp_no,
employees.last_name, 
employees.first_name 

from dept_manager
join department on dept_manager.dept_no = department.dept_no
join employees on employees.emp_no = dept_manager.emp_no

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
Select  
employees.first_name, 
employees.last_name, 
employees.sex

from employees
where employees.first_name ='Hercules' and employees.last_name like '%B%'

--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select 
employees.emp_no, 
employees.last_name,
employees.first_name, 
department.dept_name

from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join department on dept_emp.dept_no = department.dept_no

where department.dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select 
employees.emp_no, 
employees.last_name,
employees.first_name, 
department.dept_name

from employees
join dept_emp on employees.emp_no = dept_emp.emp_no
join department on dept_emp.dept_no = department.dept_no

where department.dept_name = 'Sales' or department.dept_name = 'Development'

--8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
Select  
employees.last_name,
count(employees.last_name) as count_of_lastname

from employees
group by employees.last_name





