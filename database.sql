create database Employee ;
use Employee ;

-- created table employee
create table employee_(
employee_id INT primary key,
employee_name VARCHAR(50),
department VARCHAR(50),
designation VARCHAR(60),
basic_salary DECIMAL(10,2),
joining_date DATE,
status VARCHAR(50)
);

-- inserting records
INSERT INTO employee_
(employee_id, employee_name, department, designation, basic_salary, joining_date, status)
VALUES
(101, 'Amit Mane', 'IT', 'Software Developer', 65000, '2022-06-15', 'Active'),
(102, 'Priya Patil', 'HR', 'HR Executive', 42000, '2023-01-10', 'Active'),
(103, 'Rahul Verma', 'IT', 'SQL Developer', 55000, '2021-09-20', 'Active'),
(104, 'Sneha Kulkarni', 'Finance', 'Financial Analyst', 60000, '2022-03-12', 'Active'),
(105, 'Rohan Deshmukh', 'Sales', 'Sales Executive', 28000, '2023-07-05', 'Active'),
(106, 'Neha Joshi', 'IT', 'Data Analyst', 48000, '2024-02-18', 'Active'),
(107, 'Vikas Chaudhary', 'Finance', 'Accountant', 35000, '2021-11-25', 'Inactive'),
(108, 'Pooja Raut', 'HR', 'HR Manager', 72000, '2020-05-30', 'Active'),
(109, 'Karan Mehta', 'Sales', 'Sales Manager', 65000, '2019-08-14', 'Active'),
(110, 'Anjali More', 'IT', 'BI Developer', 75000, '2020-12-01', 'Active');

select * from employee_

