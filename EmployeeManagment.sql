/* Create the database */
CREATE DATABASE EmployeeManagement


/* Create table 1: Employee */
CREATE TABLE employee (
  emp_id INT PRIMARY KEY IDENTITY,
  fname VARCHAR(15) NOT NULL,
  lname varchar(10),
  gender CHAR(1),
  phone_number VARCHAR(15),
  Email_id varchar(50),
  address VARCHAR(50) DEFAULT 'NOT KNOWN',
  start_date DATE NOT NULL
  )

  /* Create table 2: Payroll */
CREATE TABLE payroll (
  id INT PRIMARY KEY IDENTITY,
  payroll_id INT NOT NULL,
  basic_pay FLOAT,
  deductions FLOAT,
  taxable_pay FLOAT,
  income_tax FLOAT,
  net_pay FLOAT,
  FOREIGN KEY (payroll_id) REFERENCES employee(emp_id)
)

/* Create table 3: Department */
CREATE TABLE Department (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50) NOT NULL,
  location VARCHAR(50),
  manager_id INT,
  UNIQUE (department_name),
  FOREIGN KEY (manager_id) REFERENCES employee(emp_id)
)

/* Create table 4: Project */
CREATE TABLE Project (
  project_id INT PRIMARY KEY,
  project_name VARCHAR(50) NOT NULL,
  start_date DATE,
  end_date DATE,
  department_id INT,
  CHECK (end_date > start_date),
  FOREIGN KEY (department_id) REFERENCES Department(department_id)
)

/* Create table 5: Task */
CREATE TABLE Task (
  task_id INT PRIMARY KEY,
  task_name VARCHAR(50) NOT NULL,
  priority INT,
  project_id INT,
  FOREIGN KEY (project_id) REFERENCES Project(project_id)
)
  SELECT * FROM employee
  SELECT * FROM payroll
  SELECT * FROM Department
  SELECT * FROM Project
  SELECT * FROM Task

  
/* Insert values into Employee table */
INSERT INTO employee (fname, lname, gender, phone_number, Email_id, address, start_date)
VALUES
  ('Ram', 'Sharma', 'M', '1234567890', 'ram@example.com', '123 Main Street, Delhi', '2022-01-01'),
  ('Aakanksha', 'Pandey', 'F', '9876543210', 'aakankshap971@example.com', 'Bhilai Street, Chhattisgarh', '2022-02-15'),
  ('Mohan', 'Verma', 'M', '4567890123', 'mohan@example.com', 'Mohan Lane, Mumbai', '2021-12-01'),
  ('Sima', 'Singh', 'F', '7890123456', 'singhsima@example.com', 'Street-5, Pune', '2022-03-01'),
  ('Aakash', 'Dubey', 'M', '2345678901', 'aakash@example.com', 'Block-9, Gujarat', '2022-04-15'),
  ('Divya', 'Mishra', 'F', '9012345678', 'divya@example.com', '890 Avenue, Raipur', '2022-05-01'),
  ('Daniel', 'Rao', 'M', '3456789012', 'daniel@example.com', 'Building-A, Lucknow', '2021-11-15'),
  ('Pooja', 'Ahuja', 'F', '6789012345', 'pooja987@example.com', 'Street-6, Bhopal', '2022-06-01'),
  ('Ashish', 'Joshi', 'M', '0123456789', 'ashish2104@example.com', 'Purani Gali, Hyderabad', '2022-07-01'),
  ('Poonam', 'Upadhya', 'F', '5678901234', 'upadhya@example.com', 'Near Beach, Odisha', '2022-08-15')

  /* Insert values into Payroll table */
INSERT INTO payroll (payroll_id, basic_pay, deductions, taxable_pay, income_tax, net_pay)
VALUES
  (1, 5000.00, 1000.00, 4000.00, 500.00, 3500.00),
  (2, 6000.00, 1200.00, 4800.00, 600.00, 4200.00),
  (3, 7000.00, 1400.00, 5600.00, 700.00, 4900.00),
  (4, 8000.00, 1600.00, 6400.00, 800.00, 5600.00),
  (5, 9000.00, 1800.00, 7200.00, 900.00, 6300.00),
  (6, 10000.00, 2000.00, 8000.00, 1000.00, 7000.00),
  (7, 11000.00, 2200.00, 8800.00, 1100.00, 7700.00),
  (8, 12000.00, 2400.00, 9600.00, 1200.00, 8400.00),
  (9, 13000.00, 2600.00, 10400.00, 1300.00, 9100.00),
  (10, 14000.00, 2800.00, 11200.00, 1400.00, 9800.00)

  /* Insert values into Project table */
