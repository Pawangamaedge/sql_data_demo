use demo;

CREATE TABLE orgs (
  employee_id int not null primary key,
  Name varchar(50),
  gender varchar(10),
  salary int,
  dept varchar(20),
  experiance int 
);


INSERT INTO orgs (employee_id, Name, gender, salary, dept, experiance)
VALUES (5, 'Priya Sharma', 'Female', 45000, 'IT', 2),
(6, 'Rahul Patel', 'Male', 65000, 'Sales', 5),
(7, 'Nisha Gupta', 'Female', 55000, 'Marketing', 4),
(8, 'Vikram Singh', 'Male', 75000, 'Finance', 7),
(9, 'Aarti Desai', 'Female', 50000, 'IT', 3);

select * from orgs;

select dept, sum(salary) from orgs group by salary;
select dept, sum(salary) from orgs group by dept having sum(salary) >= 50000;
select dept, sum(salary) as sum_salary, avg(salary) as avg_salary
from orgs group by dept having sum(salary) >=50000 and avg(salary)>=55000;
select Name, avg(salary) as avg_salary from orgs group by name having avg(salary)>=50000;
select name, count(experiance) as total_expreriance from orgs group by name having 
sum(experiance) >= 4;
select employee_id, name as emp_name, sum(salary) as emp_salary, dept as emp_dept
from orgs group by employee_id having sum(salary)>=60000;
