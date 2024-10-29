--1 Get the salary data from the salaries table and join it to this table, employees
select employees.emp_no, employees.first, employees.last, employees.sex, salaries.salary
from employees
inner join salaries on employees.emp_no = salaries.emp_no;

--2 Find all employees hired in the year 1986
select first, last, hire_date
from employees
where hire_date >= '1986-1-1' and hire_date <= '1986-12-31'
order by first;

--3 Join the department name and number of managers into one table
select dept_mgr.dept_no, dept_mgr.emp_no--, dpt.dept_name, emp.last, emp.first
from dept_mgr
inner join employees on dept_mgr.emp_no = employees.emp_no
inner join dept on dept_mgr.dept_no = dept.dept_no;

--4
select employees.first, employees.last, employees.emp_no, dept_emp.emp_no, dept.dept_name
from employees
left join dept_emp on employees.emp_no = dept_emp.emp_no
left join dept on dept_emp.dept_no = dept.dept_no


--5 Finds all employees with a first name of Hercules and a last name starting with B
select first, last, sex
from employees
where first = 'Hercules' and last like 'B%';

--6 Every employee in the Sales department, with their first, last name and ID
select employees.first, employees.last, employees.emp_no
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join dept on dept_emp.dept_no = dept.dept_no
where dept_name = 'Sales';

--7 List every employee in either the Sales or Development department
select employees.first, employees.last, employees.emp_no, dept.dept_name
from employees
inner join dept_emp on employees.emp_no = dept_emp.emp_no
inner join dept on dept_emp.dept_no = dept.dept_no
where dept_name = 'Sales' or dept_name = 'Development';


--8 Show the frequency of last names in our table.
select last, count(last) from employees
group by last
order by count desc;