INSERT INTO Project (project_id, project_name, start_date, end_date, department_id)
VALUES
  (1, 'Project A', '2022-01-01', '2022-06-30', 1),
  (2, 'Project B', '2022-02-15', '2022-08-31', 2),
  (3, 'Project C', '2022-03-01', '2022-10-31', 3),
  (4, 'Project D', '2022-04-15', '2022-12-31', 4),
  (5, 'Project E', '2022-05-01', '2023-02-28', 5),
  (6, 'Project F', '2022-06-15', '2023-04-30', 6),
  (7, 'Project G', '2022-07-01', '2023-06-30', 7),
  (8, 'Project H', '2022-08-15', '2023-08-31', 8),
  (9, 'Project I', '2022-09-01', '2023-10-31', 9),
  (10, 'Project J', '2022-10-15', '2023-12-31', 10)
/* Insert values into Department table */
INSERT INTO Department (department_id, department_name, location, manager_id)
VALUES
  (1, 'HR', 'Delhi', 1),
  (2, 'Sales', 'Mumbai', 2),
  (3, 'Marketing', 'Odisha', 3),
  (4, 'Finance', 'Lucknow', 4),
  (5, 'IT', 'Pune', 5),
  (6, 'Operations', 'Chhattisgarh', 6),
  (7, 'Engineering', 'Gujarat', 7),
  (8, 'Research', 'Hyderabad', 8),
  (9, 'Customer Service', 'Bangalore', 9),
  (10, 'Quality Assurance', 'Raipur', 10)

  INSERT INTO Task (task_id, task_name, priority, project_id)
VALUES
  (1, 'Task A', 1, 1),
  (2, 'Task B', 2, 1),
  (3, 'Task C', 3, 1),
  (4, 'Task D', 1, 2),
  (5, 'Task E', 2, 2),
  (6, 'Task F', 3, 2),
  (7, 'Task G', 1, 3),
  (8, 'Task H', 2, 3),
  (9, 'Task I', 3, 3),
  (10, 'Task J', 1, 4)


  /* try to get emp and department */
  SELECT e.emp_id, e.fname, e.lname, d.department_name
FROM employee e JOIN Department d 
ON e.emp_id = d.manager_id

/* employee and project */
SELECT e.emp_id, e.fname, e.lname, p.project_name
FROM employee e
JOIN Project p ON e.emp_id = p.department_id

/* project and department*/
SELECT p.project_name, d.department_name
FROM Project p JOIN Department d
ON p.department_id = d.department_id

 /* total net pay */
 SELECT e.emp_id , e.fname, e.lname, SUM(p.net_pay) AS Total_net_pay
 FROM employee e JOIN payroll p
 ON e.emp_id = p.payroll_id
 GROUP BY e.emp_id , e.fname , e.lname 

 /* geting from 3table */
 SELECT t.task_id, t.task_name,  d.department_name , p.project_name
FROM Task t 
JOIN Project p
ON t.project_id = p.project_id
JOIN  Department d
ON  p.department_id = d.department_id

UPDATE employee
SET phone_number = '9876543210'
WHERE emp_id = 1

DELETE FROM Task
WHERE task_id = 3

INSERT INTO Task (task_id, task_name, priority, project_id)
VALUES (3, 'New Task', 2, 1)


SELECT AVG(deductions) AS average_deductions
FROM payroll
SELECT SUM(net_pay) AS totalAmount
FROM payroll



  SELECT * FROM employee
  SELECT * FROM payroll
  SELECT * FROM Department
  SELECT * FROM Project
  SELECT * FROM Task
  ----------practice problem ------------------------------------------
UPDATE Task
SET task_name = 'Task C'
WHERE task_id = 3

UPDATE Task
SET priority = priority + 2
WHERE task_id = 1

/* rename */
 EXEC sp_rename 'project_id', 'projects_id', 'COlUMN'  /* more column have same name  */

EXEC sp_rename 'Task.project_id', 'projects_id', 'COlUMN'

EXEC sp_rename 'Task.projects_id', 'project_id', 'COlUMN'


SELECT d.department_id,e.emp_id, AVG(p.net_pay) AS average_net_pay
FROM payroll p
JOIN Department d ON p.payroll_id = manager_id
JOIN employee e ON p.payroll_id = emp_id
GROUP BY d.department_id,e.emp_id
HAVING AVG(p.net_pay) > 5000


