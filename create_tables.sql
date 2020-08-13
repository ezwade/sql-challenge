create table departments
(dept_no varchar(30) primary key,
dept_name varchar(30));

select * from departments;

drop table dept_emp

create table dept_emp
(emp_no varchar(10),
 dept_no varchar(10), 
 primary key(emp_no, dept_no), 
foreign key (dept_no) references departments(dept_no),
foreign key (emp_no) references employees(emp_no));

select * from dept_emp;

create table titles 
(title_id varchar(30) primary key,
 title varchar(50));
 
 select * from titles;
 
 drop table employees
 
 create table employees
(emp_no varchar(10) primary key,
 emp_title_id varchar(30),
 birth_date date,
 first_name varchar(50),
 last_name varchar(50), 
 sex varchar(30),
 hire_date date, 
foreign key (emp_title_id) references titles(title_id));

select * from employees;

create table dept_manager
(dept_no varchar(10),
 emp_no varchar(10), 
 primary key(dept_no, emp_no), 
foreign key (dept_no) references departments(dept_no),
foreign key (emp_no) references employees(emp_no));

select * from dept_manager;

create table salaries
(emp_no varchar(10),
 salary int, 
 foreign key (emp_no) references employees(emp_no));
 
 select * from salaries;
 





	   