create table employees(
id int primary key,
name varchar(100),
department varchar(100),
salary int
);

INSERT INTO employees VALUES
(1, 'Arun', 'HR', 35000),
(2, 'Kavi', 'IT', 55000),
(3, 'Mohan', 'IT', 60000),
(4, 'Ravi', 'Finance', 45000);

create view it_employees as
select id,name,salary
from employees
where department="it" ;

SELECT * FROM it_employees;

update it_employees set salary=70000 where id=2

INSERT INTO it_employees (id, name, salary)
VALUES (5, 'Raju', 52000);

DELETE FROM it_employees
WHERE id = 3;
