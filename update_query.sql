use demo;
select * from Employees;


update Employees set Name = 'David Guetta' where ID = 5;
update Employees set Name = 'Travis Scott', Age = 49, City = 'london', Salary = 80000 where ID = 1;
UPDATE Employees SET Salary = 75400 WHERE Name IN ('Mike Brown', 'Emily Taylor');
update Employees set salary = 55000 where ID in (3,6);
UPDATE Employees SET Salary = 100000 WHERE age = 49;
update Employees set Salary = 23343 where Name = 'Travis Scott';
update Employees set Age = 34 where Name = 'Travis Scott';

-- set sql_safe_updates = 0;