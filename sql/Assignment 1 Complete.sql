CREATE DATABASE Faculty;
USE Faculty;
DROP TABLE Departments

CREATE TABLE Departments(
	Student_ID CHAR(6) NOT NULL,
	Department_Name VARCHAR (55) NOT NULL,
	Lecturer_LastName VARCHAR (55),
	Location_ID CHAR (6), 
);
SELECT * FROM Departments

Insert INTO Departments (Student_ID, Department_Name, Lecturer_LastName, Location_ID)
VALUES (134563, 'Computer Science', 'Dewa', 1300);

Insert INTO Departments (Student_ID, Department_Name, Lecturer_LastName, Location_ID)
VALUES (343234, 'Data Science', 'Pravesh', 2100);

Insert INTO Departments (Student_ID, Department_Name, Lecturer_LastName, Location_ID)
VALUES (345621, 'Applied Mathematics', 'Christopher', 2100);

Insert INTO Departments (Student_ID, Department_Name, Lecturer_LastName, Location_ID)
VALUES (467231, 'Artificial Intelligence', 'Buthelezi', 4311);

Insert INTO Departments (Student_ID, Department_Name, Lecturer_LastName, Location_ID)
VALUES (452113, 'Robotics', 'Mamabolo', 2100);

Insert INTO Departments (Student_ID, Department_Name, Lecturer_LastName, Location_ID)
VALUES (345673, 'Physics', 'Shingange', 4300);

SELECT * FROM Departments;

EXEC sp_rename 'Departments.Student_ID', 'Name', 'COLUMN';
SELECT * FROM Departments;

SELECT Lecturer_LastName 
FROM Departments;


CREATE DATABASE Employment;
USE Employment;
DROP TABLE Employees;

CREATE TABLE Employees (
    Employment_ID CHAR(4),        
    Fname VARCHAR(55),
    Lname VARCHAR(55),
    Salary DECIMAL(10, 2)
);

SELECT * FROM Employees;

INSERT INTO Employees (Employment_ID, Fname, Lname, Salary) 
VALUES ('0011', 'Dumisani', 'Magwaza', 6500);

INSERT INTO Employees (Employment_ID, Fname, Lname, Salary) 
VALUES('0123', 'John', 'Smith', 14050);

INSERT INTO Employees (Employment_ID, Fname, Lname, Salary) 
VALUES('0212', 'Piet', 'Bothma', 23500);

INSERT INTO Employees (Employment_ID, Fname, Lname, Salary) 
VALUES('0023', 'Thapelo', 'Malatji', 9800);

INSERT INTO Employees (Employment_ID, Fname, Lname, Salary) 
VALUES('0321', 'Vaisdevan', 'Naicker', 12000);

SELECT * FROM Employees;

SELECT Lname, Salary
FROM Employees
WHERE Salary > 12000;

SELECT Lname, Employment_ID
FROM Employees
WHERE Employment_ID = '0212';

SELECT Lname, Salary
FROM Employees
WHERE Salary NOT BETWEEN 8000 AND 15000;

USE Employment;

DROP TABLE Managers;

CREATE TABLE Managers (
    EmployeeID INT,
    DepartmentName VARCHAR(55),
    LastName VARCHAR(55),
    DepartmentID CHAR(4),
    Salary DECIMAL(10,2),
    HireDate DATE
);
INSERT INTO Managers (EmployeeID, DepartmentName, LastName, DepartmentID, Salary, HireDate)
VALUES (1, 'Accounting', 'Ndlovu', '0011', 12400, '2012-01-01');

INSERT INTO Managers (EmployeeID, DepartmentName, LastName, DepartmentID, Salary, HireDate)
VALUES(2, 'Education', 'Pravesh', '0017', 32500, '2018-10-30');

INSERT INTO Managers (EmployeeID, DepartmentName, LastName, DepartmentID, Salary, HireDate)
VALUES(3, 'Data Science', 'Dewa', '0022', 23450, '2009-04-06');

INSERT INTO Managers (EmployeeID, DepartmentName, LastName, DepartmentID, Salary, HireDate)
VALUES(4, 'Healthy Sciences', 'Naicker', '0021', 16800, '2015-06-28');

INSERT INTO Managers (EmployeeID, DepartmentName, LastName, DepartmentID, Salary, HireDate)
VALUES(5, 'Architecture', 'Naidoo', '0032', 19440, '2018-07-01');

INSERT INTO Managers (EmployeeID, DepartmentName, LastName, DepartmentID, Salary, HireDate)
VALUES(6, 'Computer Science', 'Zuma', '0022', 21600, '2018-06-30');

INSERT INTO Managers (EmployeeID, DepartmentName, LastName, DepartmentID, Salary, HireDate)
VALUES(7, 'Electronics', 'Vilakazi', '0024', 24800, '2014-09-01');

INSERT INTO Managers (EmployeeID, DepartmentName, LastName, DepartmentID, Salary, HireDate)
VALUES(8, 'Physics', 'Motaung', '0024', 23500, '2020-08-01');

SELECT * FROM Managers;

SELECT EmployeeID, DepartmentName, LastName, DepartmentID, Salary,
       FORMAT(HireDate, 'dd MM yyyy') AS HireDate
FROM Managers;

SELECT LastName, DepartmentID
FROM Managers
WHERE DepartmentID IN ('0022', '0024')
ORDER BY LastName ASC;

SELECT LastName AS Employee,
    Salary   AS [Monthly Salary]
FROM   Managers
WHERE  Salary BETWEEN 15000 AND 22000
    AND  DepartmentID IN ('0021','0024');

SELECT LastName, 
       FORMAT(HireDate, 'dd MM yyyy') AS HireDate
FROM Managers
WHERE YEAR(HireDate) = 2018;

SELECT LastName, 
       Salary, 
       FORMAT(HireDate, 'dd MMyyyy') AS HireDate
FROM Managers
WHERE Salary > 20500
ORDER BY Salary DESC, LastName DESC





