CREATE DATABASE LanguageSchool
GO

USE LanguageSchool
GO

CREATE TABLE Staff(
	StaffID INT IDENTITY(10001,1) NOT NULL PRIMARY KEY,
	Firstname NVARCHAR(30) NOT NULL,
	Surname NVARCHAR(30) NOT NULL,
	[Role] NVARCHAR(30) NOT NULL,
	Salary DECIMAL(8)
)
GO

CREATE TABLE Cars(
	RegNo NVARCHAR(10) NOT NULL PRIMARY KEY,
	Colour NVARCHAR(10),
	Make NVARCHAR(20),
	[Owner] INT FOREIGN KEY REFERENCES Staff(StaffID)
)
GO

INSERT INTO Staff(Firstname, Surname, [Role], Salary)
VALUES('Martina', 'Jenkins', 'DoS', 23000)
INSERT INTO Staff(Firstname, Surname, [Role], Salary)
VALUES('Simon', 'Jenkins', 'Teacher', 21000)
INSERT INTO Staff(Firstname, Surname, [Role], Salary)
VALUES('Lorraine', 'Jenkins', 'Teacher', 18000)
INSERT INTO Staff(Firstname, Surname, [Role], Salary)
VALUES('Lucy', 'Young', 'Receptionist', 16000)
INSERT INTO Staff(Firstname, Surname, [Role], Salary)
VALUES('James', 'Sunderland', 'Teacher', 20000)
INSERT INTO Staff(Firstname, Surname, [Role], Salary)
VALUES('Angela', 'Orosco', 'Teacher', 19000)
INSERT INTO Staff(Firstname, Surname, [Role], Salary)
VALUES('Eddie', 'Dumbrowski', 'Teacher', 18000)
INSERT INTO Staff(Firstname, Surname, [Role], Salary)
VALUES('Walter', 'Sullivan', 'Warden', 15000)
INSERT INTO Staff(Firstname, Surname, [Role], Salary)
VALUES('Simon', 'Jenkins', 'Accommodation Officer', 17000)
GO

INSERT INTO Cars(RegNo, Colour, Make, [Owner])
VALUES('AA11777', 'Blue', 'Audi', 10005)
INSERT INTO Cars(RegNo, Colour, Make, Owner)
VALUES('JJ66CUP', 'Silver', 'Citroen', 10007)
INSERT INTO Cars(RegNo, Colour, Make, Owner)
VALUES('PK44TUL', 'Red', 'Mercedes', 10001)
INSERT INTO Cars(RegNo, Colour, Make, Owner)
VALUES('QQ34BBB', 'Blue', 'Ford', 10006)
INSERT INTO Cars(RegNo, Colour, Make, Owner)
VALUES('SA33USB', 'White', 'Seat', 10008)
INSERT INTO Cars(RegNo, Colour, Make, Owner)
VALUES('XY21ONO', 'Blue', 'Ford', 10005)
INSERT INTO Cars(RegNo, Colour, Make, Owner)
VALUES('ZZ9PZA', 'Red', 'Audi', 10003)
GO
