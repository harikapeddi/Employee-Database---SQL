create view DA_1 as 
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees 
join salaries on employees.emp_no = salaries.emp_no;

create view DA_2 as
select first_name, last_name, hire_date
from employees 
where hire_date>= '1986-01-01 00:00:00'
and hire_date<'1987-01-01 00:00:00'
order by hire_date desc;

create view DA_3 as
select dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
from employees
join dept_manager on dept_manager.emp_no = employees.emp_no
join departments on dept_manager.dept_no = departments.dept_no
order by dept_name;

create view DA_4 as
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp on dept_emp.emp_no = employees.emp_no
left join departments on dept_emp.dept_no = departments.dept_no;

create view DA_5 as
select first_name, last_name, sex 
from employees 
where first_name = 'Hercules'  
and last_name like 'B%';

create view DA_6 as
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp on dept_emp.emp_no = employees.emp_no
left join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';

create view DA_7 as
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
left join dept_emp on dept_emp.emp_no = employees.emp_no
left join departments on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales'
or dept_name = 'Development';

create view DA_8 as
select last_name, count(last_name) as "total count"
from employees
group by last_name
order by "total count" desc;
