 select a.emp_no, 
 		last_name,
		first_name,
		sex,
		salary
from 	employees a, 
		salaries b
where 	a.emp_no = b.emp_no;

 select first_name,
 		last_name,
		hire_date
from	employees
where 	hire_date between '01/01/1986' and '12/31/1986';

select  a.dept_no,
		a.dept_name,
		b.emp_no,
		b.last_name,
		b.first_name
from 	departments a,
		employees b,
		dept_manager c
where 	a.dept_no = c.dept_no and 
		c.emp_no = b.emp_no;
		
select  a.emp_no,
		a.last_name,
		a.first_name,
		b.dept_name
from 	employees a,
		departments b,
		dept_emp c
where 	a.emp_no = c.emp_no and
		b.dept_no = c.dept_no;
		
select  first_name,
		last_name,
		sex
from  	employees
where 	first_name = 'Hercules' and 
		last_name like 'B%';
		
select  a.emp_no,
		a.last_name,
		a.first_name,
		b.dept_name
from 	employees a,
		departments b,
		dept_emp c
where 	a.emp_no = c.emp_no and
		b.dept_no = c.dept_no and
		b.dept_name = 'Sales';

select  a.emp_no,
		a.last_name,
		a.first_name,
		b.dept_name
from 	employees a,
		departments b,
		dept_emp c
where 	a.emp_no = c.emp_no and
		b.dept_no = c.dept_no and
		(b.dept_name = 'Sales' or b.dept_name = 'Development');
		
select	last_name,
		count(last_name) ln_count
from 	employees
group by last_name
order by ln_count desc;