SELECT department_id, COUNT(*) AS employee_count
FROM Department
GROUP BY department_id

	SELECT fname, lname
	FROM employee
	ORDER BY  lname DESC

	
	SELECT fname, lname
	FROM employee
	ORDER BY  lname ASC


	Select e.emp_id, e.fname, t.task_id
	from employee e JOIN Task t
	ON e.emp_id = t.task_id

	

	SELECT e.emp_id, e.fname, e.lname, d.department_id, d.department_name
FROM employee e
CROSS JOIN Department d

SELECT e.emp_id, e.fname, e.lname, d.department_name
FROM employee e
Inner JOIN Department d ON e.emp_id = d.department_id

/* change data type */
	ALTER TABLE employee ALTER COLUMN fname char(10)
	ALTER TABLE employee ALTER COLUMN fname VARCHAR(20)

--------------	/* function related sql server */------------------------------

--Example of aggrigates and scaler

	SELECT SUM(basic_pay) AS ToatlBasicPay FROM payroll 
	SELECT AVG(net_pay) as AvgPay FROM payroll

	SELECT MAX(p.basic_pay) AS ToatlBasicPay FROM payroll p JOIN employee e ON e.emp_id = p.payroll_id  GROUP BY income_tax 


	CREATE FUNCTION square(@num INT)
	RETURNS INT
	AS
	BEGIN
	      DECLARE @result INT
		  SET @result = @num * @num
		  RETURN @result
	END
	SELECT dbo.Square(5)

	CREATE FUNCTION dbo.area(@num1 INT, @num2 INT)
	RETURNS INT
	AS
	BEGIN
	        DECLARE @result INT
        SET @result = @num1 * @num2
        RETURN @result
	END
	SELECT dbo.area(4,5) AS AREA

	CREATE FUNCTION dbo.GetFname(@emp_id INT)
RETURNS TABLE
AS
RETURN
(
    SELECT fname
    FROM employee
    WHERE emp_id = @emp_id
)

SELECT fname from dbo.GetFname(2)

	CREATE FUNCTION dbo.GetTable(@emp_id INT)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM employee
    WHERE emp_id = @emp_id
)

SELECT * from dbo.GetTable(2)

-- Example of string Functions

SELECT LEN('AAKANKSHA') AS LENGTH --LENGTH
SELECT LEFT('AAK ANKSHA',5) AS VALUE --FROM LEFT
SELECT RIGHT('AAKANKSHA',5) AS VALUE--FROM RIGHT
SELECT SUBSTRING('AAKANKSHA PANDEY', 7, 5) AS SUBSTRING--START FROM 7 THEN 5
SELECT REPLACE('AAKANKSHA PANDEY', 'AAKANKSHA','ANJALI') AS NEW_VALUE -- REPLACE
SELECT UPPER('my name is aakanksha') AS UPPER -- UPPER
SELECT LOWER('GIVE ALL VALUE IN SMALL') AS LOWER -- LOWER
SELECT LTRIM('     Hiiiiiiiiiiiii     ') AS VALUE --REMOVE LEFT SPACE
SELECT RTRIM('     Hiiiiiiiiiiiii        ') AS VALUE --REMOVE RIGHT SPACE
SELECT CONCAT('MY',' ','NAME',' ','IS',' ','AAKANKSHA','PANDEY') AS RESULT -- CONCATENATE TWO OR MORE STRINGS
SELECT CHARINDEX('A','AAKANKSHA') -- 1ST INDEX VALUE
SELECT ASCII('A') AS ASCII_VALUE -- ASCII VALUE OF CHAR
SELECT CHAR(65) AS CHARACTER -- CONVERT CASCII TO CHAR
SELECT DIFFERENCE('Hello', 'Hello') AS Similarity
SELECT REVERSE('Hello') AS RESULT -- REVERSE STRING
SELECT UPPER(fname) from employee
SELECT LEN(fname) from employee
SELECT fname,lname ,GETDATE() FROM employee


-- EXample of string functions

