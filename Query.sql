create view DA_1 as 
select employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
from employees 
join salaries on employees.emp_no = salaries.emp_no;

create view DA_2 as
select last_name, first_name, hire_date
from employees 
where hire_date>= '1986-01-01 00:00:00'
and hire_date<'1987-01-01 00:00:00'
order by hire_date desc;

select * 
from employees
order by hire_date desc;