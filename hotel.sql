CREATE DATABASE Hotel2
USE Hotel2

CREATE TABLE Type_Room(
ID INT NOT NULL PRIMARY KEY,
[Type] NVARCHAR (15),
Price DECIMAL
)

INSERT INTO Type_Room(ID,[Type],Price)
VALUES
 (1,'единични легла',100.00),
 (2,'апартамент',150.00),
 (3,'с двойно легло',300.00),
 (4,'мезонет',200.00),
 (5,'пенхаус',300.00)

CREATE TABLE Client(
ID INT NOT NULL PRIMARY KEY,
FirstName NVARCHAR(20),
LastName NVARCHAR(20),
Tel VARCHAR(15),
e_mail VARCHAR(50),
Adult BIT
)

INSERT INTO Client(ID,FirstName,LastName,Tel,e_mail,Adult)
VALUES
       (1,'Иван','Иванов','0888777555','i.ivanov@abv.bg',1),
       (2,'Иванка','Герезева','0888777555','i.gerazeva@abv.bg',0);
	   

CREATE TABLE Room(
ID INT NOT NULL PRIMARY KEY,
[TYPE] INT,
CONSTRAINT fr_Room_TypeRoom
FOREIGN KEY ([TYPE])
REFERENCES Type_Room(ID),
Reserve BIT 
)


INSERT INTO Room(ID,[TYPE],Reserve)
VALUES
	(101,1,0)

INSERT INTO Room(ID,[TYPE])
VALUES
	(103,1)


CREATE TABLE Users(
ID INT PRIMARY KEY,
UserName NVARCHAR(30),
[PassWord] NVARCHAR(10),
FirstNAME NVARCHAR(30),
LastNAme NVARCHAR(30),
EGN NVARCHAR(10),
Tel NVARCHAR(15),
e_mail NVARCHAR(30),
Start_Data DATE,
ActiveUser BIT,
End_Data DATE
)

INSERT INTO Users(ID,UserName,[PassWord],FirstNAME,LastNAme,EGN,Tel,e_mail,Start_Data,ActiveUser,End_Data)
VALUES	
	(1,'Mitko_B','12345678','Митко','Борисов','1234567890','0987654321','mitko@abv.bg','2019-5-11',0,'2020-6-20')

CREATE TABLE Reserve(
isReserved BIT,
ReservedUserID INT,
FOREIGN KEY (ReservedUserID) REFERENCES Users(ID),
ListOfClients NVARCHAR(60),
AccommodationDate DATE,
LeavingDate DATE,
IncludedBreakfast BIT,
AllInclusive Bit,
Amount DECIMAL
)



INSERT INTO Reserve
VALUES
	(0,1,'Ivan','2021-4-22','2021-4-30',0,1,1000),
	(1,1,'Angel i Stoyan','2020-6-9','2020-7-9',1,1,2500)
	