SELECT ABS(-100) AS PositiveValue
SELECT CEILING(4.2) AS RoundOff
SELECT FLOOR(4.2) AS RoundOff
SELECT ROUND(3.1276,1)
SELECT ROUND(3.1276,2)
SELECT POWER(5,3) AS Power
SELECT SQUARE(4) AS Square
SELECT SQRT(16) AS SqRoot
SELECT EXP(4)
SELECT SIGN(-4) AS SignFunction
SELECT RAND() AS RandomNo -- RANGE 0-1
SELECT FLOOR(RAND() * 10)AS RANDOM_RANGE -- RANGE 0-9
SELECT FLOOR(RAND() * 10)+ 7 AS RANDOM_RANGE -- 7 IS START VALUE 3-16
SELECT COUNT(fname) from employee where address like '%Bhilai%'
SELECT CEILING(net_pay) from payroll AS NetPay
SELECT ROUND(basic_pay,2) from payroll AS BasicPay

--Example of  Date Function

SELECT CURRENT_TIMESTAMP
SELECT SYSDATETIME()
SELECT fname,lname,emp_id, DATEADD(day,2,start_date) FROM employee WHERE emp_id = 2
SELECT fname,lname,emp_id, DATEADD(WEEK,2,start_date) FROM employee WHERE emp_id = 2
SELECT fname,lname,emp_id, DATEADD(year,1,start_date) AS NEWDATE FROM employee WHERE emp_id = 2 -- USE TO ADD YEAR
SELECT DATEDIFF(MONTH, '2023-2-15','2023-6-16') AS Difference_InMonth  --USE TO CHECK DIFF IN MONTH
SELECT DATEDIFF(DAY, '2023-2-15','2023-6-16') AS Difference_InDay --USE TO CHECK DIFF IN DAY
SELECT DATEDIFF(WEEK, '2023-2-15','2023-6-16') AS Difference_InWeek --USE TO CHECK DIFF IN WEEK
SELECT DATEDIFF(YEAR, '2023-2-15','2023-6-16') AS Difference_InYear --USE TO CHECK DIFF IN YEAR
SELECT DATEFROMPARTS(2022,4,16) AS CREATEDATE --USE TO CREATE DATE (YEAR,MONTH,DATE)
SELECT DATEPART(YEAR,GETDATE()) -- SPECIFIC PART From date
SELECT DATEPART(YEAR,'2023-5-12')
SELECT DATENAME(month, '2023-05-23') AS MonthName
SELECT DAY(CURRENT_TIMESTAMP) -- GIVE DATE (DAY) OF CURRENT
SELECT YEAR(GETDATE()) --GIVE YEAR OF SYSTEM 
SELECT GETUTCDATE() AS UniversalTime --Give Universal Time
SELECT FORMAT(GETDATE(),'dd/MM/yy')
SELECT CONVERT(VARCHAR(10), GETDATE(), 103) 

---  using Index
CREATE INDEX fname_index ON employee(fname)
SELECT fname from employee

DROP INDEX employee.fname_index

--USER DEFINE FUNCTION

CREATE FUNCTION dbo.GetFullName (@firstName VARCHAR(50), @lastName VARCHAR(50))
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @fullName VARCHAR(100)
    SET @fullName = @firstName + ' ' + @lastName
    RETURN @fullName
END

SELECT dbo.GetFullName('aakanksha', 'pandey') AS FullName
 
CREATE FUNCTION dbo.GetTable(@emp_id INT)
RETURNS TABLE
AS
RETURN
(
    SELECT *
    FROM employee
    WHERE emp_id = @emp_id
)

SELECT * from dbo.GetTable(2)

CREATE FUNCTION CalculateTotalSalary(@emp_id INT)
RETURNS FLOAT
AS
BEGIN
    DECLARE @totalSalary FLOAT;
    
    SELECT @totalSalary = SUM(net_pay)
    FROM payroll
    WHERE payroll_id = @emp_id;
    
    RETURN @totalSalary
END

SELECT emp_id, fname, lname, dbo.CalculateTotalSalary(emp_id) AS total_salary
FROM employee

CREATE FUNCTION dbo.anualNetpay(@net_pay float ) -- sacalar
	RETURNS FLOAT
	AS
	BEGIN
	    DECLARE @result float
        SET @result = @net_pay * 12
        RETURN @result
	END
	SELECT SUM(dbo.anualNetpay(net_pay))as anualsalary FROM payroll




	----------------EXAMPLE OF JOINTS QUERIES -------------------
