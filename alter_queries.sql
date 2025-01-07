use demo;

CREATE TABLE employee_details (
    emp_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dept_id VARCHAR(50),
    joining_date DATE,
    salary DECIMAL(10, 2)
);

INSERT INTO employee_details (first_name, last_name, dept_id, joining_date, salary) VALUES
('John', 'Doe', 'HR', '2020-01-15', 50000.00),
('Jane', 'Smith', 'Finance', '2019-03-10', 60000.00),
('Alice', 'Johnson', 'IT', '2021-05-20', 70000.00),
('Bob', 'Williams', 'Sales', '2018-07-30', 55000.00),
('Chris', 'Brown', 'Marketing', '2022-11-01', 65000.00),
('Diana', 'Jones', 'IT', '2021-08-15', 72000.00),
('Eve', 'Garcia', 'HR', '2023-04-10', 48000.00),
('Frank', 'Miller', 'Finance', '2020-09-25', 62000.00),
('Grace', 'Wilson', 'Sales', '2019-12-05', 57000.00),
('Hank', 'Davis', 'IT', '2022-02-18', 71000.00),
('Ivy', 'Martinez', 'Marketing', '2017-06-12', 65000.00),
('Jack', 'Taylor', 'HR', '2020-08-20', 51000.00),
('Kathy', 'Anderson', 'Finance', '2021-10-10', 68000.00),
('Liam', 'Thomas', 'Sales', '2018-04-15', 56000.00),
('Mona', 'White', 'IT', '2023-01-10', 75000.00),
('Nathan', 'Harris', 'Marketing', '2019-09-22', 67000.00),
('Olivia', 'Clark', 'HR', '2021-03-30', 52000.00),
('Paul', 'Lewis', 'Finance', '2020-12-15', 63000.00),
('Quinn', 'Walker', 'Sales', '2022-06-05', 58000.00),
('Rachel', 'Hall', 'IT', '2023-07-25', 76000.00);

select * from employee_details;
-- alter table employee_details drop column salary;
-- update employee_details set salary=NULL;
alter table employee_details add location varchar(200);
alter table employee_details drop column location;
alter table employee_details rename column salary to emp_salary;
alter table employee_details rename to employees_details;
select * from employees_details;
describe employees_details;
