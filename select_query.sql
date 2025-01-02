CREATE TABLE Employees (
    ID INT NOT NULL PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    City VARCHAR(50),
    Salary DECIMAL(10, 2)
);


INSERT INTO Employees (ID, Name, Age, City, Salary) VALUES (1, 'John Doe', 29, 'New York', 60000),
(2, 'Jane Smith', 34, 'Los Angeles', 75000),
(3, 'Mike Brown', 41, 'Chicago', 85000),
(4, 'Sarah Davis', 25, 'Houston', 54000),
(5, 'David Wilson', 37, 'Phoenix', 62000),
(6, 'Emily Taylor', 30, 'Philadelphia', 72000),
(7, 'Daniel Moore', 27, 'San Antonio', 58000),
(8, 'Laura White', 33, 'San Diego', 81000),
(9, 'Chris Green', 40, 'Dallas', 88000),
(10, 'Anna Lewis', 24, 'San Jose', 52000),
(11, 'Tom Clark', 36, 'Austin', 73000),
(12, 'Lisa Hall', 29, 'Jacksonville', 61000),
(13, 'Mark Allen', 42, 'Fort Worth', 90000),
(14, 'Rachel King', 26, 'Columbus', 57000),
(15, 'Steven Scott', 39, 'Charlotte', 80000),
(16, 'Karen Adams', 31, 'San Francisco', 82000),
(17, 'Paul Baker', 28, 'Indianapolis', 56000),
(18, 'Nancy Perez', 35, 'Seattle', 74000),
(19, 'Adam Turner', 38, 'Denver', 78000),
(20, 'Megan Carter', 32, 'Washington', 85000);

-- practice queries
select * from Employees;
select * from Employees where Name = 'Jane Smith';
select * from Employees where Salary>80000;
-- group by only works with aggregate functions
select City, Salary as AverageSalary from Employees group by city;
select distinct name as distinct_name from Employees;
select count(distinct Name ) as distinct_name from Employees;
select Name, Age as name_age from Employees where Age between 30 and 50;
select Name, Age as sorted_age from Employees where Age between 30 and 35 order by Age desc;
select Name, Salary from Employees order by Salary desc;
select City, Salary from Employees where City = 'San Diego' and Salary = 81000;
select City, Name as employee_name from Employees where City like 'C%' or City like 'D%';
select Name, City from Employees where City like 'C%' and Salary > 60000;
select * from Employees where Age > 33 and (City like 'C%' or City like 'D%') and Salary > 50000;
select City as city_name, Name as person_name from Employees where (City not like 'H%' and City not like 'I%');
select City as not_in_city from Employees where City not in ('india', 'london');
select Name from Employees where Name in ('John Doe','Jane Smith','Mike Brown','Adam Turner');