INSERT INTO employee (fname, lname, gender, phone_number, Email_id, address, start_date)
VALUES
  ('Sarah', 'Johnson', 'F', '5551234567', 'sarah@example.com', '123 Elm Street, Boston', '2023-03-01'),
  ('Michael', 'Anderson', 'M', '5559876543', 'michael@example.com', '321 Oak Avenue, Seattle', '2023-04-15'),
  ('Emily', 'Brown', 'F', '5551112222', 'emily@example.com', '789 Pine Road, Miami', '2023-05-01'),
  ('Daniel', 'Davis', 'M', '5553334444', 'daniel@example.com', '456 Cedar Lane, Houston', '2023-06-15'),
  ('Olivia', 'Martinez', 'F', '5555555555', 'olivia@example.com', '987 Maple Drive, Denver', '2023-07-01'),
  ('Alexander', 'Garcia', 'M', '5557778888', 'alexander@example.com', '654 Birch Street, Atlanta', '2023-08-15'),
  ('Sophia', 'Wilson', 'F', '5559990000', 'sophia@example.com', '321 Walnut Avenue, San Diego', '2023-09-01')

INSERT INTO Project (project_id, project_name, start_date, end_date, department_id)
VALUES
  (11, 'Project K', '2023-01-01', '2023-06-30', 7),
  (12, 'Project L', '2023-02-15', '2023-08-31', 8),
  (13, 'Project M', '2023-01-15', '2023-06-19', 9)

INSERT INTO Task (task_id, task_name, priority, project_id)
VALUES
  (11, 'Task K', 1, 11)

INSERT INTO payroll (payroll_id, basic_pay, deductions, taxable_pay, income_tax, net_pay)
VALUES
  (11, 15000.00, 3000.00, 12000.00, 1500.00, 10500.00),
  (12, 16000.00, 3200.00, 12800.00, 1600.00, 11200.00),
   (13, 5000.00, 2400.00, 11100.00, 2000.00, 10000.00),
  (14, 17000.00, 7600.00, 13200.00, 2500.00, 12200.00),
   (15, 16000.00, 7000.00, 10000.00, 1000.00, 13500.00),
  (16, 17000.00, 5200.00, 14300.00, 1600.00, 12200.00)

 


SELECT e.emp_id, e.fname, e.lname, d.department_name
FROM employee e
JOIN Department d ON e.emp_id = d.manager_id


SELECT e.emp_id, e.fname, e.lname, p.project_name
FROM employee e
LEFT JOIN Project p ON e.emp_id = p.department_id


SELECT p.project_name, d.department_name
FROM Project p
RIGHT JOIN Department d ON p.department_id = d.department_id


SELECT e.emp_id, e.fname, e.lname, d.department_name
FROM employee e
FULL OUTER JOIN Department d ON e.emp_id = d.manager_id

SELECT e.emp_id, e.fname, e.lname, d.department_name
FROM employee e
FULL OUTER JOIN Department d ON e.emp_id = d.manager_id

SELECT e.emp_id, e.fname, e.lname, d.department_name
FROM employee e
CROSS JOIN Department d

------------------------------------------STORED PRSEDURE------------------------------------
  CREATE PROCEDURE spSTORED1
  AS
  BEGIN
  SELECT * FROM employee
  SELECT * FROM payroll
  SELECT * FROM Department
  SELECT * FROM Project
  SELECT * FROM Task
  END

  spSTORED1

/* If we want to add or delete queries in stored procedure */
  ALTER PROCEDURE spSTORED1
  AS
  BEGIN
  SELECT * FROM employee
  SELECT * FROM payroll
  SELECT * FROM Department
  SELECT * FROM Project
  SELECT fname FROM employee WHERE emp_id =11
  END

  exec  spSTORED1

/* Parameter use in Stored Procedure */

ALTER PROCEDURE spSTORED1
@employeeID INT = 2,  -- if we not give parameter it use default value it take id = 2
@project_name VARCHAR(10) = 'Project C'
  AS
  BEGIN
  SELECT * FROM employee
  SELECT fname FROM employee WHERE emp_id = @employeeID
  SELECT * FROM Project WHERE project_name = @project_name

  END

exec spSTORED1 2, 'Project A' -- GIVE PARAMERTER ACCORDING TO SEQ OF INTIALIZE PAARMETER
exec spSTORED1  @project_name='Project A', @employeeID =2 -- now sequence not matter

exec spSTORED1  @employeeID =11  -- we can overwrite or where value not given use default value

/* OUTPUT PARAMETER  */

CREATE PROCEDURE spSTORED2
 @num1 INT,
 @num2 INT,
 @result INT OUTPUT
  AS
  BEGIN
   SET @result = @num1 * @num2
  END

  --queries for execution
  DECLARE @op INT
  exec spSTORED2 4, 4, @op OUTPUT
  SELECT @op OUTPUT






