-- #1 of CODE CHALLENGE
CREATE DATABASE Challenge

USE Challenge

CREATE TABLE Employee(
ID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
FIRSTNAME varchar(20),
LASTNAME varchar(30),
SALARY int,
STREETADDRESS varchar(50),
CITY varchar(30),
STATE varchar(40),
ZIPCODE int,
DEPARTMENTID int
--DATEHIRED DATE,
--ACTIVE bit DEFAULT 1
)

CREATE TABLE Department(
ID int PRIMARY KEY IDENTITY(1,1) NOT NULL,
NAME varchar(40),
ACTIVE bit
)

-- #2 of the CODE CHALLENGE
INSERT INTO Employee
VALUES
('Stephen', 'Kirkland', 65000, '567 Runs Branch Rd', 'Newington', 'GA', 30446, 1)

INSERT INTO Employee
VALUES
('Bullafo', 'Bill', 47000, '648 Tuckahoe Rd.', 'Wichatow', 'NC', 84839, 2)

INSERT INTO Employee
VALUES
('Sally', 'Mae', 57839, '930 Timbucktoo St.', 'Statesboro', 'MI', 37392, 3)

INSERT INTO Employee
VALUES
('Shawty', 'Lo', 59000, '738 Michael Lane', 'Sampsontown', 'GA', 33848, 1)

INSERT INTO Department
VALUES
('Revature', 1)

INSERT INTO Department
VALUES
('Farmer', 1)


INSERT INTO Department
VALUES
('Banker', 1)

SELECT * FROM Employee
SELECT * FROM Department

ALTER TABLE Employee
ADD FOREIGN KEY (DEPARTMENTID)
REFERENCES Department(ID)

-- #3 of the CODE CHALLENGE
SELECT FIRSTNAME, LASTNAME FROM Employee
WHERE DEPARTMENTID = 1

-- #4 of CODE CHALLENEGE
SELECT Department.NAME, SUM(Employee.SALARY) AS 'Total Salary for Department' FROM Department
JOIN Employee
ON Department.ID = Employee.DEPARTMENTID
GROUP BY Department.NAME

-- #5 of CODE CHALLENGE
UPDATE Employee
SET SALARY = 90000
WHERE ID = 1;

-- #6 of CODE CHALLENGE
ALTER TABLE Employee
ADD DATEHIRED DATE

UPDATE Employee
SET ACTIVE = 1

-- EXTRA EXTRA CREDIT; Putting dates in the DATEHIRED field

UPDATE Employee
SET DATEHIRED = '2017-01-30'
WHERE ID = 1

UPDATE Employee
SET DATEHIRED = '1992-03-19'
WHERE ID = 2

UPDATE Employee
SET DATEHIRED = '1993-05-01'
WHERE ID = 3

UPDATE Employee
SET DATEHIRED = '2005-11-22'
WHERE ID = 4

SELECT * FROM Employee
SELECT * FROM Department