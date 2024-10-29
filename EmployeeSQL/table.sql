create table dept (
	dept_no varchar(10) primary key,
	dept_name varchar(30) not null
);

--Create a table storing employee numbers and the deptmartment numbers they belong to
create table dept_emp (
	emp_no int not null,
	dept_no varchar(10) not null
);

--Table of Department Managers' ID's and what department they're apart of
create table dept_mgr (
	dept_no varchar(10) not null,
	emp_no int primary key
);

--Table of employees and various information about them
create table employees(
	emp_no int primary key,
	emp_title_id varchar(10) not null,
	birth_date date not null,
	first varchar(40) not null,
	last varchar(40) not null,
	sex varchar(1) not null,
	hire_date date not null
);

--Create a table storing the salaries of various employees
create table salaries(
	emp_no int primary key,
	salary int not null
);

--Create a table storing the various job titles an employee could possess
create table titles(
	title_id varchar primary key,
	title varchar not null
);