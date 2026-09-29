# JForce Solutions – SQL Developer Interview Task

## Project Overview

This project demonstrates an Employee Management and Payroll database using MySQL Stored Procedures.

objective:

* Database and table creation
* employee data insertion
* Stored procedure creation
* Input parameters
* Conditional logic using CASE
* Salary calculations

## Database

Database Name:

`employee`

### Employees Table

The `employee_` table contains:

* `employee_id` – Primary key
* `employee_name` – Employee name
* `department` – Department
* `designation` – Job designation
* `basic_salary` – Basic salary
* `joining_date` – Date of joining
* `status` – Active or Inactive

Table Creation
<img width="695" height="412" alt="create table" src="https://github.com/user-attachments/assets/5f02e07f-d0a2-4df5-8286-df4779a53c09" />

inserting records 
<img width="1011" height="491" alt="data insertion" src="https://github.com/user-attachments/assets/427f0284-2505-4835-86a6-364ac8a529b0" />

Employee_ Table
<img width="1032" height="342" alt="employee record" src="https://github.com/user-attachments/assets/bbbd4ffe-807c-488a-91d0-5f5a3f10530e" />


## Stored Procedures

### 1. GetEmployeeSalaryReport

Returns active employees from a specified department whose basic salary is greater than or equal to the given minimum salary.

Example:

```sql
CALL GetEmployeeSalaryReport('IT', 50000);
```

### 2. CalculateEmployeeSalary

Calculates salary components using:

* HRA = 20% of Basic Salary
* DA = 10% of Basic Salary
* PF = 12% of Basic Salary
* Net Salary = Basic Salary + HRA + DA - PF

Example:

```sql
CALL CalculateEmployeeSalary(101);
```

### 3. EmployeeSalaryGrade

Assigns a salary grade based on basic salary:

* Below ₹30,000 → C
* ₹30,000–₹60,000 → B
* Above ₹60,000 → A

Example:

```sql
CALL EmployeeSalaryGrade(101);
```

## Technologies Used

* MySQL Workbench

## How to Run

1. Open MySQL Workbench.
2. Run `database.sql`.
3. Run `procedures.sql`.
4. Execute the sample `CALL` statements to test each procedure.
