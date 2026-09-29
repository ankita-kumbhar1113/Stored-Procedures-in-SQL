USE employee_payroll;

DROP PROCEDURE IF EXISTS GetEmployeeSalaryReport;
DELIMITER $$
CREATE PROCEDURE GetEmployeeSalaryReport(
    IN p_department_name VARCHAR(50),
    IN p_minimum_salary DECIMAL(10,2) )
BEGIN
SELECT employee_id,
        employee_name,
        department,
        designation,
        basic_salary,
        joining_date
    FROM employee_
    WHERE department = p_department_name
      AND basic_salary >= p_minimum_salary
      AND status = 'Active';

END $$
DELIMITER ;

CALL GetEmployeeSalaryReport('IT', 50000);


DROP PROCEDURE IF EXISTS CalculateEmployeeSalary;
DELIMITER $$
CREATE PROCEDURE CalculateEmployeeSalary(
    IN p_employee_id INT )
BEGIN
SELECT employee_name,
       basic_salary,
        basic_salary * 0.20 AS HRA,
        basic_salary * 0.10 AS DA,
        basic_salary * 0.12 AS PF,
        basic_salary + (basic_salary * 0.20) + (basic_salary * 0.10) - (basic_salary * 0.12) AS net_salary
    FROM employee_
    WHERE employee_id = p_employee_id;
END $$
DELIMITER ;

call CalculateEmployeeSalary(104) ;

DROP PROCEDURE IF EXISTS EmployeeSalaryGrade;
DELIMITER $$
CREATE PROCEDURE EmployeeSalaryGrade(
    IN p_employee_id INT )
BEGIN 
SELECT employee_name,basic_salary,
        CASE
            WHEN basic_salary < 30000 THEN 'C'
            WHEN basic_salary BETWEEN 30000 AND 60000 THEN 'B'
            WHEN basic_salary > 60000 THEN 'A'
        END AS Salary_Grade
    FROM employee_
    WHERE employee_id = p_employee_id;
END $$
DELIMITER ;

call EmployeeSalaryGrade(101);