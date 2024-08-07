USE RIYAZ
SELECT * FROM KHUSHI
--------------------UNIQUE,NOT NULL 
CREATE TABLE EM
(
 ROLL INT PRIMARY KEY,
 NAME VARCHAR(100)
)
DELETE   EM
INSERT INTO EM VALUES
(1,'SACHIN'),
(2,'VINOD')

SELECT * FROM EM
INSERT INTO EM(NAME) VALUES
('NEHA')
-------------FOREIGN KEY
CREATE TABLE EMP2
(
 SR_NO INT FOREIGN KEY REFERENCES EM(ROLL),
 CMP_NAME VARCHAR(100)
)
SELECT * FROM EMP2
INSERT INTO EMP2 VALUES
(1,'TCS')

INSERT INTO EMP2 VALUES
(2,'IT')
INSERT INTO EMP2(CMP_NAME) VALUES
('TCS')
------------
SELECT * FROM EM
SELECT * FROM EMP2
-------------------------UNIQUE NULL ALLOW
CREATE TABLE DSP
(
0ROLL INT UNIQUE,
NAME VARCHAR(100)
)

SELECT * FROM DSP
INSERT INTO DSP VALUES
(1,'IT')

INSERT INTO DSP(NAME) VALUES
('VINOD')
----------------------NOT NULL
CREATE TABLE NT
(
ROLL INT NOT NULL,
NAME VARCHAR(100)
)

INSERT INTO NT VALUES
(1,'IT')

SELECT * FROM NT

INSERT INTO NT(ROLL) VALUES
(50)
--------------------CHECK
CREATE TABLE CHK
(
AGE INT CHECK(age>18),
NAME VARCHAR(100)
)
INSERT INTO CHK VALUES
(18,'A')
--------------DEFAULT
CREATE TABLE DF
(
AGE INT ,
INCOME BIGINT DEFAULT 5000
)
SELECT * FROM DF
INSERT INTO DF VALUES
(15,50000)

INSERT INTO DF(aGE) VALUES
(10)
----------------
CREATE TABLE DF1
(
AGE INT ,
INCOME INT DEFAULT 'ENTER NUMBER'
)
INSERT INTO DF1 VALUES
(15,50000)

INSERT INTO DF1(aGE) VALUES
(10)
USE HELLO
CREATE TABLE UJH
(
ROLL INT PRIMARY KEY ,
NAME VARCHAR(100)
)
SELECT * FROM UJH
INSERT INTO UJH VALUES
(1,'AMAN'),
(2,'RAHUL'),
(3,'RAJU')
INSERT INTO UJH(NAME) VALUES
('NEHA'),
('RIYA')
----------------FOREIGN KEY
 SELECT  * FROM NUT
 SELECT * FROM UJH
 INSERT INTO NUT VALUES
 (1,'RAMESH'),
 (2,'RAHIM')
 INSERT INTO NUT VALUES
 (3,'RESHAM')
 SELECT * FROM NUT
 INSERT INTO NUT(EMP_NAME) VALUES
 ('NISHA')
 SELECT * FROM UJH
 SELECT * FROM NUT
 ----------------UNIQUE NULL ALLOW
 CREATE TABLE OUGH
(
ROLL INT UNIQUE,
NAME VARCHAR(100)
)
SELECT * FROM OUGH
INSERT INTO OUGH VALUES
(1,'FARAAN')
INSERT INTO OUGH(NAME) VALUES
('VEENA')
------------------NOT NULL
CREATE TABLE NITA
(
ROLL INT NOT NULL,
NAME VARCHAR(200)
)
INSERT INTO NITA VALUES
(1,'FARAAN'),
(2,'VEENA')
SELECT * FROM NITA
INSERT INTO NITA(ROLL) VALUES 
(52)
-----------------CHECK
CREATE TABLE MANU
(AGE INT CHECK (AGE>=18),
NAME VARCHAR(10)
)
INSERT INTO MANU VALUES
(18,'MANOJ')
SELECT * FROM MANU
INSERT INTO MANU VALUES
(19,'SAIF')
-----------------DEFAULT
CREATE TABLE YUT
(
AGE INT,
INCOME BIGINT DEFAULT 45000
)
SELECT * FROM YUT
INSERT INTO YUT VALUES
(19,85000)
INSERT INTO YUT(AGE) VALUES
(18)
drop table yut
-----------------------DEFAULT
CREATE TABLE TUG
(
AGE INT,
INCOME INT DEFAULT 
)
INSERT INTO TUG VALUES
(16,52000)
INSERT INTO TUG(AGE) VALUES
(41)
DROP TABLE TUG
-------------------------------------
 CREATE TABLE VOTER_ID
 (
 ROLL INT,
 VOTER_NAME VARCHAR(100),
 AGE INT CHECK (AGE>=18)
 )
 SELECT * FROM VOTER_ID
 INSERT INTO VOTER_ID VALUES
 (1,'CHARLILE',19),
 (2,'DISUZA',20)
 INSERT INTO VOTER_ID VALUES
 (3,'MANOHAR',23)
 SELECT * FROM VOTER_ID VALUE ORDER BY VOTER_NAME DESC
 SELECT * FROM VOTER_ID VALUE ORDER BY AGE ASC
  DROP TABLE VOTER_ID 
  CREATE TABLE VOTER_ID 
  (
  AGE INT DEFAULT 18,
  VOTER_NAME VARCHAR(10),
 ADDRESS VARCHAR(122)
  )
  SELECT * FROM VOTER_IDCREATE TABLE suman
(
SR_NO INT,
NAME VARCHAR(100),
AGE INT,
GENDER VARCHAR(100),
INCOME INT
)
INSERT INTO suman VALUES
(1,'AMAN',25,'MALE',52000),
(2,'AARIF',24,'MALE',51000),
(3,'RITIK',32,'MALE',45000),
(4,'SNEHA',18,'FEMALE',41000),
(5,'SUJAL',23,'FEMALE',23000)                                                                                                                
INSERT INTO suman VALUES
(6,'SHREYA',24,'FEMALE',42000),
(7,'ANKIT',34,'MALE',63000),
(8,'SHIVANI',22,'FEMALE',41000),
(9,'SHIYA',19,'FEMALE',74000),
(10,'RAGHAV',13,'MALE',95000)
SELECT * FROM suman 
-----------------------GROUPING SET
SELECT NAME,GENDER,SUM(INCOME)  FROM suman GROUP BY NAME,GENDER
UNION ALL
SELECT NULL,GENDER,SUM(INCOME) FROM suman GROUP BY GENDER
UNION ALL
SELECT NAME,NULL,SUM(INCOME) FROM suman GROUP BY NAME


SELECT NAME,GENDER,SUM(INCOME) FROM suman GROUP BY 
GROUPING SETS
(
  (GENDER,nAME),
  (NAME),
  (GENDER),
  ()
)
 
  INSERT INTO VOTER_ID(VOTER_NAME,ADDRESS) VALUES
  ('AMAN','VIRAR')
  INSERT INTO VOTER_ID VALUES
  (19,'KHUSHI','NSP'),
   (17,'ISHI','NSP')
   DROP TABLE VOTER_ID
   CREATE TABLE ASS
   (ROLL INT NOT NULL,
   NAME VARCHAR(10)
   )
   SELECT * FROM ASS
   INSERT INTO ASS VALUES
   (1,'AMIR')
   INSERT INTO ASS VALUES
   ('','AMIT')
   SELECT * FROM ASS VALUE ORDER BY NAME DESC
   DROP TABLE ASS
   CREATE TABLE ASS
   (ROLL INT UNIQUE,
   NAME VARCHAR(10)
   )
   SELECT* FROM ASS
   INSERT INTO ASS VALUES
   (3,'AMITD')
   INSERT INTO ASS(NAME) VALUES
   ('AMAIRA')
   UPDATE ASS SET ROLL=4 WHERE NAME='AMAIRA'
   drop table ass
   create table muskan
   (
   roll int,
   name varchar(10),
   middle_name varchar(12),
   surname varchar(12),
   address varchar(12),
   gr_no int,
   std_ varchar(6)
   )
   select * from muska
 ----------------------Constraint
 create table call_id
 (
 Roll int,
 Name varchar(100),
 sr_no int
 Constraint sachin primary key(Roll,sr_no)
 )
  CREATE TABLE MUSHA
  (
  ROLL INT,
  NAME VARCHAR(100),
  CONSTRAINT NEHA PRIMARY KEY(ROLL)
  )
  INSERT INTO MUSHA VALUES
(111,'RIYA',18),
(222,'MAHI'),
(333,'ANU'),
(444,'SAHIL')
 
 -----------------------
 --1,1
 --1,2
 --2,1
 --1,1 wrong
 -------------------
 create table yusuf
 (
  Roll int,
  Name varchar(100)
 )
 ---------------------
 alter table yusuf alter column Roll int not null
 alter table yusuf add primary key(ROll)
 alter table yusuf add check(Roll>5)
 alter table yusuf add unique(Name)
 alter table yusuf add Constraint js default 'aeroplane' for name
 -------------------------
 create table join_data
 (
 sr_no int,
 Name varchar(100)
 )
 alter table join_data add foreign key(sr_no) references yusuf(roll)
 select * from yusuf
 --------------------------------
 create table shifa
 (roll int,
 NAME VARCHAR(100),
 SR_NO INT,
  Constraint SIYA primary key(roll,SR_NO)
 ) 
 drop TABLE SHIFA
 select * from shifa
 insert into shifa values
 (1,2)
 -----------------------------
 create table manu1
 (
 roll int,
 name varchar(100)
 )
  alter table manu1 alter column Roll int not null
  select * from manu1
 alter table  manu1 add primary key(ROll)
 alter table  manu1 add check(Roll>5)
 alter table  manu1 add unique(Name)
 alter table manu1 add Constraint ujh2 default ' dades' for name
  insert into manu1(roll) values 
  (9)
  select * from manu1
 drop table manu1
 USE RIYAZ
CREATE TABLE CUSTOMER_ID
(
C_ID int,
C_Name varchar(max),
C_AGE INT
)
INSERT INTO CUSTOMER_ID VALUES
(111,'RIYA',18),
(222,'MAHI',19),
(333,'ANU',17),
(444,'SAHIL',18)
SELECT * FROM CUSTOMER_ID
DROP TABLE CUSTOMER_ID
----------------------------------------- 
CREATE TABLE CUSTOMER_ID
(
NAME VARCHAR(100),
AGE INT,
GENDER CHAR(50),
INCOME BIGINT
)
SELECT * FROM CUSTOMER_ID
 INSERT INTO CUSTOMER_ID VALUES
 ('AMAN',18,'MALE',45000),
 ('ANU',19,'FEMALE',55000),
 ('AMIT',17,'MALE',66000),
 ('ANUJA',19,'FEMALE',25000),
 ('RAju',23,'MALE',42000),
 ('PRIYA',19,'MALE',62000),
 ('SEJAL',19,'FEMALE',55000),
 ('ANUJ',20,'MALE',55000),
 ('ANKIT',23,'MALE',52000),
 ('POOJA',20,'FEMALE',62000)
 SELECT * FROM CUSTOMER_ID
 -------------------rollup ,COALESCE
 SELECT GENDER,SUM(INCOME) AS TOTAL FROM CUSTOMER_ID GROUP BY GENDER
 SELECT GENDER,SUM(INCOME) AS TOTAL FROM CUSTOMER_ID GROUP BY ROLLUP(GENDER)
 SELECT COALESCE(GENDER,'GENDER_TOTal_amt'),SUM(INCOME) AS TOTAL FROM CUSTOMER_ID GROUP BY ROLLUP(GENDER)
 SELECT COALESCE(GENDER,'GENDER_TOTal_amt') as Gender,SUM(INCOME) AS TOTAL FROM CUSTOMER_ID GROUP BY ROLLUP(GENDER)
 ----------------cube
  SELECT GENDER,SUM(INCOME) AS TOTAL FROM CUSTOMER_ID GROUP BY GENDER
 SELECT GENDER,SUM(INCOME) AS TOTAL FROM CUSTOMER_ID GROUP BY cube(GENDER)
 SELECT COALESCE(GENDER,'GENDER_TOTal_amt'),SUM(INCOME) AS TOTAL FROM CUSTOMER_ID GROUP BY cube(GENDER)
 SELECT COALESCE(GENDER,'GENDER_TOTal_amt') as Gender,SUM(INCOME) AS TOTAL FROM CUSTOMER_ID GROUP BY cube(GENDER)+
 ------------------diff
 SELECT name,GENDER,SUM(INCOME) AS TOTAL FROM CUSTOMER_ID GROUP BY GENDER,name
  SELECT name,GENDER,SUM(INCOME) AS TOTAL FROM CUSTOMER_ID GROUP BY cube(GENDER,name)
    SELECT name,GENDER,SUM(INCOME) AS TOTAL FROM CUSTOMER_ID GROUP BY rollup(GENDER,name)
--------cast/convert
select * from CUSTOMER_ID
select name+'  '+gender from CUSTOMER_ID
select name+' '+cast(income as varchar(100)) from CUSTOMER_ID
select name+' '+convert(varchar(100),income) from CUSTOMER_ID
select name+'  '+cast(age as varchar(100))+'  '+'gender'+'  '+convert(varchar(100),income) from customer_id 
select * from CUSTOMER_ID
  ---------------------------------------------------------------------------------
 select * from pine
 SELECT GENDER,SUM(INCOME) AS TOTAL FROM CUSTOMER_ID GROUP BY GENDER
 SELECT Gender,count(Total) AS TOTAL FROM pine GROUP BY ROLLUP(Gender)
 SELECT COALESCE(Gender,'GENDER_TOTal_amt'),count(Total) AS TOTAL FROM pine GROUP BY ROLLUP(Gender)
 SELECT COALESCE(Gender,'GENDER_TOTal_amt') as Gender,count(Total) AS TOTAL FROM pine GROUP BY ROLLUP(Gender)
 ----------------cube
 SELECT Gender,count(Total) AS TOTAL FROM pine GROUP BY Gender
 SELECT Gender,count(Total) AS TOTAL FROM pine GROUP BY cube(Gender)
 SELECT COALESCE(Gender,'GENDER_TOTal_amt'),count(Total) AS TOTAL FROM  pine GROUP BY cube(Gender)
 SELECT COALESCE(Gender,'GENDER_TOTal_amt') as Gender,count(Total) AS TOTAL FROM pine GROUP BY cube(Gender)
 ------------------diff
SELECT Payment,GENDER,count(Total) AS TOTAL FROM pine GROUP BY GENDER,Payment
SELECT Payment,GENDER,count(Total) AS TOTAL FROM pine GROUP BY cube(GENDER,Payment)
SELECT Payment,GENDER,count(Total) AS TOTAL FROM pine GROUP BY rollup(GENDER,Payment)
select * from pine
select Total,count(Total) as data from pine group by (Total)
-----------------------------------------------------------------
SELECT count(Total) AS TotalIncomeSum FROM pine
----------------------------------------------------ASSIGNMENT
CREATE TABLE COMPANY
(
EMP_ID INT PRIMARY KEY,
EMP_NAME VARCHAR(15),
EMP_ADDRESS CHAR(35),
INCOME INT 
)
SELECT * FROM COMPANY
INSERT INTO COMPANY VALUES
(1,'ANAS','PRAGATI NAGAR',42500),
(2,'AMIR',' HARI OM NAGAR',52500),
(3,'ANKITA','SANTOSH BHUVAN',62500),
(4,'POOJA','CARGILL',42600),
(5,'AMIT',' VILAL PADA',58200),
(6,'SHIVANI','VIRAR',56200),
(7,'ANKIT','DAHANU',85200),
(8,'RIYA','AMRITSAR',54100)
CREATE TABLE COMPANY_SHOP
(
SR_NO INT,
ITEMS VARCHAR(15),
PRICE INT,
CUST_ID INT FOREIGN KEY REFERENCES COMPANY(EMP_ID)
)
 SELECT * FROM COMPANY
 SELECT * FROM COMPANY_SHOP
 INSERT INTO COMPANY_SHOP VALUES
 (999,'ORACLE',5200,5)
 (111,'KEYBOARD',1500,1),
 (222,'LAPTOP',75000,6),
 (333,'MOUSE',500,3),
 (444,'SPEAKER',6000,1),
 (555,'JOYSTICK',4500,3),
 (666,'MOTHERBOARD',15000,6),
 (777,'CPU',5200,4),
 (888,'COMPUTER_SET',150000,5)
 ALTER TABLE  COMPANY_SHOP
ADD CONSTRAINT UMANG
FOREIGN KEY (CUST_ID)
REFERENCES COMPANY (EMP_ID)
ON UPDATE CASCADE
------------------------------ASSIGNMENT MARKSHEET
USE harsh
DECLARE @RESULT VARCHAR(100)
SET @RESULT='NAME:-SHIVANI'
PRINT(@RESULT)
DECLARE @RESULT1 VARCHAR(100)
SET @RESULT1='CLASS:-12TH'
PRINT(@RESULT1)
DECLARE @RESULT3 VARCHAR(100)
SET @RESULT3='DIV:-A'                                          
PRINT(@RESULT3)
DECLARE @RESULT4 VARCHAR(100)
SET @RESULT4='COLLEGE:-VIVA'
PRINT(@RESULT4)
DECLARE @RESULT5 VARCHAR(100)
SET @RESULT5='STREAM:-SCIENCE'
PRINT(@RESULT5)
DECLARE @RESULT6 VARCHAR(100)
SET @RESULT6='SUBJECT:-ENG,MATHS,PHYSICS,CHEMISTRY,BIOLOGY,CS'
PRINT(@RESULT6)
DECLARE @RESULT8 VARCHAR(120)
SET @RESULT8='35'
PRINT CONCAT('ENGLISH:-',@RESULT8)
IF 
@RESULT8<35
PRINT('STATUS:-PREPARE FOR RE-EXAM')
DECLARE @RESULT9 VARCHAR(120)
SET @RESULT9='45'
PRINT CONCAT('MATHS:-',@RESULT9)
IF 
@RESULT9<35
PRINT('STATUS:-PREPARE FOR RE-EXAM')
DECLARE @RESULT10 VARCHAR(120)
SET @RESULT10='35'
PRINT CONCAT('PHYSICS:-',@RESULT10)
IF 
@RESULT10<35
PRINT('STATUS:-PREPARE FOR RE-EXAM')
DECLARE @RESULT11 VARCHAR(120)
SET @RESULT11='35'
PRINT CONCAT('CHEMISTRY:-',@RESULT11)
IF 
@RESULT11<35
PRINT('STATUS:-PREPARE FOR RE-EXAM')
DECLARE @RESULT12 VARCHAR(120)
SET @RESULT12='35'
PRINT CONCAT('BIOLOGY:-',@RESULT12)
IF 
@RESULT12<35
PRINT('STATUS:-PREPARE FOR RE-EXAM')
DECLARE @RESULT13 VARCHAR(120)
SET @RESULT13='35'
PRINT CONCAT('CS:-',@RESULT13)
IF 
@RESULT13<35
PRINT('STATUS:-PREPARE FOR RE-EXAM')
DECLARE @RESULT17 VARCHAR(100)
SET @RESULT17=SUM(35+45+35+35+35+35)
PRINT CONCAT('TOTAL MARKS OBTAINED:-',@RESULT17,'/500') 
DECLARE @RESULT15 decimal(10,2)
SET @RESULT15=220.0/6
PRINT CONCAT('PERCENTAGE:-',@RESULT15)
IF
@RESULT17>=210
PRINT('RESULT STATUS:-PASS')
ELSE IF 
@RESULT17<210
PRINT('RESULT STATUS:-PREPARE FOR RE-EXAM')
-------------------------------------------------------------
 DECLARE @NAME VARCHAR(MAX)
 SET @NAME='NAME:-ANJALI'
 PRINT(@NAME)
 DECLARE @NAME1 VARCHAR(8000)
 SET @NAME1='STD:-12TH PASS'
 PRINT(@NAME1)
 DECLARE @NAME2 VARCHAR(100)
 SET @NAME2=600/6
  PRINT CONCAT('PERCENTAGE:-',@NAME2)
 
  -------------------------------------------OBSTRACT
  --------------------------------date
  select getdate()
  select CURRENT_TIMESTAMP
  select SYSDATETIME()
  --------------------datename
  select DATENAME(year,getdate())
  select DATENAME(month,getdate())
  select DATENAME(day,getdate())
  select DATENAME(hour,getdate())
  select DATENAME(MINUTE,getdate())
  select DATENAME(SECOND,getdate())
  -------------------datediff
  select datediff(year,'11/10/2020',getdate())
  select datediff(month,'01/10/2024',getdate())
  select datediff(day,'05/10/2024',getdate())
  select datediff(HOUR,'05/10/2024',getdate())
  select datediff(MINUTE,'05/10/2024',getdate())
  select datediff(SECOND,'05/10/2024',getdate())
  ---------------------------dateadd
  select dateadd(year,3,getdate())
  select dateadd(month,3,getdate())
  select dateadd(day,3,getdate())
  select dateadd(MINUTE,3,getdate())
  select dateadd(SECOND,3,getdate())
  select dateadd(HOUR,3,getdate())
  -------------------year,month,day
  select  YEAR('11/10/2024')
   select  month('11/10/2024')
    select  day('11/10/2024')
--------------------------isdate
select isdate('11/10/2003')
select isdate('how are you')
------------------------format
select getdate()
select  FORMAT(getdate(),'dd:mm:yy')
select  FORMAT(getdate(),'ddd:mm:yy')
select  FORMAT(getdate(),'dddd:mm:yy')
select  FORMAT(getdate(),'dddd:MM:yy')
select  FORMAT(getdate(),'dddd:MMM:yy')
select  FORMAT(getdate(),'dddd:MMMM:yy')
select  FORMAT(getdate(),'dddd:MMMM:yyy')
select  FORMAT(getdate(),'dddd:MMMM:yyy  HH:mm:SS')
select  FORMAT(getdate(),'dddd:MMMM:yyy  HH:mm:ss')
select  FORMAT(getdate(),'dddd< >MMMM<  >yyy  ________  HH{ }mm[ ]ss')
select  FORMAT(getdate(),'dddd:MMMM:yyy  HH:mm:ss t')
select  FORMAT(getdate(),'dddd:MMMM:yyy  HH:mm:ss tt')
select  FORMAT(getdate(),'dddd:MMMM:yyy  HH:mm:ss tt','ja-ap')
-------------------------datepart
select datepart(year,getdate())
select datepart(month,getdate())
select datepart(day,getdate())
select datepart(HOUR,getdate())
select datepart(MINUTE,getdate())
select datepart(SECOND,getdate())
use RIYAZ
---------------------------------------------

-- Create the EMP1 table
CREATE TABLE EMP1 (
    Roll INT ,
    Name VARCHAR(50),
    Age INT,
    Gender VARCHAR(10)
);

INSERT INTO EMP1 (Roll, Name, Age, Gender)
VALUES
(1, 'Alice Johnson', 28, 'Female'),
(2, 'Bob Smith', 35, 'Male'),
(3, 'Catherine Davis', 30, 'Female'),
(4, 'David Brown', 22, 'Male'),
(5, 'Eva Green', 29, 'Female'),
(6, 'Frank White', 45, 'Male'),
(7, 'Grace Lee', 32, 'Female'),
(8, 'Henry Walker', 27, 'Male'),
(9, 'Ivy Young', 24, 'Female'),
(10, 'Jack Black', 38, 'Male');
----------------------------------------------
-- Create the CMP table
CREATE TABLE CMP (
    Sr_No INT,
    Country VARCHAR(50),
    State VARCHAR(50),
    Income DECIMAL(15, 2)
);

-- Insert 10 rows of data into the CMP table
INSERT INTO CMP (Sr_No, Country, State, Income)
VALUES
(1, 'USA', 'California', 75000.00),
(2, 'USA', 'Texas', 65000.00),
(3, 'Canada', 'Ontario', 70000.00),
(4, 'Canada', 'British Columbia', 72000.00),
(5, 'UK', 'England', 68000.00),
(11, 'UK', 'Scotland', 62000.00),
(12, 'Australia', 'New South Wales', 80000.00),
(13, 'Australia', 'Victoria', 79000.00),
(14, 'India', 'Maharashtra', 50000.00),
(15, 'India', 'Karnataka', 52000.00);
----------------------
SELECT * FROM EMP1
SELECT * FROM CMP
----------------------JOINS
SELECT * FROM EMP1
 INNER JOIN CMP
 ON EMP1.Roll=CMP.Sr_No

 SELECT * FROM EMP1
  JOIN CMP
 ON EMP1.Roll=CMP.Sr_No

 SELECT A.Name,A.Gender,B.Country,B.Income FROM EMP1 AS A
 INNER JOIN CMP AS B
 ON A.Roll=B.Sr_No
 ------------------------LEFT JOIN
 SELECT * FROM EMP1 A
 LEFT JOIN CMP B
 ON A.Roll=B.Sr_No

 SELECT * FROM EMP1
 LEFT OUTER JOIN CMP
 ON EMP1.Roll=CMP.Sr_No
 ------------------RIGHT
  SELECT * FROM EMP1
 RIGHT JOIN CMP
 ON EMP1.Roll=CMP.Sr_No

   SELECT * FROM EMP1
 RIGHT OUTER JOIN CMP
 ON EMP1.Roll=CMP.Sr_No
 ------------------------FULL 
   SELECT * FROM EMP1
 FULL JOIN CMP
 ON EMP1.Roll=CMP.Sr_No
 ----------------------

------------------------CROSS
 SELECT * FROM EMP1
 SELECT * FROM CMP


  SELECT * FROM EMP1
 CROSS JOIN CMP
 -------------------SELF JOIN ,THREE TABLE JOIN
 USE HARSH
 CREATE TABLE STUDENT_ID
 (
 ROLL INT ,
 [STUDENT NAME] VARCHAR(100),
 [Manager id] INT
 )
 INSERT INTO STUDENT_ID VALUES
 (1,'AMRITA',2),
 (2,'ANCHAL',3),
 (3,'SNEHA',4),
 (4,'KARISHMA',1)
 SELECT * FROM STUDENT_ID
-------------------------------
SP_RENAME 'STUDENT_ID.GR_NO','MANAGER_ID'
----------------------------------
 SELECT * FROM STUDENT_ID


  SELECT * FROM STUDENT_ID as a
  inner join STUDENT_ID as b
  on a.ROLL=b.[MANAGER ID]

  -------------------------
    SELECT a.ROLL,a.[STUDENT NAME],b.[STUDENT NAME] as manager from  STUDENT_ID as a
  inner join STUDENT_ID as b
  on a.[MANAGER ID]=b.ROLL

  select * from STUDENT_ID
  --------------------------------
      SELECT a.ROLL,a.[STUDENT NAME],b.[STUDENT NAME] as manager from  STUDENT_ID as a
  inner join STUDENT_ID as b
  on a.[MANAGER ID]=b.ROLL
  -----------------------------------------------------------SELF JOIN
  create table MITEAM
  (
  [sr no] int,
  name varchAR(100),
  COACH_ID INT
  )
  INSERT INTO MITEAM VALUES
  (111,'AMIR',222),
  (222,'ALI',333),
  (333,'MUSKAN',111),
  (444,'AMIT',444)
  SELECT * FROM MITEAM
   
  select * from MITEAM
  SELECT a.[SR NO],a.NAME,b.NAME as COACH from  MITEAM as a
  inner join MITEAM as b
  on a.COACH_ID=b.[SR NO]

  SELECT * FROM MITEAM as a
  inner join MITEAM as b
  on a.[SR NO]=b.COACH_ID
 ----------------------------------------------------- THREE TABLE JOIN
 use harsh
 SELECT * FROM MITEAM
 SELECT A.[SR NO],A.NAME,B.NAME AS COACH FROM MITEAM AS A
 INNER JOIN MITEAM AS B 
 ON A.COACH_ID=B.[SR NO]
 SELECT * FROM MITEAM AS A 
 INNER JOIN MITEAM AS B
 ON A.[SR NO]=B.COACH_ID
 USE HARSH
 -----------------------------------
 SELECT * FROM SALES
 SELECT TOP 3 * FROM SALES ORDER BY INCOME DESC
 SELECT TOP 25 PERCENT * FROM SALES ORDER BY INCOME DESC
 ---------------------------------------PROEDURE 
 SELECT * FROM SALES WHERE NAME= 'SOPHIA LEE'
 -------------------------------
 CREATE PROCEDURE KHUSHI
 AS
 BEGIN
 SELECT * FROM SALES WHERE NAME= 'SOPHIA LEE'
 END
 EXECUTE KHUSHI
 EXEC KHUSHI
 KHUSHI
 -------------------------------------
 ALTER PROC KHUSHI 
 AS 
 BEGIN
 SELECT * FROM SALES WHERE NAME= 'SOPHIA LEE'
 SELECT * FROM SALES WHERE income>45000
 END
 KHUSHI
 -----------------------------
 CREATE PROC KHUSHI1
 @NAME VARCHAR(100),
 @income INT
 AS
 BEGIN
 SELECT * FROM SALES WHERE NAME= 'SOPHIA LEE'
 SELECT * FROM SALES WHERE income>45000
 END
 KHUSHI1 'SOPHIA LEE',50000
 -----------------------------------------
 ALTER PROC KHUSHI1
 @NAME VARCHAR(100)='SOPHIA LEE',
 @INCOME INT=53000
 WITH ENCRYPTION
 AS
 BEGIN
 SELECT * FROM SALES WHERE NAME=@NAME
 SELECT * FROM SALES WHERE INCOME>@INCOME
 END
 KHUSHI1

 ------------------------------
 SP_HELPTEXT KHUSHI1
 ------------------------------ASSIGNMENT 
 --- INSERT,UPDATE, DELETE
 ---NAME,AGE,INCOME=JS SACHIN,45,534
 SELECT * FROM SALES
 -------------------------------------ASSIGNMENT
 SELECT * FROM WORKER_ID
 SELECT * FROM BONUS
 SELECT * FROM TITLE
 --Q-1. Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name <WORKER_NAME>.
 SELECT FIRST_NAME AS WORKER_NAME FROM WORKER_ID   

 --Q-2. Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper 

 --Q-3. Write an SQL query to fetch unique values of DEPARTMENT from the Worker table.
 SELECT DISTINCT  DEPARTMENT FROM WORKER_ID

 --Q-4. Write an SQL query to print the first three characters of  FIRST_NAME from the Worker table.
  SELECT LEFT(FIRST_NAME, 3) AS First_Three_Characters FROM WORKER_ID


 --Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.
  SELECT CHARINDEX('a', 'Amitabh') AS Position_Of_A;


 --Q-8. Write an SQL query that fetches the unique values of DEPARTMENT from the WORKER TABLE.
 SELECT DISTINCT  DEPARTMENT FROM WORKER_ID

 --Q-9. Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.
  

 --Q-10. Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME.
 --A space char should separate them.
 SELECT FIRST_NAME+'   '+LAST_NAME AS COMPLETE_NAME FROM WORKER_ID

 --Q-11. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
 SELECT * FROM WORKER_ID  ORDER BY FIRST_NAME  ASC

 --Q-12. Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
 SELECT * FROM WORKER_ID  ORDER BY FIRST_NAME  ASC  

 --Q-13. Write an SQL query to print details for Workers with the first names “Vipul” and “Satish” from the Worker table.
 SELECT *  FROM WORKER_ID WHERE FIRST_NAME IN('VIPUL','SATISH')

 --Q-14. Write an SQL query to print details of workers excluding first names, “Vipul” and “Satish” from the Worker table.
 SELECT *  FROM WORKER_ID WHERE FIRST_NAME NOT IN('VIPUL','SATISH')
 --Q-15. Write an SQL query to print details of Workers with DEPARTMENT name as “Admin”.
   SELECT * FROM WORKER_ID WHERE DEPARTMENT = 'ADMIN'

   --Q-16. Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
   SELECT * FROM WORKER_ID WHERE FIRST_NAME LIKE'%A%'

   --Q-17. Write an SQL query to print details of the Workers whose FIRST_NAME ends with ‘a’.
   SELECT * FROM WORKER_ID WHERE FIRST_NAME LIKE'%A'

   --Q-18. Write an SQL query to print details of the Workers whose FIRST_NAME ends K
   SELECT * FROM WORKER_ID WHERE FIRST_NAME LIKE '%_K'

   --Q-19. Write an SQL query to print details of the Workers whose SALARY lies between 100000 and 500000.
   SELECT * FROM WORKER_ID WHERE SALARY BETWEEN 100000 AND 500000

   --Q-20. Write an SQL query to print details of the Workers who joined in Feb’2014.
   SELECT * FROM WORKER_ID WHERE  YEAR(JOINING_DATE)=2014 AND MONTH(JOINING_DATE)=2
   SELECT * FROM WORKER_ID WHERE JOINING_DATE>'2014-02-01' AND JOINING_DATE<'2014-02-28' 
    
	--Q-21. Write an SQL query to fetch the count of employees working in the department ‘Admin’.
	SELECT DEPARTMENT,COUNT(DEPARTMENT) AS 'PUBLIC ' FROM WORKER_ID GROUP BY DEPARTMENT

	--Q-22. Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
	SELECT * FROM WORKER_ID WHERE SALARY>= 50000 AND SALARY <=100000

	---Q-23. Write an SQL query to fetch the no. of workers for each department in descending order.
	SELECT * FROM WORKER_ID ORDER BY DEPARTMENT DESC

	--Q-24. Write an SQL query to print details of the Workers who are also Managers.
SELECT A.WORKER_ID,A.FIRST_NAME,A.LAST_NAME,B.WORKER_REF_ID FROM WORKER_ID AS A
 INNER JOIN TITLE AS B
ON A.WORKER_ID=B.WORKER_REF_ID 

--Q-25. Write an SQL query to fetch duplicate records having matching data in some fields of a table.
SELECT WORKER_TITLE ,COUNT(WORKER_TITLE) AS MATCH_DATA FROM TITLE GROUP BY WORKER_TITLE HAVING COUNT (WORKER_TITLE)>1
    
--Q-26. Write an SQL query to show only odd rows from a table.
SELECT * FROM WORKER_ID WHERE WORKER_ID % 2 = 0 

--Q-27. Write an SQL query to show only even rows from a table.
SELECT * FROM WORKER_ID WHERE WORKER_ID % 2 != 0 

--Q-28. Write an SQL query to clone a new table from another table.
SELECT * INTO PRIYANSHU_REDMI_SNAP_CAMERA FROM WORKER_ID 
SELECT * FROM PRIYANSHU_REDMI_SNAP_CAMERA

--Q-30. Write an SQL query to show records from one table that another table does not 
 
 --Q-31. Write an SQL query to show the current date and time.
 select getdate()
  select CURRENT_TIMESTAMP  
  select SYSDATETIME() AS [CURRENT DATE AND TIME]

  --Q-32. Write an SQL query to show the top n (say 10) records of a table.
   SELECT TOP 10 * FROM WORKER_ID  

   --Q-33. Write an SQL query to determine the nth (say n=5) highest salary from a table.
 SELECT TOP 5  SALARY FROM WORKER_ID  
 
   --Q-34. Write an SQL query to determine the 5th highest salary without using the TOP or limit method.
    
   --Q-35. Write an SQL query to fetch the list of employees with the same salary.
    SELECT SALARY ,COUNT(SALARY) AS AMOUNT FROM WORKER_ID GROUP BY SALARY  HAVING COUNT (SALARY)<2
   --Q-36. Write an SQL query to show the second-highest salary from a table.
   
   --Q-37. Write an SQL query to show one row twice in the results from a table.
 SELECT * FROM WORKER_ID
CROSS JOIN (SELECT 1 AS DUPLICATE) AS A

--Q-38. Write an SQL query to fetch intersecting records of two tables.
  SELECT * FROM WORKER_ID
  INTERSECT 
  SELECT * FROM BONUS

  --Q-39. Write an SQL query to fetch the first 50% of records from a table.
  SELECT TOP 50  PERCENT * FROM WORKER_ID 

  --Q-40. Write an SQL query to fetch the departments that have less than five people in them.
  SELECT DEPARTMENT ,COUNT(DEPARTMENT) AS PEOPLE FROM WORKER_ID GROUP BY DEPARTMENT  HAVING COUNT (DEPARTMENT)<5

  --Q-41. Write an SQL query to show all departments along with the number of people in there.
  SELECT DEPARTMENT ,COUNT(DEPARTMENT) AS DEPT FROM WORKER_ID GROUP BY DEPARTMENT 

  --Q-42. Write an SQL query to show the last record from a table.
  SELECT * FROM WORKER_ID  ORDER BY FIRST_NAME DESC

  --Q-43. Write an SQL query to fetch the first row of a table.
  SELECT TOP 1 * FROM WORKER_ID

  --Q-44. Write an SQL query to fetch the last five records from a table.

  --Q-45. Write an SQL query to print the name of employees having the highest salary in each department.
  SELECT TOP 5 * FROM WORKER_ID ORDER BY SALARY DESC

  --Q-46. Write an SQL query to fetch three max salaries from a table.
 SELECT TOP 3 * FROM WORKER_ID ORDER BY SALARY DESC

  --Q-47. Write an SQL query to fetch three min salaries from a table.
SELECT TOP 3 * FROM WORKER_ID ORDER BY SALARY 

  --Q-48. Write an SQL query to fetch nth max salaries from a table.
  SELECT TOP 1 * FROM WORKER_ID ORDER BY SALARY DESC

  --Q-49. Write an SQL query to fetch departments along with the total salaries paid for each of them.
  SELECT DEPARTMENT, SUM(SALARY) AS TOTAL_SALARY FROM WORKER_ID GROUP BY DEPARTMENT

--Q-50. Write an SQL query to fetch the names of workers who earn the highest salary.
 SELECT FIRST_NAME,LAST_NAME,SALARY FROM WORKER_ID 
WHERE salary = (SELECT MAX(salary) FROM WORKER_ID)



  --------------------------------------------------function
CREATE FUNCTION AMAN()
RETURNS VARCHAR(100)
AS
BEGIN
 RETURN 'HOW ARE YOU'
END
---------------
SELECT dbo.AMAN()
----------------------
CREATE FUNCTION ONE(@a int,@b int)
returns int
as
begin
  return @a*@b
end

select dbo.one(5,6) as number
----------------------
create function vote(@age int)
returns varchar(100)
as
begin
  declare @msg varchar(100)
  if(@age>18)
    set @msg='you are eligible'
  else if (@age=18)
    set @msg='next time'
  else
   set @msg='you are not eligible'
 return @msg
end

select dbo.vote(10)
----------------------------------- BIG/SMALL assignment
 CREATE FUNCTION MATHS(@A INT,@B INT,@C INT)
 RETURNS VARCHAR(200)
 AS
 BEGIN
 DECLARE @BODMAS VARCHAR(100)
 IF (@A>@B AND @A>@C) 
 SET @BODMAS= 'A (' + CAST(@A AS VARCHAR(10)) + ') IS BIGGER THAN BOTH B AND C'
 ELSE IF (@B>@A AND @B>@C)
 SET @BODMAS= 'B (' + CAST(@B AS VARCHAR(10)) + ') IS BIGGER THAN BOTH A AND C'
 ELSE IF (@C>@A AND @C>@B)
 SET @BODMAS= 'C (' + CAST(@C AS VARCHAR(10)) + ') IS BIGGER THAN BOTH B AND A' 
 ELSE
 SET @BODMAS= 'PLEASE DONT INSERT FLOAT,DECIMAL OR EQUAL VALUES'
 RETURN @BODMAS
 END
 DROP FUNCTION MATHS
  SELECT DBO.MATHS (10,20,30)
 --------------------------------------------------EVEN / ODD ASSIGNMENT
  DROP FUNCTION EVOD2
CREATE FUNCTION dbo.EVOD2(@NUMBER INT)
RETURNS VARCHAR(10)
AS
BEGIN
 DECLARE @RESULT VARCHAR(10);
 IF @Number % 2 = 0
 SET @RESULT = 'Even'
 ELSE
 SET @RESULT = 'Odd'
RETURN @RESULT
END
SELECT DBO.EVOD2(6) AS VALVE
--------------------------------------------
  USE HARSH
 ---------------------------------
   create table how
(
Roll int,
Name varchar(100)
)
----------------------------
insert into how values
(1,'a'),
(2,'b'),
(3,'c'),
(4,'d')
---------------
select * from how
-------------------------------------
delete how where roll=1
------------------begin transaction
begin transaction 
  drop table how
  delete how where roll=1

rollback transaction --return 


commit transaction ---save
------------------------------------- TRANSACTIONS
begin transaction 
  delete how where roll=1
  insert into how values(5000,'sachin')

  save transaction app ---save

rollback transaction --return 


commit transaction ---save

ROLLBACK transaction APP
----------------------
select * from how

DELETE HOW

-------------------------
SET IMPLICIT_TRANSACTIONS ON

rollback transaction --return 



DROP TABLE HOW
commit transaction ---save


SET IMPLICIT_TRANSACTIONS OFF

select * from how
-------------------
SELECT @@TRANCOUNT
 

 ------------------------while loop
 declare @a int
 set @a=10
 while(@a>=1)
 begin
  print(@a)
  set @a=@a-1
 end


 declare @a int
 set @a=1
 while(@a<=10)
 begin
  print(@a)
  set @a=@a+1
 end
 ----------------------------
 declare @a int
 set @a=1
 while(@a<=10)
 begin
  print(@a)
  set @a=@a-1
 end
 -------------------------
  declare @a int
 set @a=10
 while(@a>=1)
 begin
  print(@a)
  set @a=@a+1
 end
 --------------------
  declare @a int
 set @a=1
 while(@a<=10)
 begin
  print replicate(' * ',@a)
  set @a=@a+1
 end
 --------------------
 declare @a int
 set @a=10
 while(@a>=1)
 begin
  print replicate(' * ',@a)
  set @a=@a-1
 end
 -------------------
   declare @a int
 set @a=1
 while(@a<=10)
 begin
  print (@a)
  if(@a=5)
   break
  set @a=@a+1
 end

 ------------------------------------------------------------table 2 to 10 assignment
 declare @a4 int
 set @a4=1
 while(@a4<=10)
 begin
 declare @table6 int= @a4* 2                                        
 print concat('2 * ', @a4,' = ',@table6)
 set @a4=@a4+1
 end
 --------------------
declare @a3 int 
 set @a3=1
 while(@a3<=10)
 begin
 declare @table1 int= @a3* 3
 print concat('3 * ', @a3,' = ',@table1)
 set @a3=@a3+1
 end
 --------------------
 declare @a2 int 
 set @a2=1
 while(@a2<=10)
 begin
 declare @table2 int = @a2* 4
 print concat('4 * ', @a2 ,' = ',@table2)
 set @a2=@a2+1
 end
 -------------------------
 declare @a1 int 
 set @a1=1
 while(@a1<=10)
 begin
 declare @table int = @a1 * 5
 print concat('5 * ', @a1 ,' = ',@table)
 set @a1=@a1+1
 end
 --------------------------
   declare @a5 int 
 set @a5=1
 while(@a5<=10)
 begin
 declare @table5 int = @a5* 6
 print concat('6 * ', @a5 ,' = ',@table5)
 set @a5=@a5+1
 end
 ----------------------
 declare @a6 int 
 set @a6=1
 while(@a6<=10)
 begin
 declare @table4 int= @a6 * 7
 print concat('7 * ', @a6,' = ',@table4)
 set @a6=@a6+1
 end
 ------------------------
  declare @a8 int 
 set @a8=1
 while(@a8<=10)
 begin
 declare @table9 int = @a8* 8
 print concat('8 * ', @a8 ,' = ',@table9)
 set @a8=@a8+1
 end
 ----------------------
 declare @a9 int 
 set @a9=1
 while(@a9<=10)
 begin
 declare @tablek int= @a9 * 9
 print concat('9 * ', @a9,' = ',@tablek)
 set @a9=@a9+1
 end
 ----------------------
   declare @ak int 
 set @ak=1
 while(@ak<=10)
 begin
 declare @tablep int= @ak * 10
 print concat('10 * ',@ak,' = ',@tablep)
 set @ak=@ak+1
 end
 -----------------------------case
 select * from STUDENT_ID
select * ,
msg=
case
   when ROLL>2 then 'nice'
   when Roll>3 and ROLL<=2 then 'good'
   when roll<=3 then 'very good'
   else 'why'
end
from STUDENT_ID
 ------------------------
 select * ,
case
   when ROLL>2 then 'nice'
   when Roll>3 and ROLL<=2 then 'good'
   when roll<=3 then 'very good'
   else 'why'
end as data
from STUDENT_ID
----------------
select * from STUDENT_ID
alter table STUDENT_ID add msg varchar(100)
update STUDENT_ID set msg=
case
   when ROLL>2 then 'nice'
   when Roll>3 and ROLL<=2 then 'good'
   when roll<=3 then 'very good'
   else 'why'
end
-----------------------
   ------practical 
 ---------------------
declare @ap int
set @ap=1
while(@ap<=10)
begin 
declare @taop int=@ap*12
print concat(' 12 * ',@ap,' = ',@taop)
set @ap=@ap+1
end
declare @ui int
set @ui=1
while (@ui<=10)
begin
declare @uijh int=@ui*13
print concat(' 13 * ',@ui,' = ',@uijh)
set @ui=@ui+1
end
 ---------------------------------------------------------------------------------
 CREATE PROCEDURE ModifyData
    @Action VARCHAR(10),
    @ID INT,
    @Param1 INT = NULL,
    @Param2 VARCHAR(50) = NULL
AS
BEGIN
    IF @Action = 'INSERT'
    BEGIN
        INSERT INTO YourTable (Column1, Column2)
        VALUES (@Param1, @Param2);
    END
    ELSE IF @Action = 'DELETE'
    BEGIN
        DELETE FROM YourTable
        WHERE ID = @ID;
    END
    ELSE IF @Action = 'UPDATE'
    BEGIN
        UPDATE YourTable
        SET ColumnToUpdate = @Param2
        WHERE ID = @ID;
    END
END;
----------------------------------------------------------
EXEC ModifyData 'INSERT', NULL, 10, 'Value'; -- Insert
EXEC ModifyData 'DELETE', 5; -- Delete
EXEC ModifyData 'UPDATE', 7, NULL, 'NewValue'; -- Update
------------------------------------------------------------------asssignment 1(exercise)
 --Q.1.Write a SQL statement that displays all the information about all salespeople.
 create table salesman
 (salesman_id int,
 name varchar(100),
 city char(10),
 commision float
 )
 insert into salesman values
(5001,'James Hoog','New York',0.15),
(5002,'Nail Knite','Paris',0.13),
(5005,'Pit Alex','London',0.11),
(5006,'Mc Lyon','Paris',0.14) ,
(5007,'Paul Adam','Rome',0.13),
(5003,'Lauson Hen','San Jose',0.12)
select * from salesman -----> ans 

--2. Write a SQL statement to display a string "This is SQL Exercise, Practice and Solution". 
select 'This is SQL Exercise, Practice and Solution' ----->ANS

--3. Write a SQL query to display three numbers in three columns.
select 1,2,3               ----->ANS
--4. Write a SQL query to display the sum of two numbers 10 and 15 from the RDBMS server.
SELECT 10+15                 ----->ANS
--5. Write an SQL query to display the result of an arithmetic expression.
SELECT 10+15-20*2         ----->ANS
--6. Write a SQL statement to display specific columns such as names and commissions for all salespeople. 
SELECT NAME,COMMISION FROM salesman
--7. Write a query to display the columns in a specific order, such as order date, salesman ID, order number, and purchase amount for all orders.  
CREATE TABLE [ORDER]
(ord_no INT,
purch_amt FLOAT,   
ord_date DATE,   
customer_id INT, 
salesman_id INT)
INSERT INTO [ORDER] VALUES
(70001,150.5,'2012-10-05',3005,5002),
(70009,270.65,'2012-09-10',3001,5005),
(70002,65.26,'2012-10-05',3002,5001),
(70004,110.5,'2012-08-17',3009,5003),
(70007,948.5,'2012-09-10',3005,5002),
(70005,2400.6,'2012-07-27',3007,5001),
(70008,5760,'2012-09-10',3002,5001),
(70010,1983.43,'2012-10-10',3004,5006),
(70003,2480.4,'2012-10-10',3009,5003),
(70012,250.45,'2012-06-27',3008,5002),
(70011,75.29,'2012-08-17',3003,5007),
(70013,3045.6,'2012-04-25',3002,5001)
SELECT ord_date,salesman_ID, ord_NO,purch_amt FROM [ORDER]  --->ANS

--8. From the following table, write a SQL query to identify the unique salespeople ID. Return salesman_id. 
SELECT DISTINCT SALESMAN_ID FROM [ORDER]  ---->ANS

--9. From the following table, write a SQL query to locate salespeople who live in the city of 'Paris'. Return salesperson's name, city. 
SELECT NAME,CITY FROM salesman WHERE CITY='PARIS' ------>AND

--10. From the following table, write a SQL query to find customers whose grade is 200. Return customer_id, cust_name, city, grade, salesman_id. 
 CREATE TABLE CUSTOMERS
 (customer_id INT,
 cust_name VARCHAR(100),
 city    VARCHAR(100),
 grade VARCHAR(100),
 salesman_id INT)
 INSERT INTO CUSTOMERS VALUES
 (3002,'Nick Rimando','New York',100,5001),
(3007,'Brad Davis','New York',200,5001),
(3005,'Graham Zusi','California',200,5002),
(3008,'Julian Green','London',300,5002),
(3004,'Fabian Johnson','Paris',300,5006),
(3009,'Geoff Cameron','Berlin',100,5003),
(3003,'Jozy Altidor','Moscow',200,5007),
(3001,'Brad Guzan','London',200,5005)
 SELECT Customer_id,cust_name,city,grade,salesman_id FROM CUSTOMERS WHERE GRADE=200 ----->ANS

 --11. From the following table, write a SQL query to find orders that are delivered by a salesperson with ID. 5001. Return ord_no, ord_date, purch_amt. 
 SELECT ord_no, ord_date, purch_amt FROM [ORDER] WHERE salesman_id=5001  ---->ANS

 --12. From the following table, write a SQL query to find the Nobel Prize winner(s) for the year 1970. Return year, subject and winner. 
 CREATE TABLE NOBEL_WIN
 (YEAR INT, 
 SUBJECT VARCHAR(10),
 WINNER CHAR(25),
 COUNTRY CHAR(100),
 CATEGORY VARCHAR(100))
 INSERT INTO NOBEL_WIN VALUES
 (1970,'Physics','Hannes Alfven','Sweden','Scientist'),
(1970,'Physics','Louis Neel','France','Scientist'),
(1970,'Chemistry','Luis Federico Leloir','France','Scientist'),
(1970,'Physiology','Ulf von Euler','Sweden','Scientist'),
(1970,'Physiology','Bernard Katz','Germany','Scientist'),
(1970,'Literature','Aleksandr Solzhenitsyn','Russia','Linguist'),
(1970,'Economics','Paul Samuelson','USA','Economist'),
(1970,'Physiology','Julius Axelrod','USA','Scientist'),
(1971,'Physics','Dennis Gabor','Hungary','Scientist'),
(1971,'Chemistry','Gerhard Herzberg','Germany','Scientist'),
(1971,'Peace','Willy Brandt','Germany','Chancellor'),
(1971,'Literature','Pablo Neruda','Chile','Linguist'),
(1971,'Economics','Simon Kuznets','Russia','Economist'),
(1978,'Peace','Anwar al-Sadat','Egypt','President'),
(1978,'Peace','[Menachem Begin]','Israel','Prime Minister'),
(1987,'Chemistry','Donald J. Cram','USA','Scientist'),
(1987,'Chemistry','Jean-Marie Lehn','France','Scientist'),
(1987,'Physiology','Susumu Tonegawa','Japan','Scientist'),
(1994,'Economics','Reinhard Selten','Germany','Economist'),
(1994,'Peace','Yitzhak Rabin','Israel','Prime Minister'),
(1987,'Physics','Johannes Georg Bednorz','Germany','Scientist'),
(1987,'Literature','Joseph Brodsky','Russia','Linguist'),
(1987,'Economics','Robert Solow','USA','Economist'),
(1994,'Literature','Kenzaburo Oe','Japan','Linguist')
   SELECT year,subject,winner FROM NOBEL_WIN WHERE YEAR=1970   ---->ANS
   
   --13. From the following table, write a SQL query to find the Nobel Prize winner in ‘Literature’ for 1971. Return winner. 
   SELECT WINNER FROM NOBEL_WIN WHERE YEAR=1971 AND SUBJECT='Literature'   --->ANS

   --14. From the following table, write a SQL query to locate the Nobel Prize winner ‘Dennis Gabor'. Return year, subject. 
   SELECT YEAR,SUBJECT FROM NOBEL_WIN WHERE WINNER='Dennis Gabor'   --->ANS

   --15. From the following table, write a SQL query to find the Nobel Prize winners in the field of ‘Physics’ since 1950. Return winner.
   SELECT WINNER FROM NOBEL_WIN WHERE SUBJECT='PHYSICS' AND YEAR>=1950   --->ANS

   --16. From the following table, write a SQL query to find the Nobel Prize winners in ‘Chemistry’ between the years 1965 and 1975.
   --Begin and end values are included. Return year, subject, winner, and country.
   SELECT year,subject,winner,country FROM NOBEL_WIN WHERE SUBJECT='CHEMISTRY' AND YEAR>=1965 AND YEAR<=1975   --->ANS

   --17. Write a SQL query to display all details of the Prime Ministerial winners after 1972 of Menachem Begin and Yitzhak Rabin.  
    SELECT * FROM NOBEL_WIN WHERE YEAR>1972 AND WINNER IN('[Menachem Begin]','Yitzhak Rabin')    --->ANS

	--18. From the following table, write a SQL query to retrieve the details of the winners whose first names match with the string ‘Louis’.
	--Return year, subject, winner, country, and category.  
	SELECT YEAR,SUBJECT,WINNER,COUNTRY,CATEGORY FROM NOBEL_WIN WHERE WINNER LIKE'LOUIS%'    --->ANS

	--19. From the following table, write a SQL query that combines the winners in Physics, 1970 and in Economics, 1971.
	--Return year, subject, winner, country, and category.
	SELECT * FROM NOBEL_WIN WHERE (subject = 'Physics' AND year = 1970)
	UNION
	(SELECT * FROM nobel_win WHERE (subject = 'Economics' AND year = 1971))    --->ANS

	--20. From the following table, write a SQL query to find the Nobel Prize winners in 1970 excluding the subjects of Physiology and Economics.
	--Return year, subject, winner, country, and category.  
	SELECT * FROM NOBEL_WIN WHERE YEAR=1970 AND SUBJECT NOT IN ('PHYSIOLOGY','ECONOMICS')   --->ANS

	--21. From the following table, write a SQL query to combine the winners in 'Physiology' before 1971 and winners in 'Peace' on or after 1974. 
	--Return year, subject, winner, country, and category.
	SELECT * FROM NOBEL_WIN  WHERE (YEAR<1971 AND SUBJECT='PHYSIOLOGY')
	UNION
	(SELECT * FROM NOBEL_WIN WHERE (YEAR>1974 AND SUBJECT ='PEACE'))    --->ANS

	--22. From the following table, write a SQL query to find the details of the Nobel Prize winner 'Johannes Georg Bednorz'. 
	--Return year, subject, winner, country, and category. 
	SELECT * FROM NOBEL_WIN WHERE WINNER='Johannes Georg Bednorz'    --->ANS

	--23. From the following table, write a SQL query to find Nobel Prize winners for the subject that does not begin with the letter 'P'. 
	--Return year, subject, winner, country, and category. Order the result by year, descending and winner in ascending.
	SELECT * FROM NOBEL_WIN WHERE SUBJECT NOT LIKE'P%' ORDER BY YEAR DESC,WINNER    --->ANS

	--24. From the following table, write a SQL query to find the details of 1970 Nobel Prize winners.
	--Order the results by subject, ascending except for 'Chemistry' and ‘Economics’ which will come at the end of the result set. 
	--Return year, subject, winner, country, and category. 
	SELECT * FROM NOBEL_WIN WHERE YEAR=1970  
	ORDER BY
	CASE
	WHEN
	subject IN ('ECONOMICS','CHEMISTRY') THEN 1
	ELSE 0 
	END ASC, 
	SUBJECT,WINNER    --->ANS
	 
	 --25. From the following table, write a SQL query to select a range of products whose price is in the range Rs.200 to Rs.600.
	 --Begin and end values are included. Return pro_id, pro_name, pro_price, and pro_com. 
	 create table item_mast
	 (
	 PRO_ID int,
	 PRO_NAME  varchar(100),
	 PRO_PRICE FLOAT,
	 PRO_COM int
	 )
	  
	 insert into item_mast values
	  ( 101,'Mother Board',3200.00,15),
    (102,'Key Board',450.00,16),
    (103,'ZIP drive',250.00,14),
    (104,'Speaker',550.00,16),
    (105 ,'Monitor',5000.00,11),
    (106,'DVD drive',900.00,12),
    (107,'CD drive',800.00,12),
    (108,'Printer',2600.00,13),
    (109,'Refill cartridge',350.00,13),
   (110,'Mouse',250.00,12)
    select * from item_mast where PRO_PRICE between 200 and 600    --->ANS

	--26. From the following table, write a SQL query to calculate the average price for a manufacturer code of 16. Return avg.  
	  select avg(pro_price) as average from item_mast where pro_com=16     --->ANS

--27. From the following table, write a SQL query to display the pro_name as 'Item Name' and pro_priceas 'Price in Rs.' 
select pro_name as [item name], pro_price as [price in rs.] from item_mast    --->ANS

--28. From the following table, write a SQL query to find the items whose prices are higher than or equal to $250. 
--Order the result by product price in descending, then product name in ascending.Return pro_name and pro_price.
select pro_name,pro_price from item_mast where PRO_PRICE>=250 order by PRO_PRICE desc,PRO_NAME     --->ANS

--29. From the following table, write a SQL query to calculate average price of the items for each company. Return average price and company code. 
 select avg(pro_price) as average, pro_com from item_mast group by pro_com        --->ANS

 --30. From the following table, write a SQL query to find the cheapest item(s). Return pro_name and, pro_price. 
  select pro_name,pro_price from item_mast 
  where pro_price=(select min(pro_price) from item_mast)  --->ANS

  --31. From the following table, write a SQL query to find the unique last name of all employees. Return emp_lname.  
  create table emp_details
  (
   EMP_IDNO int,
   EMP_FNAME varchar(100),
   EMP_LNAME  varchar(100),
   EMP_DEPT int
  )
  insert into emp_details VALUES
  (127323,'Michale','Robbin',57),
   (526689,'Carlos','Snares',63),
   (843795,'Enric','Dosio',57),
   (328717,'Jhon','Snares',63),
   (444527,'Joseph','Dosni',47),
   (659831,'Zanifer','Emily',47),
   (847674,'Kuleswar','Sitaraman',57),
   (748681,'Henrey','Gabriel',47),
   (555935 ,'Alex','Manue',157),
   (539569,'George','Mardy',27),
   (733843,'Mario','Saule',63),
   (631548,'Alan','Snappy',27),
   (839139,'Maria','Foster',57)
   SELECT DISTINCT(EMP_LNAME) FROM emp_details  --->ANS

   --32. From the following table, write a SQL query to find the details of employees whose last name is 'Snares'. 
   --Return emp_idno, emp_fname, emp_lname, and emp_dept.  
   SELECT * FROM emp_details WHERE EMP_LNAME LIKE 'SNARES%'  --->ANS

   --33. From the following table, write a SQL query to retrieve the details of the employees who work in the department 57. 
   --Return emp_idno, emp_fname, emp_lname and emp_dept.. 
   SELECT * FROM emp_details WHERE EMP_DEPT=57   --->ANS
  
----------------------------------------------------------ASSIGNMENT CLOSE
---------------------------------------------------------SQL Boolean and Relational operators [12 Exercises]
--1. From the following table, write a SQL query to locate the details of customers with grade values above 100.
--Return customer_id, cust_name, city, grade, and salesman_id. 
 SELECT * FROM CUSTOMERS WHERE GRADE>100

 --2. From the following table, write a SQL query to find all the customers in ‘New York’ city who have a grade value above 100. 
 --Return customer_id, cust_name, city, grade, and salesman_id.  
 SELECT * FROM CUSTOMERS WHERE CITY='NEW YORK' AND GRADE>100
  
 --3. From the following table, write a SQL query to find customers who are from the city of New York or have a grade of over 100.
 --Return customer_id, cust_name, city, grade, and salesman_id. 
 SELECT * FROM CUSTOMERS WHERE CITY='NEW YORK' AND  GRADE>100

 --4. From the following table, write a SQL query to find customers who are either from the city 'New York' or who do not have a grade greater than 100. 
 --Return customer_id, cust_name, city, grade, and salesman_id.  
 SELECT * FROM CUSTOMERS WHERE CITY='NEWYORK' OR NOT GRADE<100

 --5. From the following table, write a SQL query to identify customers who do not belong to the city of 'New York' or have a grade value that exceeds 100.
 --Return customer_id, cust_name, city, grade, and salesman_id. 
 SELECT * FROM CUSTOMERS WHERE NOT (CITY='NEW YORK' OR grade>100)

 --6. From the following table, write a SQL query to find details of all orders excluding those with ord_date equal to '2012-09-10' and salesman_id higher than 5005 or purch_amt greater than 1000.
 --Return ord_no, purch_amt, ord_date, customer_id and salesman_id. 
 SELECT * FROM [ORDER] WHERE NOT (ORD_DATE='2012-09-10' AND salesman_id>5005 OR purch_amt>1000)

 --7. From the following table, write a SQL query to find the details of those salespeople whose commissions range from 0.10 to0.12. 
 --Return salesman_id, name, city, and commission. 
 SELECT * FROM salesman WHERE commision>0.10 AND   commision<0.12

 --8. From the following table, write a SQL query to find details of all orders with a purchase amount less than 200 or exclude orders with an order date greater than or equal to '2012-02-10' and a customer ID less than 3009.
 --Return ord_no, purch_amt, ord_date, customer_id and salesman_id.
 SELECT * FROM [ORDER] WHERE purch_amt<200 OR NOT(ORD_DATE>='2010-02-10' AND CUSTOMER_ID<3009)

 --9. From the following table, write a SQL query to find all orders that meet the following conditions. 
 --Exclude combinations of order date equal to '2012-08-17' or customer ID greater than 3005 and purchase amount less than 1000.
 SELECT * FROM [ORDER] WHERE NOT ((ord_date='2012-08-17' AND customer_id > 3005) OR purch_amt < 1000)

 --10. Write a SQL query that displays order number, purchase amount, and the achieved and unachieved percentage (%)
 --for those orders that exceed 50% of the target value of 6000. 
SELECT ORD_NO,PURCH_AMT,
(100 * PURCH_AMT) / 6000 AS 'ACHIVED%' ,
(100 *(6000-PURCH_AMT)/6000) AS 'UNACHIEVED%'
FROM [ORDER]WHERE (100 * purch_amt) / 6000 > 50

--11. From the following table, write a SQL query to find the details of all employees whose last name is ‘Dosni’ or ‘Mardy’. 
--Return emp_idno, emp_fname, emp_lname, and emp_dept.  
SELECT * FROM emp_details WHERE EMP_LNAME='DOSNI' OR EMP_LNAME='MARDY'

--12. From the following table, write a SQL query to find the employees who work at depart 47 or 63.
--Return emp_idno, emp_fname, emp_lname, and emp_dept.
SELECT * FROM emp_details WHERE EMP_DEPT=47 OR EMP_DEPT=63

------------------------------------------------------------------------SQL Wildcard and Special operators [22 Exercises]
--1. From the following table, write a SQL query to find the details of those salespeople who come from the ' Paris' City or 'Rome' City. 
--Return salesman_id, name, city, commission.
SELECT * FROM salesman WHERE CITY='PARIS' OR CITY='ROME' 

--2. From the following table, write a SQL query to find the details of the salespeople who come from either ' Paris' or 'Rome'. 
--Return salesman_id, name, city, commission. 
SELECT * FROM salesman WHERE CITY='PARIS' OR CITY='ROME'

--3. From the following table, write a SQL query to find the details of those salespeople who live in cities other than  Paris and Rome. 
---Return salesman_id, name, city, commission.  
SELECT * FROM salesman WHERE NOT (CITY='PARIS' OR CITY='ROME')

--4. From the following table, write a SQL query to retrieve the details of all customers whose ID belongs to any of the values 3007, 3008 or 3009.
--Return customer_id, cust_name, city, grade, and salesman_id.  
SELECT * FROM CUSTOMERS WHERE CUSTOMER_ID=3007 OR CUSTOMER_ID=3008 OR CUSTOMER_ID=3009

--5. From the following table, write a SQL query to find salespeople who receive commissions between 0.12 and 0.14 (begin and end values are included). 
--Return salesman_id, name, city, and commission.
SELECT * FROM salesman WHERE COMMISION BETWEEN 0.12 AND 0.14

--6. From the following table, write a SQL query to select orders between 500 and 4000 (begin and end values are included). 
--Exclude orders amount 948.50 and 1983.43. Return ord_no, purch_amt, ord_date, customer_id, and salesman_id. 
SELECT * FROM [ORDER] WHERE (purch_amt BETWEEN 500 AND 4000) AND NOT purch_amt IN (948.50, 1983.43)

--7. From the following table, write a SQL query to retrieve the details of the salespeople whose names begin with any letter between 'A' and 'L' (not inclusive). 
--Return salesman_id, name, city, commission. 
SELECT * FROM salesman WHERE name BETWEEN 'A' AND 'L'

--8. From the following table, write a SQL query to find the details of all salespeople except those whose names begin with any letter between 'A' and 'M'. 
--Return salesman_id, name, city, commission. 
SELECT * FROM salesman WHERE NAME NOT BETWEEN 'A' AND 'M'

-- 9. From the following table, write a SQL query to retrieve the details of the customers whose names begins with the letter 'B'.
--Return customer_id, cust_name, city, grade, salesman_id.. 
SELECT * FROM CUSTOMERS WHERE CUST_NAME LIKE'B%'

---10. From the following table, write a SQL query to find the details of the customers whose names end with the letter 'n'.
--Return customer_id, cust_name, city, grade, salesman_id.
SELECT * FROM CUSTOMERS WHERE CUST_NAME LIKE'%N'

--11. From the following table, write a SQL query to find the details of those salespeople whose names begin with ‘N’ and the fourth character is 'l'. 
--Rests may be any character. Return salesman_id, name, city, commission. 
SELECT * FROM salesman WHERE NAME LIKE'N__l%'

--12. From the following table, write a SQL query to find those rows where col1 contains the escape character underscore ( _ ). Return col1.
CREATE TABLE TESTTABLE
(
COL1 VARCHAR(100)
)
INSERT INTO TESTTABLE VALUES
('A001/DJ-402\44_/100/2015'),
('A001_\DJ-402\44_/100/2015'),
('A001_DJ-402-2014-2015'),
('A002_DJ-401-2014-2015'),
('A001/DJ_401'),
('A001/DJ_402\44'),
('A001/DJ_402\44\2015'),
('A001/DJ-402%45\2015/200'),
('A001/DJ_402\45\2015%100'),
('A001/DJ_402%45\2015/300'),
('A001/DJ-402\44')
 
--13. From the following table, write a SQL query to identify those rows where col1 does not contain the escape character underscore ( _ ).
--Return col1.
 
--14. From the following table, write a SQL query to find rows in which col1 contains the forward slash character ( / ). Return col1.
 
--15. From the following table, write a SQL query to identify those rows where col1 does not contain the forward slash character ( / ). Return col1.

--16. From the following table, write a SQL query to find those rows where col1 contains the string ( _/ ). Return col1.

--17. From the following table, write a SQL query to find those rows where col1 does not contain the string ( _/ ). Return col1.

--18. From the following table, write a SQL query to find those rows where col1 contains the character percent ( % ). Return col1.

--19. From the following table, write a SQL query to find those rows where col1 does not contain the character percent ( % ). Return col1.

--20. From the following table, write a SQL query to find all those customers who does not have any grade.
--Return customer_id, cust_name, city, grade, salesman_id.
SELECT * FROM CUSTOMERS WHERE GRADE IS NULL

--21. From the following table, write a SQL query to locate all customers with a grade value. 
--Return customer_id, cust_name,city, grade, salesman_id.
SELECT * FROM CUSTOMERS  WHERE GRADE IS NOT NULL

--22. From the following table, write a SQL query to locate the employees whose last name begins with the letter 'D'. 
--Return emp_idno, emp_fname, emp_lname and emp_dept. Go to the editor
SELECT * FROM emp_details WHERE EMP_LNAME LIKE'D%'

-------------------------------------------------------------------------SQL Aggregate Functions [25 Exercises]
--1. From the following table, write a SQL query to calculate total purchase amount of all orders. Return total purchase amount.
SELECT SUM(PURCH_AMT) FROM [ORDER]

--2. From the following table, write a SQL query to calculate the average purchase amount of all orders. Return average purchase amount. 
SELECT AVG(PURCH_AMT) FROM [ORDER]

--3. From the following table, write a SQL query that counts the number of unique salespeople. Return number of salespeople.  
SELECT COUNT(DISTINCT salesman_id)AS 'SALESPEOPLE' FROM [ORDER]

--4. From the following table, write a SQL query to count the number of customers. Return number of customers.  
 SELECT COUNT(CUST_NAME)AS TOTAL FROM CUSTOMERS

 --5. From the following table, write a SQL query to determine the number of customers who received at least one grade for their activity.  
  SELECT COUNT(GRADE) AS GRADE FROM CUSTOMERS

  --6. From the following table, write a SQL query to find the maximum purchase amount.  
  SELECT MAX(PURCH_AMT) AS MAXIMUM FROM [ORDER]

  --7. From the following table, write a SQL query to find the minimum purchase amount. 
  SELECT MIN(PURCH_AMT) AS MAXIMUM FROM [ORDER]
 
 --8. From the following table, write a SQL query to find the highest grade of the customers in each city. Return city, maximum grade
   SELECT CITY,MAX(GRADE)AS MAX_GRADE FROM CUSTOMERS GROUP BY CITY 

   --9. From the following table, write a SQL query to find the highest purchase amount ordered by each customer. 
   --Return customer ID, maximum purchase amount. 
   SELECT CUSTOMER_ID,MAX(PURCH_AMT)AS HIGHPRICE FROM [ORDER] GROUP BY CUSTOMER_ID
    
	--10. From the following table, write a SQL query to find the highest purchase amount ordered by each customer on a particular date. 
	--Return, order date and highest purchase amount.
	SELECT CUSTOMER_ID,ord_date,MAX(PURCH_AMT)AS HIGHPRICE FROM [ORDER] GROUP BY ord_date,customer_id
     
	 --11. From the following table, write a SQL query to determine the highest purchase amount made by each salesperson on '2012-08-17'.
	 --Return salesperson ID, purchase amount 
SELECT SALESMAN_ID,MAX(PURCH_AMT) FROM [ORDER]
WHERE ord_date='2012-08-17' GROUP BY salesman_id,purch_amt

--12. From the following table, write a SQL query to find the highest order (purchase) amount by each customer on a particular order date. 
--Filter the result by highest order (purchase) amount above 2000.00.
--Return customer id, order date and maximum purchase amount.
 SELECT customer_id, ord_date, MAX(purch_amt)AS MAX_PURCH_AMT FROM [ORDER]
 GROUP BY customer_id, ord_date
HAVING MAX(purch_amt) > 2000

--13. From the following table, write a SQL query to find the maximum order (purchase) amount in the range 2000 - 6000 (Begin and end values are included.)
--by combination of each customer and order date.Return customer id, order date and maximum purchase amount.
SELECT  CUSTOMER_ID,ORD_DATE,MAX(PURCH_AMT) AS [MAX] FROM [ORDER]
GROUP BY CUSTOMER_ID,ord_date
HAVING MAX(PURCH_AMT) BETWEEN 2000 AND 6000
 
 --14. From the following table, write a SQL query to find the maximum order (purchase) amount based on the combination of each customer and order date. Filter the rows for maximum order (purchase) amount is either 2000, 3000, 5760, 6000.
 --Return customer id, order date and maximum purchase amount.
 SELECT CUSTOMER_ID,ORD_DATE,MAX(PURCH_AMT) AS [MAX] FROM [ORDER]
 WHERE(purch_amt=2000 OR purch_amt=3000 OR purch_amt=5760 OR purch_amt=6000)
 GROUP BY CUSTOMER_ID,ORD_DATE
 HAVING MAX(PURCH_AMT) BETWEEN 2000 AND 6000

 --15. From the following table, write a SQL query to determine the maximum order amount for each customer.
 --The customer ID should be in the range 3002 and 3007(Begin and end values are included.).
 --Return customer id and maximum purchase amount.
 SELECT CUSTOMER_ID,MAX(PURCH_AMT) AS [MAX] FROM [ORDER]
 WHERE CUSTOMER_ID BETWEEN 3002 AND 3007
 GROUP BY CUSTOMER_ID 
 HAVING MAX(PURCH_AMT)  > 1

 --16. From the following table, write a SQL query to find the maximum order (purchase) amount for each customer.
 --The customer ID should be in the range 3002 and 3007(Begin and end values are included.). 
 --Filter the rows for maximum order (purchase) amount is higher than 1000. Return customer id and maximum purchase amount.
  SELECT CUSTOMER_ID,MAX(PURCH_AMT) AS [MAX] FROM [ORDER]
 WHERE CUSTOMER_ID BETWEEN 3002 AND 3007
 GROUP BY CUSTOMER_ID 
 HAVING MAX(PURCH_AMT)  > 1000

 --17. From the following table, write a SQL query to determine the maximum order (purchase) amount generated by each salesperson. 
 --Filter the rows for the salesperson ID is in the range 5003 and 5008 (Begin and end values are included.).
 --Return salesperson id and maximum purchase amount.
   SELECT salesman_id,MAX(PURCH_AMT) AS [MAX] FROM [ORDER]
 WHERE salesman_id BETWEEN 5003 AND 5008
 GROUP BY salesman_id 
 HAVING MAX(PURCH_AMT)  > 1

 --18. From the following table, write a SQL query to count all the orders generated on '2012-08-17'. Return number of orders.
 SELECT COUNT(ORD_DATE)AS COUNT FROM [ORDER]
 WHERE ord_date='2012-08-17'
 
 --19. From the following table, write a SQL query to count the number of salespeople in a city. Return number of salespeople.
 SELECT COUNT(CITY) AS COUNT FROM salesman

 --20. From the following table, write a SQL query to count the number of orders based on the combination of each order date and salesperson. 
 --Return order date, salesperson id.
 SELECT ORD_DATE,SALESMAN_ID, COUNT(ORD_NO) AS COUNT  FROM [ORDER]
 GROUP BY ORD_DATE,SALESMAN_ID

 --21. From the following table, write a SQL query to calculate the average product price. Return average product price.
 SELECT AVG(PRO_PRICE) AS AVERAGE_PRICE FROM item_mast

 --22. From the following table, write a SQL query to count the number of products whose price are higher than or equal to 350. Return number of products.
 SELECT COUNT(PRO_PRICE) AS [NUMBER OF PRODUCT] FROM item_mast
 WHERE PRO_PRICE >=350

 --23. From the following table, write a SQL query to compute the average price for unique companies. Return average price and company id.
  SELECT DISTINCT PRO_COM, AVG(PRO_PRICE) AS AVG_PRICE FROM ITEM_MAST
  GROUP BY PRO_COM

  --24. From the following table, write a SQL query to compute the sum of the allotment amount of all departments. Return sum of the allotment amount.
  CREATE TABLE emp_department
  (
  DPT_CODE INT,
  DPT_NAME VARCHAR(30),
  DPT_ALLOTMENT INT
  )
  INSERT INTO emp_department VALUES 
  (57,'IT',65000),
  (63,'Finance',15000),
  (47,'HR',240000),
  (27,'RD',55000),
  (89,'QC',75000)
  SELECT * FROM emp_department
  SELECT SUM(DPT_ALLOTMENT)AS [SUM] FROM emp_department

  --25. From the following table, write a SQL query to count the number of employees in each department. Return department code and number of employees.
  SELECT EMP_DEPT,COUNT(EMP_DEPT) AS COUNT FROM emp_details
  GROUP BY EMP_DEPT

  -------------------------------------------------------------------------------------SQL Formatting query output [10 Exercises]
  --1. From the following table, write a SQL query to select all the salespeople. Return salesman_id, name, city, commission with the percent sign (%).
  SELECT salesman_id, name, city, '%' , commision * 100
  FROM salesman

  --2. From the following table, write a SQL query to find the number of orders booked for each day. 
  --Return the result in a format like "For 2001-10-10 there are 15 orders".". 

  --3. From the following table, write a SQL query to find all the orders. Sort the result-set in ascending order by ord_no. Return all fields.  
  SELECT * FROM [ORDER] ORDER BY ord_no

  --4. From the following table, write a SQL query to find all the orders. Sort the result-set in descending order by ord_date. Return all fields. 
   SELECT * FROM [ORDER] ORDER BY ORD_NO DESC

   --5. From the following table, write a SQL query to find all the orders. Sort the result-set in descending order by ord_date and purch_amt. Return all fields.  
   SELECT * FROM [ORDER] ORDER BY ord_date,purch_amt 

   --6. From the following table, write a SQL query to find all the customers. Sort the result-set by customer_id. Return cust_name, city, grade. 
     SELECT CUST_NAME,CITY,GRADE FROM CUSTOMERS

 --7. From the following table, write a SQL query that calculates the maximum purchase amount generated by each salesperson for each order date.
 --Sort the result-set by salesperson id and order date in ascending order. Return salesperson id, order date and maximum purchase amount. 
 SELECT SALESMAN_ID,ORD_DATE,MAX(PURCH_AMT) AS MAX FROM [ORDER] 
 GROUP BY salesman_id,ord_date
 
 --8. From the following table, write a SQL query to find all the customers. 
 --Sort the result-set in descending order on 3rd field. Return customer name, city and grade. 
 SELECT CUST_NAME,CITY,GRADE FROM CUSTOMERS ORDER BY GRADE DESC 

 --9. From the following table, write a SQL query that counts the unique orders and the highest purchase amount for each customer.
 --Sort the result-set in descending order on 2nd field.
 --Return customer ID, number of distinct orders and highest purchase amount by each customer. 
  SELECT CUSTOMER_ID, COUNT(DISTINCT ord_no), MAX(purch_amt)
FROM [ORDER]
GROUP BY  CUSTOMER_ID
ORDER BY 2 DESC

--10. From the following table, write a SQL query to calculate the summation of purchase amount, total commission (15% for all salespeople) by each order date. 
--Sort the result-set on order date. Return order date, summation of purchase amount and commission.
 SELECT ORD_DATE,SUM(PURCH_AMT) AS [SUM],SUM(PURCH_AMT) * 0.15 AS SUM_IN_PERCENT FROM [ORDER]
 GROUP BY ORD_DATE

 ----------------------------------------------------------------------------------------SQL Quering on Multiple Tables [8 Exercises]
 --1. From the following tables, write a SQL query to find the salespeople and customers who live in the same city.
 --Return customer name, salesperson name and salesperson city.
  SELECT A.CUST_NAME,B.NAME,A.CITY FROM  CUSTOMERS AS A
  INNER JOIN SALESMAN AS B 
  ON A.CITY=B.CITY

  --2. From the following tables, write a SQL query to locate all the customers and the salesperson who works for them.
  --Return customer name, and salesperson name. 
    SELECT A.CUST_NAME,B.NAME FROM  CUSTOMERS AS A
  INNER JOIN SALESMAN AS B 
  ON A.salesman_id=B.salesman_id

  --3. From the following tables, write a SQL query to find those salespeople who generated orders for their customers but are not located in the same city.
  --Return ord_no, cust_name, customer_id (orders table), salesman_id (orders table).  
SELECT ord_no, cust_name, [ORDER].customer_id, [order].salesman_id
FROM salesman, CUSTOMERS, [ORDER]
WHERE customerS.city <> salesman.city
AND [order].customer_id = customerS.customer_id
AND [order].salesman_id = salesman.salesman_id

--4. From the following tables, write a SQL query to locate the orders made by customers. Return order number, customer name.  
SELECT A.ORD_NO,B.cust_name FROM [ORDER] AS A
INNER JOIN CUSTOMERS AS  B 
ON A.customer_id=B.customer_id

---5. From the following tables, write a SQL query to find those customers where each customer has a grade and is served by a salesperson who belongs to a city.
--Return cust_name as "Customer", grade as "Grade".   
SELECT B.cust_name AS CUSTOMERS ,B.grade AS GRADE,A.ord_no AS [ORDER] FROM [ORDER] AS A
INNER JOIN CUSTOMERS AS  B 
ON A.customer_id=B.customer_id
WHERE GRADE IS NOT NULL

--6. From the following table, write a SQL query to find those customers who are served by a salesperson and the salesperson earns commission in the range of 12% to 14% (Begin and end values are included.).
--Return cust_name AS "Customer", city AS "City". 
 SELECT B.cust_name AS CUSTOMERS,A.NAME,A.CITY,A.commision FROM salesman AS A
INNER JOIN CUSTOMERS AS  B 
ON A.salesman_id=B.salesman_id
WHERE commision BETWEEN 0.12 AND 0.14

--7. From the following tables, write a SQL query to find all orders executed by the salesperson and ordered by the customer whose grade is greater than or equal to 200. 
--Compute purch_amt*commission as “Commission”. Return customer name, commission as “Commission%” and Commission.


--8. From the following table, write a SQL query to find those customers who placed orders on October 5, 2012. 
--Return customer_id, cust_name, city, grade, salesman_id, ord_no, purch_amt, ord_date, customer_id and salesman_id.
SELECT A.customer_id,A.cust_name,A.city,A.grade,A.salesman_id,B.ord_no,B.purch_amT,B.ord_date,B.customer_id,B.salesman_id FROM CUSTOMERS AS A
INNER JOIN [ORDER] AS B 
ON A.customer_id=B.customer_id
WHERE ord_date='2012-10-05'

--------------------------------------------------------------------------------------FILTERING and SORTING on HR Database [38 Exercises]
--1. From the following table, write a  SQL query to find those employees whose salaries are less than 6000. Return full name (first and last name), and salary.
 drop table EMPLOYEES
CREATE TABLE EMPLOYEES
(
EMPLOYEE_ID int,
FIRST_NAME  varchar(100),
LAST_NAME   varchar(100),
EMAIL    varchar(100),
PHONE_NUMBER  float,    
HIRE_DATE  date,
JOB_ID     varchar(100),
SALARY   float,
COMMISSION_PCT float, 
MANAGER_ID int,
DEPARTMENT_ID int
)
select * from EMPLOYEES
INSERT INTO EMPLOYEES VALUES
(100 ,' Steven      ',' King        ',' SKING    ', 515.1234567       ,' 2003-06-17' ,' AD_PRES    ', 24000.00 ,           0.00 ,          0 ,            90 ),
(101 ,' Neena       ',' Kochhar     ',' NKOCHHAR ', 515.1234568       , '2005-09-21 ',' AD_VP      ', 17000.00 ,           0.00 ,        100 ,            90 ),
(102 ,' Lex         ',' De Haan     ',' LDEHAAN  ', 515.1234569       , '2001-01-13' ,' AD_VP      ', 17000.00 ,           0.00 ,        100 ,            90 ),
(103 ,' Alexander   ',' Hunold      ',' AHUNOLD  ', 590.4234567       , '2006-01-03 ',' IT_PROG    ',  9000.00 ,           0.00 ,        102 ,            60 ),
(104 ,' Bruce       ',' Ernst       ',' BERNST   ', 590.4234568       , '2007-05-21' ,' IT_PROG    ',  6000.00 ,           0.00 ,        103 ,            60 ),
(105 ,' David       ',' Austin      ',' DAUSTIN  ', 590.4234569       ,' 2005-06-25 ',' IT_PROG    ',  4800.00 ,           0.00 ,        103 ,            60 ),
(106 ,' Valli       ',' Pataballa   ',' VPATABAL ', 590.4234560       , '2006-02-05' ,' IT_PROG    ',  4800.00 ,           0.00 ,        103 ,            60 ),
(107 ,' Diana       ',' Lorentz     ',' DLORENTZ ', 590.4235567       , '2007-02-07 ',' IT_PROG    ',  4200.00 ,           0.00 ,        103 ,            60 ),
(108 ,' Nancy       ',' Greenberg   ',' NGREENBE ', 515.1244569       , '2002-08-17 ',' FI_MGR     ', 12008.00 ,           0.00 ,        101 ,           100 ),
(109 ,' Daniel      ',' Faviet      ',' DFAVIET  ', 515.1244169       , '2002-08-16 ',' FI_ACCOUNT ',  9000.00 ,           0.00 ,        108 ,           100 ),
(110 ,' John        ',' Chen        ',' JCHEN    ', 515.1244269       , '2005-09-28 ',' FI_ACCOUNT ',8200.00 ,           0.00 ,        108 ,           100 ),
(111 ,' Ismael      ',' Sciarra     ',' ISCIARRA ', 515.1244369       , '2005-09-30 ',' FI_ACCOUNT ',  7700.00 ,           0.00 ,        108 ,           100 ),
(112 ,' Jose Manuel ',' Urman       ',' JMURMAN  ', 515.1244469       , '2006-03-07' ,' FI_ACCOUNT ',  7800.00 ,           0.00 ,        108 ,           100 ),
(113 ,' Luis        ',' Popp        ',' LPOPP    ', 515.1244567       , '2007-12-07' ,' FI_ACCOUNT ',  6900.00 ,           0.00 ,        108 ,           100 ),
(114 ,' Den         ',' Raphaely    ',' DRAPHEAL ', 515.1274561       , '2002-12-07' ,' PU_MAN     ', 11000.00 ,           0.00 ,        100 ,            30 ),
(115 ,' Alexander   ',' Khoo        ',' AKHOO    ', 515.1274562       , '2003-05-18 ',' PU_CLERK   ',  3100.00 ,           0.00 ,        114 ,            30 ),
(116 ,' Shelli      ',' Baida       ',' SBAIDA   ', 515.1274563       , '2005-12-24 ',' PU_CLERK   ',  2900.00 ,           0.00 ,        114 ,            30 ),
(117 ,' Sigal       ',' Tobias      ',' STOBIAS  ', 515.1274564       , '2005-07-24 ',' PU_CLERK   ',  2800.00 ,           0.00 ,        114 ,            30 ),
(118 ,' Guy         ',' Himuro      ',' GHIMURO  ', 515.1274565       , '2006-11-15 ',' PU_CLERK   ',  2600.00 ,           0.00 ,        114 ,            30 ),
(119 ,' Karen       ',' Colmenares  ',' KCOLMENA ', 515.1274566       , '2007-08-10 ',' PU_CLERK   ',  2500.00 ,           0.00 ,        114 ,            30 ),
(120 ,' Matthew     ',' Weiss       ',' MWEISS   ', 650.1231234       , '2004-07-18 ',' ST_MAN     ',  8000.00 ,           0.00 ,        100 ,            50 ),
(121 ,' Adam        ',' Fripp       ',' AFRIPP   ', 650.1232234       , '2005-04-10 ',' ST_MAN     ',  8200.00 ,           0.00 ,        100 ,            50 ),
(122 ,' Payam       ',' Kaufling    ',' PKAUFLIN ', 650.1233234       , '2003-05-01 ',' ST_MAN     ',7900.00 ,           0.00 ,        100 ,            50 ),
(123 ,' Shanta      ',' Vollman     ',' SVOLLMAN ', 650.1234234       , '2005-10-10' ,' ST_MAN     ',  6500.00 ,           0.00 ,        100 ,            50 ),
(124 ,' Kevin       ',' Mourgos     ',' KMOURGOS ', 650.1235234       , '2007-11-16' ,' ST_MAN     ',  5800.00 ,           0.00 ,        100 ,            50 ),
(125 ,' Julia       ',' Nayer       ',' JNAYER   ', 650.1241214       , '2005-07-16' ,' ST_CLERK   ',  3200.00 ,           0.00 ,        120 ,            50 ),
(126 ,' Irene       ',' Mikkilineni ',' IMIKKILI ', 650.1241224       ,'2006-09-28 ' ,'ST_CLERK   ',  2700.00 ,           0.00 ,        120 ,            50 ),
(127 ,' James       ',' Landry      ',' JLANDRY  ', 650.1241334       , '2007-01-14 ',' ST_CLERK   ',  2400.00 ,           0.00 ,        120 ,            50 ),
(128 ,' Steven      ',' Markle      ',' SMARKLE  ', 650.1241434       , '2008-03-08 ',' ST_CLERK   ',  2200.00 ,           0.00 ,        120 ,            50 ),
(129 ,' Laura       ',' Bissot      ',' LBISSOT  ', 650.1245234       , '2005-08-20 ',' ST_CLERK   ',  3300.00 ,           0.00 ,        121 ,            50 ),
(130 ,' Mozhe       ',' Atkinson    ',' MATKINSO ', 650.1246234       , '2005-10-30 ',' ST_CLERK   ',  2800.00 ,           0.00 ,        121 ,            50 ),
(131 ,' James       ',' Marlow      ',' JAMRLOW  ', 650.1247234       , '2005-02-16 ',' ST_CLERK   ',  2500.00 ,           0.00 ,        121 ,            50 ),
(132 ,' TJ          ',' Olson       ',' TJOLSON  ', 650.1248234       , '2007-04-10 ',' ST_CLERK   ',  2100.00 ,           0.00 ,        121 ,            50 ),
(133 ,' Jason       ',' Mallin      ',' JMALLIN  ', 650.1271934       , '2004-06-14 ',' ST_CLERK   ',  3300.00 ,           0.00 ,        122 ,            50 ),
(134 ,' Michael     ',' Rogers      ',' MROGERS  ', 650.1271834       , '2006-08-26 ',' ST_CLERK   ',  2900.00 ,           0.00 ,        122 ,            50 ),
(135 ,' Ki          ',' Gee         ',' KGEE     ', 650.1271734       , '2007-12-12 ',' ST_CLERK   ',  2400.00 ,           0.00 ,        122 ,            50 ),
(136 ,' Hazel       ',' Philtanker  ',' HPHILTAN ', 650.1271634       , '2008-02-06 ',' ST_CLERK   ',  2200.00 ,           0.00 ,        122 ,            50 ),
(137 ,' Renske      ',' Ladwig      ',' RLADWIG  ', 650.1211234       , '2003-07-14 ',' ST_CLERK   ',  3600.00 ,           0.00 ,        123 ,            50 ),
(138 ,' Stephen     ',' Stiles      ',' SSTILES  ', 650.1212034       , '2005-10-26 ',' ST_CLERK   ',  3200.00 ,           0.00 ,        123 ,            50 ),
(139 ,' John        ',' Seo         ',' JSEO     ', 650.1212019       , '2006-02-12 ',' ST_CLERK   ',  2700.00 ,           0.00 ,        123 ,            50 ),
(140 ,' Joshua      ',' Patel       ',' JPATEL   ', 650.1211834       , '2006-04-06' ,' ST_CLERK   ',  2500.00 ,           0.00 ,        123 ,            50 ),
(141 ,' Trenna      ',' Rajs        ',' TRAJS    ', 650.1218009       , '2003-10-17 ',' ST_CLERK   ',  3500.00 ,           0.00 ,        124 ,            50 ),
(142 ,' Curtis      ',' Davies      ',' CDAVIES  ', 650.1212994       , '2005-01-29 ',' ST_CLERK   ',3100.00 ,           0.00 ,        124 ,            50 ),
(143 ,' Randall     ',' Matos       ',' RMATOS   ', 650.1212874       , '2006-03-15 ',' ST_CLERK   ',  2600.00 ,           0.00 ,        124 ,            50 ),
(144 ,' Peter       ',' Vargas      ',' PVARGAS  ',650.121004       , '2006-07-09 ',' ST_CLERK   ',  2500.00 ,           0.00 ,        124 ,            50 ),
(145 ,' John        ',' Russell     ',' JRUSSEL  ', 011.44344429268 , '2004-10-01 ',' SA_MAN     ',14000.00 ,           0.40 ,        100 ,            80 ),
(146 ,' Karen       ',' Partners    ',' KPARTNER ', 011.441344467268 , '2005-01-05 ',' SA_MAN     ', 13500.00 ,           0.30 ,        100 ,            80 ),
(147 ,' Alberto     ',' Errazuriz   ',' AERRAZUR ', 011.441344429278 , '2005-03-10 ',' SA_MAN     ', 12000.00 ,           0.30 ,        100 ,            80 ),
(148 ,' Gerald      ',' Cambrault   ',' GCAMBRAU ', 011.441344619268 , '2007-10-15 ',' SA_MAN     ', 11000.00 ,           0.30 ,        100 ,            80 ),
(149 ,' Eleni       ',' Zlotkey     ',' EZLOTKEY ', 011.441344429018 , '2008-01-29 ',' SA_MAN     ', 10500.00 ,           0.20 ,        100 ,            80 ),
(150 ,' Peter       ',' Tucker      ',' PTUCKER  ', 011.441344129268 , '2005-01-30 ',' SA_REP     ', 10000.00 ,           0.30 ,        145 ,            80 ),
(151 ,' David       ',' Bernstein   ',' DBERNSTE ', 011.441344345268 , '2005-03-24 ',' SA_REP     ',  9500.00 ,           0.25 ,        145 ,            80 ),
(152 ,' Peter       ',' Hall        ',' PHALL    ', 011.441344478968 , '2005-08-20 ',' SA_REP     ',  9000.00 ,           0.25 ,        145 ,            80 ),
(153 ,' Christopher ',' Olsen       ',' COLSEN   ', 011.441344498718 , '2006-03-30 ',' SA_REP     ',  8000.00 ,           0.20 ,        145 ,            80 ),
(154 ,' Nanette     ',' Cambrault   ',' NCAMBRAU ', 011.441344987668 , '2006-12-09 ',' SA_REP     ',  7500.00 ,           0.20 ,        145 ,            80 ),
(155 ,' Oliver      ',' Tuvault     ',' OTUVAULT ', 011.441344486508 , '2007-11-23 ',' SA_REP     ',  7000.00 ,           0.15 ,        145 ,            80 ),
(156 ,' Janette     ',' King        ',' JKING    ',011.44345429268 , '2004-01-30 ',' SA_REP     ', 10000.00 ,           0.35 ,        146 ,            80 ),
(157 ,' Patrick     ',' Sully       ',' PSULLY   ', 011.441345929268 , '2004-03-04 ',' SA_REP     ',  9500.00 ,           0.35 ,        146 ,            80 ),
(158 ,' Allan       ',' McEwen      ',' AMCEWEN  ', 011.441345829268 , '2004-08-01 ',' SA_REP     ',  9000.00 ,           0.35 ,        146 ,            80 ),
(159 ,' Lindsey     ',' Smith       ',' LSMITH   ', 011.441345729268 , '2005-03-10 ',' SA_REP     ',  8000.00 ,           0.30 ,        146 ,            80 ),
(160 ,' Louise      ',' Doran       ',' LDORAN   ', 011.441345629268 , '2005-12-15 ',' SA_REP     ',  7500.00 ,           0.30 ,        146 ,            80 ),
(161 ,' Sarath      ',' Sewall      ',' SSEWALL  ', 011.441345529268 , '2006-11-03 ',' SA_REP     ',7000.00 ,           0.25 ,        146 ,            80 ),
(162 ,' Clara       ',' Vishney     ',' CVISHNEY ', 011.441346129268 , '2005-11-11 ',' SA_REP     ', 10500.00 ,           0.25 ,        147 ,            80 ),
(163 ,' Danielle    ',' Greene      ',' DGREENE  ', 011.441346229268 , '2007-03-19 ',' SA_REP     ',  9500.00 ,           0.15 ,        147 ,            80 ),
(164 ,' Mattea      ',' Marvins     ',' MMARVINS ',011.44346329268 ,'2008-01-24 ',' SA_REP     ',  7200.00 ,           0.10 ,        147 ,            80 ),
(165 ,' David       ',' Lee         ',' DLEE     ', 011.441346529268 , '2008-02-23 ',' SA_REP     ',  6800.00 ,           0.10 ,        147 ,            80 ),
(166 ,' Sundar      ',' Ande        ',' SANDE    ', 011.441346629268 , '2008-03-24 ',' SA_REP     ',  6400.00 ,           0.10 ,        147 ,            80 ),
(167 ,' Amit        ',' Banda       ',' ABANDA   ', 011.441346729268 , '2008-04-21 ',' SA_REP     ',  6200.00 ,           0.10 ,        147 ,            80 ),
(168 ,' Lisa        ',' Ozer        ',' LOZER    ', 011.441343929268 , '2005-03-11 ',' SA_REP     ', 11500.00 ,           0.25 ,        148 ,            80 ),
(169 ,' Harrison    ',' Bloom       ',' HBLOOM   ', 011.441343829268 , '2006-03-23 ',' SA_REP     ', 10000.00 ,           0.20 ,        148 ,            80 ),
(170 ,' Tayler      ',' Fox         ',' TFOX     ', 011.441343729268 , '2006-01-24 ',' SA_REP     ',  9600.00 ,           0.20 ,        148 ,            80 ),
(171 ,' William     ',' Smith       ',' WSMITH   ', 011.441343629268 , '2007-02-23 ',' SA_REP     ',  7400.00 ,           0.15 ,        148 ,            80 ),
(172 ,' Elizabeth   ',' Bates       ',' EBATES   ', 011.441343529268 , '2007-03-24 ',' SA_REP     ',  7300.00 ,           0.15 ,        148 ,            80 ),
(173 ,' Sundita     ',' Kumar       ',' SKUMAR   ', 011.441343329268 , '2008-04-21' ,' SA_REP     ',  6100.00 ,           0.10 ,        148 ,            80 ),
(174 ,' Ellen       ',' Abel        ',' EABEL    ', 011.441644429267 ,'2004-05-11 ',' SA_REP     ', 11000.00 ,           0.30 ,        149 ,            80 ),
(175 ,' Alyssa      ',' Hutton      ',' AHUTTON  ', 011.441644429266 , '2005-03-19 ',' SA_REP     ',  8800.00 ,           0.25 ,        149 ,            80 ),
(176 ,' Jonathon    ',' Taylor      ',' JTAYLOR  ', 011.441644429265 , '2006-03-24 ',' SA_REP     ',  8600.00 ,           0.20 ,        149 ,            80 ),
(177 ,' Jack        ',' Livingston  ',' JLIVINGS ', 011.44164429264 , '2006-04-23 ',' SA_REP     ',  8400.00 ,           0.20 ,        149 ,            80 ),
(178 ,' Kimberely   ',' Grant       ',' KGRANT   ', 011.441644429263 , '2007-05-24 ',' SA_REP     ',  7000.00 ,           0.15 ,        149 ,             0 ),
(179 ,' Charles     ',' Johnson     ',' CJOHNSON ', 011.441644429262 , '2008-01-04 ',' SA_REP     ',  6200.00 ,           0.10 ,        149 ,            80 ),
(180 ,' Winston     ',' Taylor      ',' WTAYLOR  ', 650.5079876       , '2006-01-24 ',' SH_CLERK   ',  3200.00 ,           0.00 ,        120 ,            50 ),
(181 ,' Jean        ',' Fleaur      ',' JFLEAUR  ', 650.5079877       , '2006-02-23 ',' SH_CLERK   ',  3100.00 ,           0.00 ,        120 ,            50 ),
(182 ,' Martha      ',' Sullivan    ',' MSULLIVA ', 650.5079878       ,'2007-06-21 ',' SH_CLERK   ',2500.00 ,           0.00 ,        120 ,            50 ),
(183 ,' Girard      ',' Geoni       ',' GGEONI   ', 650.5079879       , '2008-02-03 ',' SH_CLERK   ',  2800.00 ,           0.00 ,        120 ,            50 ),
(184 ,' Nandita     ',' Sarchand    ',' NSARCHAN ', 650.5091876       , '2004-01-27 ',' SH_CLERK   ',4200.00 ,           0.00 ,        121 ,            50 ),
(185 ,' Alexis      ',' Bull        ',' ABULL    ', 650.5092876       , '2005-02-20 ',' SH_CLERK   ',  4100.00 ,           0.00 ,        121 ,            50 ),
(186 ,' Julia       ',' Dellinger   ',' JDELLING ', 650.5093876       , '2006-06-24' ,' SH_CLERK   ',  3400.00 ,           0.00 ,        121 ,            50 ),
(187 ,' Anthony     ',' Cabrio      ',' ACABRIO  ', 650.5094876       , '2007-02-07' ,' SH_CLERK   ',  3000.00 ,           0.00 ,        121 ,            50 ),
(188 ,' Kelly       ',' Chung       ',' KCHUNG   ', 650.5051876       , '2005-06-14' ,' SH_CLERK   ',  3800.00 ,           0.00 ,        122 ,            50 ),
(189 ,' Jennifer    ',' Dilly       ',' JDILLY   ',650.5052876       , '2005-08-13 ',' SH_CLERK   ',  3600.00 ,           0.00 ,        122 ,            50 ),
(190 ,' Timothy     ',' Gates       ',' TGATES   ', 650.5053876       ,' 2006-07-11' ,' SH_CLERK   ',  2900.00 ,           0.00 ,        122 ,            50 ),
(191 ,' Randall     ',' Perkins     ',' RPERKINS ', 650.5054876       ,'2007-12-19 ',' SH_CLERK   ',  2500.00 ,           0.00 ,        122 ,            50 ),
(192 ,' Sarah       ',' Bell        ',' SBELL    ', 650.5011876       ,'2004-02-04 ',' SH_CLERK   ',  4000.00 ,           0.00 ,        123 ,            50 ),
(193 ,' Britney     ',' Everett     ',' BEVERETT ', 650.5012876       ,'2005-03-03' ,' SH_CLERK   ',  3900.00 ,           0.00 ,        123 ,            50 ),
(194 ,' Samuel      ',' McCain      ',' SMCCAIN  ', 650.5013876       ,' 2006-07-01 ',' SH_CLERK   ',  3200.00 ,           0.00 ,        123 ,            50 ),
(195 ,' Vance       ',' Jones       ',' VJONES   ', 650.5014876       ,' 2007-03-17 ',' SH_CLERK   ',  2800.00 ,           0.00 ,        123 ,            50 ),
(196 ,' Alana       ',' Walsh       ',' AWALSH   ', 650.5079811       , '2006-04-24 ',' SH_CLERK   ',  3100.00 ,           0.00 ,        124 ,            50 ),
(197 ,' Kevin       ',' Feeney      ',' KFEENEY  ', 650.5079822       , '2006-05-23 ',' SH_CLERK   ',  3000.00 ,           0.00 ,        124 ,            50 ),
(198 ,' Donald      ',' OConnell    ',' DOCONNEL ', 650.5079833       , '2007-06-21 ',' SH_CLERK   ',  2600.00 ,           0.00 ,        124 ,            50 ),
(199 ,' Douglas     ',' Grant     ',' DGRANT   ', 650.5079844       , '2008-01-13 ',' SH_CLERK   ',  2600.00 ,           0.00 ,        124 ,            50 ),
(200 ,' Jennifer    ',' Whalen      ',' JWHALEN  ', 515.1234444       ,'2003-09-17 ',' AD_ASST    ',  4400.00 ,           0.00 ,        101 ,            10 ),
(201 ,' Michael     ',' Hartstein   ',' MHARTSTE ', 515.1235555       ,' 2004-02-17 ',' MK_MAN     ', 13000.00 ,           0.00 ,        100 ,            20 ),
(202 ,' Pat         ',' Fay         ',' PFAY     ', 603.1236666       ,' 2005-08-17 ',' MK_REP     ',  6000.00 ,           0.00 ,        201 ,            20 ),
(203 ,' Susan       ',' Mavris      ',' SMAVRIS  ', 515.1237777       ,' 2002-06-07' ,' HR_REP     ',  6500.00 ,           0.00 ,        101 ,            40 ),
(204 ,' Hermann     ',' Baer        ',' HBAER    ',515.123888       ,'2002-06-07 ',' PR_REP     ', 10000.00 ,           0.00 ,        101 ,            70 ),
(205 ,' Shelley     ',' Higgins     ',' SHIGGINS ', 515.1238080       , '2002-06-07 ',' AC_MGR     ', 12008.00 ,           0.00 ,        101 ,           110 ),
(206 ,' William     ',' Gietz       ',' WGIETZ   ', 515.1238181       , '2002-06-07' ,'AC_ACCOUNT ',  8300.00 ,           0.00 ,        205 ,           110 )
  --1. From the following table, write a SQL query to find those employees whose salaries are less than 6000.
  --Return full name (first and last name), and salary.
  select first_name+last_name as 'full name',SALARY from EMPLOYEES
  where salary<6000

--2. From the following table, write a SQL query to find those employees whose salary is higher than 8000. Return first name
--, last name and department number and salary.
select FIRST_NAME,last_name,department_id, salary from EMPLOYEES
where salary>8000

--3. From the following table, write a SQL query to find those employees whose last name is "McEwen". Return first name, last name and department ID.
  SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID FROM EMPLOYEES WHERE LAST_NAME LIKE '%McEwen'
  
  --4. From the following table, write a SQL query to identify employees who do not have a department number. 
  --Return employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary,commission_pct, manager_id and department_id.
  SELECT * FROM EMPLOYEES WHERE DEPARTMENT_ID IS NULL
 
 --5. From the following table, write a SQL query to find the details of 'Marketing' department. Return all fields.
 CREATE TABLE DEPARTMENT
 (
 DEPARTMENT_ID INT,
 DEPARTMENT_NAME VARCHAR(100),
 MANAGER_ID INT,
 LOCATION_ID INT
 )
 INSERT INTO DEPARTMENT VALUES
        (  10 ,' Administration       ',        200 ,        1700 ),
(            20 ,' Marketing            ',        201 ,        1800 ),
(            30 ,' Purchasing           ',        114 ,        1700 ),
(            40 ,' Human Resources      ',        203 ,        2400 ),
(            50 ,' Shipping             ',        121 ,        1500 ),
(            60 ,' IT                   ',        103 ,        1400 ),
(            70 ,' Public Relations     ',        204 ,        2700 ),
(            80 ,' Sales                ',        145 ,        2500 ),
(            90 ,' Executive            ',        100 ,       1700 ),
(           100 ,' Finance              ',        108  ,        1700 ),
(           110 ,' Accounting           ',        205 ,        1700 ),
(           120 ,' Treasury             ',          0 ,        1700 ),
(           130 ,' Corporate Tax        ',          0 ,        1700 ),
(           140 ,' Control And Credit   ',          0 ,        1700 ),
(           150 ,' Shareholder Services ',          0 ,        1700 ),
(           160 ,' Benefits             ',          0 ,        1700 ),
(           170 ,' Manufacturing        ',          0 ,        1700 ),
(           180 ,' Construction         ',          0 ,        1700 ),
(           190 ,' Contracting          ',          0 ,        1700 ),
(           200 ,' Operations           ',          0 ,        1700 ),
(           210 ,' IT Support           ',          0 ,        1700 ),
(           220 ,' NOC                  ',          0 ,        1700 ),
(           230 ,' IT Helpdesk          ',          0 ,        1700 ),
(          240 ,' Government Sales     ',          0 ,        1700 ),
(          250 ,' Retail Sales         ',          0 ,        1700 ),
(           260 ,' Recruiting           ',          0 ,        1700 ),
(           270 ,' Payroll              ',          0 ,        1700 )
 SELECT * FROM DEPARTMENT WHERE DEPARTMENT_NAME LIKE '%MARKETING' 
  --6. From the following table, write a SQL query to find those employees whose first name does not contain the letter ‘M’.
  --Sort the result-set in ascending order by department ID. Return full name (first and last name together), hire_date, salary and department_id.
 SELECT FIRST_NAME+LAST_NAME AS 'FULL NAME',HIRE_DATE,SALARY,DEPARTMENT_ID FROM EMPLOYEES WHERE FIRST_NAME NOT LIKE 'M%' 

 --7. From the following table, write a SQL query to find those employees who earn between 8000 and 12000 (Begin and end values are included.
 --) and get some commission.These employees joined before ‘1987-06-05’ and were not included in the department numbers 40, 120 and 70. Return all fields.   
 SELECT *FROM employees
  WHERE salary BETWEEN 8000 AND 12000 
AND commission_pct IS NOT NULL
OR  department_id NOT IN (40 , 120 , 70)
AND   hire_date < '2003-06-05'

--8. From the following table, write a SQL query to find those employees who do not earn any commission. Return full name (first and last name), and salary.
SELECT FIRST_NAME+LAST_NAME AS FULL_NAME, SALARY FROM EMPLOYEES
WHERE COMMISSION_PCT is null

--9. From the following table, write a SQL query to find the employees whose salary is in the range 9000,17000 (Begin and end values are included).
--Return full name, contact details and salary.
 SELECT FIRST_NAME+LAST_NAME AS FULL_NAME,salary from EMPLOYEES
 where SALARY between 9000 AND 17000

 --10. From the following table, write a SQL query to find the employees whose first name ends with the letter ‘m’. 
 --Return the first and last name, and salary.
 SELECT FIRST_NAME,LAST_NAME,SALARY FROM EMPLOYEES 
 WHERE  FIRST_NAME LIKE '%M'

 --11. From the following table, write a SQL query to find those employees whose salaries are not between 7000 and 15000 (Begin and end values are included).
 --Sort the result-set in ascending order by the full name (first and last). Return full name and salary.
  SELECT FIRST_NAME+LAST_NAME AS FULL_NAME,salary from EMPLOYEES
  WHERE SALARY NOT BETWEEN 7000 AND 15000
   ORDER BY FULL_NAME 

  --12. From the following table, write a SQL query to find those employees who were hired between November 5th, 2007 and July 5th, 2009. 
  --Return full name (first and last), job id and hire date.
  SELECT FIRST_NAME+LAST_NAME AS FULL_NAME,JOB_ID,HIRE_DATE from EMPLOYEES
  WHERE HIRE_DATE BETWEEN '05-11-2007' AND '05-07-2009'

  --13. From the following table, write a SQL query to find those employees who work either in department 70 or 90.
  --Return full name (first and last name), department id.
  SELECT FIRST_NAME+LAST_NAME AS FULL_NAME,DEPARTMENT_ID from EMPLOYEES
  WHERE DEPARTMENT_ID=70 OR DEPARTMENT_ID=90

  --14. From the following table, write a SQL query to find those employees who work under a manager.
  --Return full name (first and last name), salary, and manager ID.
 SELECT first_name+last_name AS Full_Name, salary, manager_id FROM employees
WHERE manager_id IS NOT NULL

--15. From the following table, write a SQL query to find the employees who were hired before June 21st, 2002. Return all fields.
SELECT * FROM EMPLOYEES 
WHERE HIRE_DATE < '2002-06-21' 

--16. From the following table, write a SQL query to find the employees whose managers hold the ID 120, 103, or 145.
---Return first name, last name, email, salary and manager ID.
SELECT FIRST_NAME,LAST_NAME,EMAIL,SALARY,MANAGER_ID FROM EMPLOYEES
WHERE MANAGER_ID IN(120,103,145)

--17. From the following table, write a SQL query to find employees whose first names contain the letters D, S, or N. 
--Sort the result-set in descending order by salary. Return all fields.
SELECT * FROM EMPLOYEES 
WHERE first_name LIKE '%D%'
   OR first_name LIKE '%S%'
   OR first_name LIKE '%N%'
ORDER BY SALARY DESC

--18. From the following table, write a SQL query to find those employees who earn above 11000 or the seventh character in their phone number is 3. Sort the result-set in descending order by first name. 
--Return full name (first name and last name), hire date, commission percentage, email, and telephone separated by '-', and salary.
SELECT first_name+' '+last_name AS Full_Name, hire_date, commission_pct,
       email+' -  '+CAST(phone_number AS VARCHAR(100)) AS Contact_Details, salary
FROM employees
WHERE salary > 11000
   OR phone_number LIKE '______3%'
 
 --19. From the following table, write a SQL query to find those employees whose first name contains a character 's' in the third position.
 --Return first name, last name and department id.
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID FROM EMPLOYEES WHERE FIRST_NAME LIKE'___s%'

--20. From the following table, write a SQL query to find those employees work in the departments that are not part of the department 50 or 30 or 80. 
--Return employee_id, first_name,job_id, department_id.
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,JOB_ID FROM EMPLOYEES
WHERE DEPARTMENT_ID NOT IN(50,30,80)

--21. From the following table, write a SQL query to find the employees whose department numbers are included in 30, 40, or 90.
--Return employee id, first name, job id, department id.
SELECT FIRST_NAME,LAST_NAME,DEPARTMENT_ID,JOB_ID FROM EMPLOYEES
WHERE DEPARTMENT_ID IN(30,40,90)

--22. From the following table, write a SQL query to find those employees who worked more than two jobs in the past. Return employee id.
 CREATE TABLE JOB_HISTORY
 (
  EMPLOYEE_ID INT,
  START_DATE DATE,
  END_DATE   DATE,
  JOB_ID     VARCHAR(100),
  DEPARTMENT_ID INT
 )
 INSERT INTO JOB_HISTORY VALUES
 (   102 , '2001-01-13 ',' 2006-07-24 ',' IT_PROG    ',           60),
(         101 , '1997-09-21 ',' 2001-10-27 ',' AC_ACCOUNT ',           110),
(         101 , '2001-10-28 ','2005-03-15 ',' AC_MGR     ',           110 ),
(         201 , '2004-02-17 ','2007-12-19 ',' MK_REP     ',            20 ),
(         114 , '2006-03-24 ','2007-12-31 ',' ST_CLERK   ',            50 ),
(         122 , '2007-01-01 ','2007-12-31 ','ST_CLERK   ',            50 ),
(         200 , '1995-09-17 ','2001-06-17 ','AD_ASST    ',            90 ),
(         176 , '2006-03-24 ','2006-12-31 ','SA_REP     ',            80 ),
(       176 , '2007-01-01 ','2007-12-31 ','SA_MAN     ',            80 ),
(         200 , '2002-07-01 ','2006-12-31 ',' AC_ACCOUNT ',            90) 
SELECT employee_id FROM job_history
GROUP BY employee_id
HAVING COUNT(*) >= 2

--23. From the following table, write a SQL query to count the number of employees, the sum of all salary,
--and difference between the highest salary and lowest salaries by each job id.Return job_id, count, sum, salary_difference.
SELECT job_id, COUNT(*), SUM(salary), MAX(salary) - MIN(salary) AS salary_differencE FROM employees
GROUP BY job_id

--24. From the following table, write a SQL query to find each job ids where two or more employees worked for more than 300 days. Return job i
SELECT * FROM EMPLOYEES 

--25. From the following table, write a SQL query to count the number of cities in each country. Return country ID and number of cities.
CREATE TABLE LOCATIONS
(
LOCATION_ID INT,
STREET_ADDRESS VARCHAR(100),
POSTAL_CODE VARCHAR(20),
CITY Varchar(100),
STATE_PROVINCE varCHar(100),
COUNTRY_ID VARCHAR(100)
)
INSERT INTO LOCATIONS VALUES
(        1000 ,' 1297 Via Cola di Rie                     ',' 989      '  ,' Roma                ','                   ',' IT         '),
(        1100 ,' 93091 Calle della Testa                  ',' 10934  '     ,' Venice              ','                  ' ,' IT         '),
(        1200 ,' 2017 Shinjuku-ku                         ',' 1689   '     ,' Tokyo               ', 'Tokyo Prefecture  ',' JP        ' ),
(        1300 ,' 9450 Kamiya-cho                          ',' 6823   '     ,' Hiroshima           ','                  ' ,' JP        ' ),
(        1400 ,' 2014 Jabberwocky Rd                      ',' 26192   '    ,' Southlake           ',' Texas            ' ,' US        ' ),
(        1500 ,' 2011 Interiors Blvd                      ',' 99236    '   ,' South San Francisco ', 'California        ',' US        ' ),
(        1600 ,' 2007 Zagora St                           ',' 50090   '    ,' South Brunswick     ',' New Jersey      '  ,' US        ' ),
(        1700 ,' 2004 Charade Rd                          ',' 98199 '      ,' Seattle             ',' Washington      '  ,' US        ' ),
(        1800 ,' 147 Spadina Ave                          ',' M5V 2L7'     ,' Toronto             ', 'Ontario          ' ,' CA        ' ),
(        1900 ,' 6092 Boxwood St                          ',' YSW 9T2 '    ,' Whitehorse          ', 'Yukon            ' ,' CA        ' ),
(        2000 ,' 40-5-12 Laogianggen                      ',' 190518     ' ,' Beijing             ','                  ' ,' CN        ' ),
(        2100 ,' 1298 Vileparle (E)                       ', '490231   '   ,' Bombay              ', 'Maharashtra      ' ,' IN       '  ),
(        2200 ,' 12-98 Victoria Street                    ',' 2901     '   ,' Sydney              ', 'New South Wales   ',' AU       '  ),
(        2300 ,' 198 Clementi North                       ', '540198    '  ,' Singapore           ','                   ',' SG        ' ),
(        2400 ,' 8204 Arthur St                           ', '   45  JT ' ,' London              ', '              '    ,' UK       '  ),
(        2500 ,' Magdalen Centre, The Oxford Science Park ',' OX9 9ZB   '  ,' Oxford              ',' Oxford           ' ,' UK       '  ),
(        2600 ,' 9702 Chester Road                        ',' 9629850293 ' ,' Stretford           ',' Manchester     '   ,' UK       '  ),
(        2700 ,' Schwanthalerstr. 7031                    ', '80925      ' ,' Munich              ',' Bavaria          ' ,' DE       '  ),
(        2800 ,' Rua Frei Caneca 1360                     ',' 01307-002 '  ,' Sao Paulo           ',' Sao Paulo       '  ,' BR        ' ),
(        2900 ,' 20 Rue des Corps-Saints                  ',' 1730    '    ,' Geneva              ',' Geneve           ' ,' CH        ' ),
(        3000 ,' Murtenstrasse 921                        ',' 3095     '   ,' Bern                ',' BE               ' ,' CH        ' ),
(        3100 ,' Pieter Breughelstraat 837                ',' 3029SK   '   ,' Utrecht             ', 'Utrecht          ' ,' NL        ' ),
(        3200 ,' Mariano Escobedo 9991                    ',' 11932   '    ,' Mexico City         ',' Distrito Federal',' MX        ' )
SELECT COUNTRY_ID,COUNT(city) as count  from locations group by COUNTRY_ID

--26. From the following table, write a  SQL query to count the number of employees worked under each manager. Return manager ID and number of employees.
 SELECT MANAGER_ID,COUNT(EMPLOYEE_ID) FROM EMPLOYEES GROUP BY MANAGER_ID

 --27. From the following table, write a  SQL query to find all jobs. Sort the result-set in descending order by job title. Return all fields.
  SELECT * FROM JOBS
  CREATE TABLE JOBS
  (
  job_id   VARCHAR(100),
  job_title  VARCHAR(100),                    
  min_salary INT,
  max_salary INT
  )
  INSERT INTO JOBS VALUES
  ('AD_PRES '   ,' President                       ',      20080 ,      40000 ),
('AD_VP   '   ,' Administration Vice President   ',      15000 ,    30000 ),
( 'AD_ASST'    ,' Administration Assistant        ',       3000 ,       6000 ),
( 'FI_MGR '    ,' Finance Manager                 ',       8200 ,     16000 ),
(' FI_ACCOUNT' ,' Accountant                      ',       4200 ,       9000 ),
(' AC_MGR'     ,' Accounting Manager              ',       8200 ,      16000 ),
(' AC_ACCOUNT' ,' Public Accountant               ',       4200 ,       9000 ),
(' SA_MAN    ' ,' Sales Manager                   ',      10000 ,      20080 ),
(' SA_REP  '   ,' Sales Representative            ',       6000 ,      12008 ),
(' PU_MAN  '   ,' Purchasing Manager              ',       8000 ,      15000 ),
(' PU_CLERK'   ,' Purchasing Clerk                ',       2500 ,       5500 ),
(' ST_MAN  '   ,' Stock Manager                   ',       5500 ,       8500 ),
(' ST_CLERK'   ,' Stock Clerk                     ',       2008 ,       5000 ),
(' SH_CLERK '  ,' Shipping Clerk                  ',       2500 ,       5500 ),
(' IT_PROG '   ,' Programmer                      ',       4000 ,      10000 ),
(' MK_MAN   '  ,' Marketing Manager               ',       9000 ,      15000 ),
(' MK_REP '    ,' Marketing Representative        ',       4000 ,       9000 ),
(' HR_REP '    ,' Human Resources Representative  ',       4000 ,       9000 ),
(' PR_REP '    ,' Public Relations Representative ',       4500 ,      10500 )
  SELECT * FROM JOBS ORDER BY job_title DESC

  --28. From the following table, write a  SQL query to find all those employees who are either Sales Representatives or Salesmen. 
  --Return first name, last name and hire date.
-- Selecting 'first_name', 'last_name', and 'hire_date' columns
   


 --29. From the following table, write a  SQL query to calculate the average salary of employees who receive a commission percentage for each department.
 --Return department id, average salary.
 SELECT DEPARTMENT_ID,AVG(SALARY) as average FROM EMPLOYEES GROUP BY DEPARTMENT_ID

 --30. From the following table, write a  SQL query to find the departments where any manager manages four or more employees. Return department_id.
   SELECT DISTINCT department_id
FROM employees
GROUP BY department_id, manager_id 
HAVING COUNT(employee_id) >= 4
  

  --31. From the following table, write a  SQL query to find the departments where more than ten employees receive commissions. Return department id.
     SELECT DISTINCT department_id
FROM employees
GROUP BY department_id
HAVING COUNT(employee_id) > 10
  
  --32. From the following table, write a  SQL query to find those employees who have completed their previous jobs. Return employee ID, end_date.
SELECT employee_id, MAX(end_date)
FROM job_history
WHERE employee_id IN (SELECT DEPARTMENT_ID FROM JOB_HISTORY
    GROUP BY JOB_ID
    HAVING COUNT(employee_id) > 1
)

--33. From the following table, write a SQL query to find those employees who do not have commission percentage and have salaries between 7000, 12000
--(Begin and end values are included.)and who are employed in the department number 50. Return all the fields of employees.
 select * from employees where salary in(7000,12000)

 --34. From the following table, write a SQL query to compute the average salary of each job ID. Exclude those records where average salary is on or lower than 8000.
 --Return job ID, average salary.
 select job_id,avg(salary) as average from EMPLOYEES group by JOB_ID
 having avg(salary)<8000

 --35. From the following table, write a SQL query to find those job titles where maximum salary falls between 12000 and 18000 (Begin and end values are included.).
 --Return job_title, max_salary-min_salary.
 select job_title,max_salary,min_salary,max(max_salary) from jobs group by job_title
 having max(max_salary) between 12000 and 18000

 --36. From the following table, write a SQL query to find the employees whose first or last name begins with 'D'. Return first name, last name.
 select first_name,last_name from EMPLOYEES where LAST_NAME like 'd%' or FIRST_NAME like '%D' 

 --37. From the following table, write a SQL query to find details of those jobs where the minimum salary exceeds 9000. Return all the fields of jobs.
   select * from jobs where min_salary >9000

 --38. From the following table, write a SQL query to find those employees who joined after 7th September 1987. Return all the fields.
   select * from EMPLOYEES where HIRE_DATE>'1987-09-07'
    
   ---------------------------------------------------------------------------------------------------------------------SQL JOINS [29 Exercises]
 --1. From the following tables write a SQL query to find the salesperson and customer who reside in the same city. Return Salesman, cust_name and city.
 select a.name as 'member',b.cust_name,b.city
 from salesman as a,customers as b
 where a.city=b.city
 
 --2. From the following tables write a SQL query to find those orders where the order amount exists between 500 and 2000. 
 --Return ord_no, purch_amt, cust_name, city.
 select b.ord_no,b.purch_amt,a.cust_name,a.city 
 from customers as a,[order] as b
 where a.customer_id=b.customer_id
 and purch_amt between 500 and 2000

 --3. From the following tables write a SQL query to find the salesperson(s) and the customer(s) he represents.
 --Return Customer Name, city, Salesman, commission.
  select b.city, a.commision,a.name as 'salesman',b.cust_name
  from salesman as a 
  inner join CUSTOMERS as b 
  ON a.salesman_id = b.salesman_id

  --4. From the following tables write a SQL query to find salespeople who received commissions of more than 12 percent from the company. 
  --Return Customer Name, customer city, Salesman, commission.  
select a.cust_name,a.city,b.name,b.commision 
from customers as a
inner join salesman as b
on a.salesman_id=b.salesman_id
where commision >0.12
--5. From the following tables write a SQL query to locate those salespeople who do not live in the same city where their customers live and have received a commission of more than 12% from the company. 
--Return Customer Name, customer city, Salesman, salesman city, commission.  
select a.cust_name,a.city,b.name,b.commision
from customers as a
inner join salesman as b
on a.salesman_id=b.salesman_id
where b.commision >0.12
and a.city <> b.city

--6. From the following tables write a SQL query to find the details of an order. Return ord_no, ord_date, purch_amt, Customer Name, grade, Salesman, commission.
select a.ord_no,a.ord_date,a.purch_amt,b.cust_name,b.grade,c.name,c.commision
from [order] as a
inner join CUSTOMERS as b 
on a.salesman_id=b.salesman_id
inner join salesman as c 
on a.salesman_id=c.salesman_id

--7. Write a SQL statement to join the tables salesman, customer and orders so that the same column of each table
--appears once and only the relational rows are returned. 
 SELECT * FROM [order] 
NATURAL JOIN customers  
NATURAL JOIN salesman
--8. From the following tables write a SQL query to display the customer name, customer city, grade, salesman, salesman city. 
--The results should be sorted by ascending customer_id.  
SELECT a.cust_name, a.city, a.grade,b.name AS "Salesman", b.city 
FROM CUSTOMERS as a 
LEFT JOIN salesman as b 
ON a.salesman_id = b.salesman_id 
ORDER BY a.customer_id
--9. From the following tables write a SQL query to find those customers with a grade less than 300. Return cust_name, customer city, 
--grade, Salesman, salesmancity. The result should be ordered by ascending customer_id. 
SELECT a.cust_name, a.city, a.grade, b.name AS "Salesman", b.city 
FROM customers as a 
LEFT OUTER JOIN salesman as b 
ON a.salesman_id = b.salesman_id 
WHERE a.grade < 300 
ORDER BY a.customer_id
--10. Write a SQL statement to make a report with customer name, city, order number, order date, and order amount in ascending order according
--to the order date to determine whether any of the existing customers have placed an order or not.
   SELECT a.cust_name, a.city, b.ord_no,b.ord_date, b.purch_amt AS "Order Amount" 
FROM CUSTOMERS a 
LEFT OUTER JOIN [ORDER] b 
ON a.customer_id = b.customer_id 
ORDER BY b.ord_date
-- 11. SQL statement to generate a report with customer name, city, order number, order date, order amount, salesperson name, and commission to determine if any of the existing customers
--have not placed orders or if they have placed orders through their salesman or by themselves.
SELECT a.cust_name, a.city, b.ord_no,b.ord_date, b.purch_amt AS "Order Amount",c.name, c.commision 
FROM CUSTOMERS AS a 
LEFT OUTER JOIN [ORDER] AS b 
ON a.customer_id = b.customer_id 
LEFT OUTER JOIN salesman as c 
ON c.salesman_id = b.salesman_id
---12. Write a SQL statement to generate a list in ascending order of salespersons who work either for one or more 
--customers or have not yet joined any of the customers.
 SELECT a.cust_name, a.city, a.grade,b.name AS "Salesman", b.city 
FROM customerS a 
RIGHT OUTER JOIN salesman b 
ON b.salesman_id = a.salesman_id 
ORDER BY b.salesman_id

--13. From the following tables write a  SQL query to list all salespersons along with customer name, city, grade, order number, date, and amount. 
--Condition for selecting list of salesmen : 1. Salesmen who works for one or more customer or, 2. Salesmen who not yet join under any customer, 
--Condition for selecting list of customer : 3. placed one or more orders, or 4. no order placed to their salesman.
SELECT a.cust_name, a.city, a.grade,  b.name AS "Salesman", c.ord_no, c.ord_date, c.purch_amt 
FROM CUSTOMERS AS a 
RIGHT OUTER JOIN salesman AS b 
ON b.salesman_id = a.salesman_id 
RIGHT OUTER JOIN [ORDER] AS c 
ON c.customer_id = a.customer_id

--14. Write a  SQL statement to make a list for the salesmen who either work for one or more customers or yet to join any of the customer. The customer may have placed,
--either one or more orders on or above order amount 2000 and must have a grade, or he may not have placed any order to the associated supplier.
SELECT a.cust_name, a.city, a.grade, b.name AS "Salesman", c.ord_no, c.ord_date, c.purch_amt 
FROM CUSTOMERS aS A 
RIGHT OUTER JOIN salesman AS b 
ON b.salesman_id = a.salesman_id 
LEFT OUTER JOIN [ORDER] AS c 
ON c.customer_id = a.customer_id 
WHERE c.purch_amt >= 2000 AND a.grade IS NOT NULL

--15.For those customers from the existing list who put one or more orders, or which orders have been placed by the customer who is not on the list, 
--create a report containing the customer name, city, order number, order date, and purchase amount
SELECT A.CUST_NAME,A.CITY,B.ORD_NO,B.ORD_DATE,B.PURCH_AMT
FROM CUSTOMERS AS A 
LEFT JOIN [ORDER] AS B
ON A.salesman_id=B.salesman_id
 
--16. Write a  SQL statement to generate a report with the customer name, city, order no. order date, purchase amount for only those customers on
--the list who must have a grade and placed one or more orders or which order(s) have been placed by the customer who neither is on the list nor has a grade.
SELECT a.cust_name, a.city, b.ord_no,
b.ord_date, b.purch_amt AS "Order Amount"
FROM CUSTOMERS AS a 
FULL OUTER JOIN [ORDER] b 
ON a.customer_id = b.customer_id 
WHERE a.grade IS NOT NULL

--17. Write a  SQL query to combine each row of the salesman table with each row of the customer table.
SELECT * FROM salesman a 
CROSS JOIN customerS b
--18. Write a  SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear for 
--all customers and vice versa for that salesperson who belongs to that city.
SELECT * FROM salesman a 
CROSS JOIN customerS AS b 
WHERE a.city IS NOT NULL;
--19. Write a  SQL statement to create a Cartesian product between salesperson and customer, i.e. each salesperson will appear fo
--r every customer and vice versa for those salesmen who belong to a city and customers who require a grade.
SELECT * FROM salesman a 
CROSS JOIN CUSTOMERS AS b 
WHERE a.city IS NOT NULL 
AND b.grade IS NOT NULL

--20. Write a  SQL statement to make a Cartesian product between salesman and customer i.e. each salesman will appear for all customers and vice versa for 
--those salesmen who must belong to a city which is not the same as his customer and the customers should have their own grade.
SELECT * FROM salesman a 
CROSS JOIN customerS  b 
WHERE a.city IS NOT NULL 
AND b.grade IS NOT NULL 
AND a.city <> b.city
--21. From the following tables write a  SQL query to select all rows from both participating tables as long as there is a match between pro_com and com_id.
CREATE TABLE COMPANY_MAST
(
COM_ID INT,
COM_NAME VARCHAR(100)
)
INSERT INTO COMPANY_MAST VALUES
( 11 ,'Samsung'),
( 12,' iBall'),
( 13 ,'Epsion'),
(14 ,'Zebronics '),
(   15 ,'Asus'),
(16 ,'Frontech')   
SELECT *FROM item_mast 
INNER JOIN company_mast
ON item_mast.pro_com = company_mast.com_id
--22. Write a  SQL query to display the item name, price, and company name of all the products.
SELECT item_mast.pro_name, pro_price, company_mast.com_name
FROM item_mast 
INNER JOIN company_mast
ON item_mast.pro_com = company_mast.com_id
--23. From the following tables write a  SQL query to calculate the average price of items of each company. Return average value and company name.
SELECT AVG(pro_price) AS AVERAGE, company_mast.com_name
FROM item_mast 
INNER JOIN company_mast
ON item_mast.pro_com = company_mast.com_id
GROUP BY company_mast.com_name
--24. From the following tables write a  SQL query to calculate and find the average price of items of each company higher than or equal to Rs. 350. 
--Return average value and company name.
SELECT AVG(pro_price)AS AVERAGE, company_mast.com_name
FROM item_mast 
INNER JOIN company_mast
ON item_mast.pro_com = company_mast.com_id
GROUP BY company_mast.com_name
HAVING AVG(pro_price) >= 350

--25. From the following tables write a  SQL query to find the most expensive product of each company. Return pro_name, pro_price and com_name.
SELECT A.pro_name, A.pro_price, F.com_name
FROM item_mast A 
INNER JOIN company_mast F
ON A.pro_com = F.com_id
AND A.pro_price =( SELECT MAX(A.pro_price)FROM item_mast A
WHERE A.pro_com = F.com_id)

--26. From the following tables write a  SQL query to display all the data of employees including their department.
SELECT emp_idno, A.emp_fname AS "First Name", emp_lname AS "Last Name",
       B.dpt_name AS "Department", emp_dept, dpt_code, dpt_allotment
FROM emp_details A 
INNER JOIN emp_department B
ON A.emp_dept = B.dpt_code
--27. From the following tables write a  SQL query to display the first and last names of each employee, as well as the department name and sanction amount.
SELECT emp_details.emp_fname AS "First Name", emp_lname AS "Last Name", 
emp_department.dpt_name AS "Department", 
dpt_allotment AS "Amount Allotted"
FROM emp_details 
INNER JOIN emp_department
ON emp_details.emp_dept = emp_department.dpt_code

--28. From the following tables write a  SQL query to find the departments with budgets more than Rs. 50000 and display the first name and last name of employees.
SELECT emp_details.emp_fname AS "First Name", emp_lname AS "Last Name"
FROM emp_details 
INNER JOIN emp_department
ON emp_details.emp_dept = emp_department.dpt_code
AND emp_department.dpt_allotment > 50000

--29. From the following tables write a  SQL query to find the names of departments where more than two employees are employed. Return dpt_name.
 SELECT emp_department.dpt_name
FROM emp_details 
INNER JOIN emp_department
ON emp_dept = dpt_code
GROUP BY emp_department.dpt_name
HAVING COUNT(*) > 2
 ------------------------------------------------------------------------------------------------------------------SQL JOINS on HR Database [27 Exercises]
--1. From the following tables, write a  SQL query to find the first name, last name, department number, and department name for each employee.
SELECT A.FIRST_NAME,A.LAST_NAME,B.DEPARTMENT_ID,B.DEPARTMENT_NAME
FROM EMPLOYEES AS A 
INNER JOIN DEPARTMENT AS B 
ON a.DEPARTMENT_ID=b.DEPARTMENT_ID
 
 --2. From the following tables, write a  SQL query to find the first name, last name, department, city, and state province for each employee.
 SELECT A.FIRST_NAME,A.LAST_NAME,B.DEPARTMENT_NAME,C.CITY,C.STATE_PROVINCE
 FROM EMPLOYEES AS A 
 INNER JOIN DEPARTMENT AS B
 ON A.DEPARTMENT_ID=B.DEPARTMENT_ID
 INNER JOIN LOCATIONS AS C 
 ON B.LOCATION_ID=C.LOCATION_ID
  
  --3. From the following table, write a SQL query to find the first name, last name, salary, and job grade for all employees.
  CREATE TABLE job_grades
  (
  GRADE_LEVEL VARCHAR(1), 
  LOWEST_SAL INT,
  HIGHEST_SAL INT
  )
INSERT INTO JOB_GRADES VALUES 
('A'     ,         1000 ,       2999),
('B'     ,         3000   ,     5999),
('C'    ,          6000     ,   9999),
('D'  ,           10000    ,   14999),
('E' ,            15000      , 24999),
('F',             25000       ,40000)
SELECT A.first_name, A.last_name, A.salary,B.grade_level FROM employees A 
JOIN job_grades B
 ON A.salary BETWEEN B.lowest_sal AND B.highest_sal

 --4. From the following tables, write a  SQL query to find all those employees who work in department ID 80 or 40. 
 --Return first name, last name, department number and department name.
 SELECT E.first_name, E.last_name, E.department_id, D.department_name 
FROM employees AS E 
JOIN department As D 
  ON E.department_id = D.department_id 
AND E.department_id IN (80, 40)

--5. From the following tables, write a  SQL query to find those employees whose first name contains the letter ‘z’. 
--Return first name, last name, department, city, and state province.
SELECT E.first_name, E.last_name, D.department_name ,C.CITY,C.STATE_PROVINCE
FROM EMPLOYEES AS E
JOIN DEPARTMENT AS D
ON E.DEPARTMENT_ID=D.DEPARTMENT_ID
JOIN LOCATIONS AS C
ON D.LOCATION_ID=C.LOCATION_ID
WHERE E.first_name LIKE '%Z%'

--6. From the following tables, write a SQL query to find all departments, including those without employees.
--Return first name, last name, department ID, department name.
SELECT E.first_name, E.last_name, E.department_id, D.department_name 
FROM employees AS E 
RIGHT OUTER JOIN department As D 
  ON E.department_id = D.department_id 

  --7. From the following table, write a  SQL query to find the employees who earn less than the employee of ID 182.
  --Return first name, last name and salary.
SELECT E.first_name, E.last_name, E.salary 
FROM employees E 
JOIN employees S
ON E.salary < S.salary 
AND S.employee_id = 182

--8. From the following table, write a  SQL query to find the employees and their managers. Return the first name of the employee and manager.
SELECT a.first_name, b.FIRST_NAME as manager
from employees as a 
join employees as b 
on a.MANAGER_ID=b.EMPLOYEE_ID

--9. From the following tables, write a SQL query to display the department name, city, and state province for each department.
select a.department_name,b.city,b.state_province
from DEPARTMENT AS A 
JOIN LOCATIONS AS B 
ON A.LOCATION_ID=B.LOCATION_ID

--10. From the following tables, write a  SQL query to find out which employees have or do not have a department.
--Return first name, last name, department ID, department name.
SELECT E.first_name, E.last_name, E.department_id, D.department_name 
FROM employees E 
LEFT OUTER JOIN department D 
  ON E.department_id = D.department_id

--11. From the following table, write a  SQL query to find the employees and their managers. Those managers do not work under any manager also appear in the list.
--Return the first name of the employee and manager.
SELECT E.first_name,E.FIRST_NAME AS 'MANAGER' 
FROM employees E 
LEFT OUTER JOIN employees S
ON E.MANAGER_ID=S.EMPLOYEE_ID

--12. From the following tables, write a SQL query to find the employees who work in the same department as the employee with the last name Taylor.
--Return first name, last name and department ID.
SELECT E.first_name, E.last_name, E.department_id 
FROM employees E 
JOIN employees S
  ON E.department_id = S.department_id
   AND S.last_name = 'Taylor'






----------------------------------------CLUSTERED INDEX
CREATE TABLE ONE21
(
ROLL INT,
NAME VARCHAR(100)
)

INSERT INTO ONE21 VALUES
(1,'apple'),
(5,'WINDOW'),
(2,'NEHA')

SELECT * FROM ONE21
--------------------------------------
CREATE TABLE TWO20
(
ROLL INT PRIMARY KEY,
NAME VARCHAR(100)
)

SELECT * FROM TWO20

INSERT INTO TWO20 VALUES
(1,'apple'),
(5,'WINDOW'),
(2,'NEHA')
-----------------------

SELECT * FROM ONE21
SELECT * FROM TWO20
---------------------CLUSTERED
CREATE CLUSTERED INDEX PRIYA
ON ONE21(ROLL)

CREATE UNIQUE CLUSTERED INDEX TWO1000
ON ONE21(ROLL DESC)

SP_HELPINDEX ONE21
 --UPDate delete select ke sath where use hota hai aur having me bas select use hota hai
 ------------------
 SELECT * FROM ONE21
 -----------------
 CREATE NONCLUSTERED INDEX IAS
 ON ONE21(ROLL DESC)


 CREATE INDEX OP
 ON ONE21(ROLL)


 CREATE UNIQUE NONCLUSTERED INDEX DAT
 ON ONE21(ROLL)
 -------------------------------------------------------
  SELECT* FROM TWO20

  CREATE NONCLUSTERED INDEX LUNA
  ON TWO20(ROLL DESC)
  CREATE UNIQUE NONCLUSTERED INDEX ANU
  ON TWO20(ROLL)
  -----------------------------------------------------------------------------------TRIGGERS
  SELECT * FROM WORKER_ID

CREATE TABLE J
(
ROLL INT,
NAME VARCHAR(100)
)

SELECT * FROM J

INSERT INTO J VALUES
(1,'VINOD')
-----------------
CREATE TRIGGER ONE1
ON J
AFTER INSERT
AS
BEGIN
  PRINT('THANKS FOR INSERT DATA')
END
--------------------
CREATE TRIGGER ONE111
ON J
AFTER DELETE
AS
BEGIN
  PRINT('THANKS FOR DELETE DATA')
END

DELETE J WHERE ROLL=1
-----------------UPDATE
CREATE TRIGGER ONE1111
ON J
AFTER UPDATE
AS
BEGIN
  PRINT('THANKS FOR UPDATE DATA')
END

SELECT * FROM J
UPDATE J SET ROLL=20 WHERE ROLL=1
CREATE TABLE
CREATE TABLE DATA
( 
ROLL INT,
NAME VARCHAR(100)
)

SELECT * FROM DATA

INSERT INTO DATA VALUES
(1,'SACHIN')
-------------------------------instead or inserted
CREATE TRIGGER AMAN10
ON  DATA
AFTER INSERT
AS
BEGIN
  select * from inserted
END

insert into data values
(2,'pragati')
-------------------
CREATE TRIGGER AMAN100
ON  DATA
AFTER delete
AS
BEGIN
  select * from deleted
END

delete data where roll=1
-------------------
select * from data

create trigger info0
on data
after update
as
begin
  select * from inserted
  select * from deleted
end

select * from data
update data set Roll=10000 where roll=2
-------------------
select * from data
insert into data values
(5,'hello')
-------------
create trigger hiiii
on data
instead of insert
as
begin
 print('NOT ALLOW TO INSERT DATA')
end

insert into data values
(50,'GJ')

-----------------
create trigger hiiiiI
on data
instead of DELETE
as
begin
 print('NOT ALLOW TO DELETE DATA')
end

DELETE DATA WHERE ROLL=5

SELECT * FROM DATA
------------------------
alter trigger hiiiiIII
on data
with encryption
instead of UPDATE
as
begin
 print('NOT ALLOW TO UPDATE DATA')
end
sp_helptext hiiiiIII
---------------

SELECT * FROM DATA
UPDATE DATA SET rOLL=4565454 WHERE ROLL=5
-----------
create trigger hiiiiIIIIIDFFD
on data
instead of insert,UPDATE,DELETE
as
begin
 print('NOT ALLOW TO INSERT DATA')
end

Sp_HELPTEXT aman10
----------------------------------------------------TRIGGER ROLLBACK(SELF)
 ALTER TRIGGER OPD
 ON AUDIT_TABLE
 INSTEAD OF INSERT
AS
 BEGIN
 ROLLBACK
 PRINT ('SOMEONE TRIES TO CHANGE YOUR DATA AT: '+ CAST (GETDATE() AS VARCHAR(200)))
 END
 INSERT INTO AUDIT_TABLE VALUES(300,'ANU')
  
  ALTER TRIGGER OUGH
  ON AUDIT_TABLE
  AFTER DELETE 
AS 
BEGIN 
ROLLBACK
 PRINT('SOMEONE TRIES TO CHANGE YOUR QUERY AT: '+ CAST (GETDATE() AS VARCHAR(200)))
END

DELETE AUDIT_TABLE WHERE ROLL=1
INSERT INTO AUDIT_TABLE VALUES (1,'AMAN')
----------------------------------
create trigger one1
on database
for create_table
as
begin
  print('table create suc')
end
---
create trigger one11
on database
for create_table
as
begin
rollback 
  print('not allow to create table this harsh data base')
end
---------------------------
alter trigger alt
on database
for alter_table
as
begin
 rollback
 print('not allow to use alter this database')
end
--------------------------drop
create trigger dp
on database 
for drop_table
as
begin
 rollback transaction
 print('not allow to drop')
end
--------------------rename
create trigger dp1
on database 
for rename
as
begin
 rollback transaction
 print(' allow to rename')
end
--------------------view
create trigger veiw
on database 
for create_view
as
begin
 rollback transaction
 print(' allow to view')
end
-----------------------proc
create trigger dp10
on database 
for create_procedure
as
begin
 rollback transaction
 print(' allow to rename')
end
-------------------function
create trigger dp1121
on database 
for create_function
as
begin
 rollback transaction
 print(' function to ')
end
---------------------------

create view joker as
select * from WORKER_ID


sp_rename 'WORKER_ID','abdul'
drop table WORKER_ID
select * from WORKER_ID
alter table WORKER_ID add info varchar(1000)
alter table WORKER_ID drop column info

---------------------------------------------------------------------------------CURSOR
CREATE TABLE ALPHA
(
SR_NO INT,
NAME VARCHAR(100),
AGE INT,
GENDER VARCHAR(100),
INCOME INT
)
INSERT INTO ALPHA VALUES
(1,'AMAN',25,'MALE',52000),
(2,'AARIF',24,'MALE',51000),
(3,'RITIK',32,'MALE',45000),
(4,'SNEHA',18,'FEMALE',41000),
(5,'SEJAL',23,'FEMALE',23000)
SELECT * FROM ALPHA

DECLARE  AMAN  SCROLL CURSOR FOR SELECT * FROM ALPHA
open aman
 fetch first from aman
 fetch next from aman
 fetch last from aman
 fetch prior  from aman
 fetch absolute 3 from aman
 fetch relative -20 from aman
close aman
deallocate aman
--------------
DECLARE  AMAN  SCROLL CURSOR FOR SELECT * FROM ALPHA order by income desc
open aman
 ---fetch first from aman
 --fetch next from aman
-- fetch last from aman   
 --fetch prior  from aman
 --fetch absolute 3 from aman

close aman
deallocate aman
  

 ---------------------------------------------------------------------------------window funcions
create table must
(
roll int,
name varchar(max),
gender char(100),
income int
)
insert into must values
(1,'manu','female',12000),
(2,'mahi','female',42000),
(3,'aman','male',52000),
(4,'sejal','female',23000),
(5,'ram','male',52000),
(6,'akanksha','female',63000)
 ---------------------------
 select * from must
 select count(gender) over () as Number from must
 select * ,count(gender) over () as Number from must
 select * ,count(gender) over (partition by gender) as Number from must

 select *,
 rank() over(order by income) from must

 select *,
 rank() over(partition by gender order by income) from must
 
 
 select *,
 dense_rank() over(order by income) from must

 
 select *,
 dense_rank() over(partition by gender order by income) from must

 
 select *,
 row_number() over(partition by name order by income) from must

 select *,
 ntile(2) over(order by income) from must

 select *,
 ntile(3) over(order by income) from must

  select *,
 ntile(5) over(order by income) from must
 
 select *,  
 dense_rank() over (order by roll) from must
 


  -----------------------------------------------------------------------cascade
create table amir
(
roll int primary key,
name varchar(max),
gender char(100),
income int
)
insert into amir values
(1,'manu','female',12000),
(2,'mahi','female',42000),
(3,'aman','male',52000),
(4,'sejal','female',23000),
(5,'ram','male',52000),
(6,'akanksha','female',63000)
select * from amir
/*create table shreya
(
sr_no int foreign key references amir(roll)
on delete cascade,
address varchar(100),
cmp_name varchar(100)
)

create table shreya
(
sr_no int foreign key references amir(roll)
on delete set null,
address varchar(100),
cmp_name varchar(100)
)

create table shreya
(
sr_no int  default 6 foreign key references amir(roll)
on delete set default ,
address varchar(100),
cmp_name varchar(100)
)

create table shreya
(
sr_no int foreign key references amir(roll)
on update cascade,
address varchar(100),
cmp_name varchar(100)
)

create table shreya
(
sr_no int foreign key references amir(roll)
on update cascade on delete cascade ,
address varchar(100),
cmp_name varchar(100)
*/
--drop table shreya

insert into shreya values
(1,'ahemdabad','pc sales'),
(2,'suraj nagar','mohan sales'),
(6,'virar','raju sales'),
(4,'nsp(e)','pc sales'),
(5,'ahemdabad','pc sales'),
(2,'virar','raju sales'),
(1,'nsp(e)','pc sales'),
(3,'suraj nagar','mohan sales'),
(4,'nsp(e)','rishi sales')
select * from shreya
select * from amir

delete amir where roll=2
update amir set roll=6000 where roll=6
-----------------------------------------------------------------------------------------GROUPING SETS
CREATE TABLE suman
(
SR_NO INT,
NAME VARCHAR(100),
AGE INT,
GENDER VARCHAR(100),
INCOME INT
)
INSERT INTO suman VALUES
(1,'AMAN',25,'MALE',52000),
(2,'AARIF',24,'MALE',51000),
(3,'RITIK',32,'MALE',45000),
(4,'SNEHA',18,'FEMALE',41000),
(5,'SUJAL',23,'FEMALE',23000)                                                                                                                
INSERT INTO suman VALUES
(6,'SHREYA',24,'FEMALE',42000),
(7,'ANKIT',34,'MALE',63000),
(8,'SHIVANI',22,'FEMALE',41000),
(9,'SHIYA',19,'FEMALE',74000),
(10,'RAGHAV',13,'MALE',95000)
SELECT * FROM suman 
-----------------------GROUPING SET
SELECT NAME,GENDER,SUM(INCOME)  FROM suman GROUP BY NAME,GENDER
UNION ALL
SELECT NULL,GENDER,SUM(INCOME) FROM suman GROUP BY GENDER
UNION ALL
SELECT NAME,NULL,SUM(INCOME) FROM suman GROUP BY NAME


SELECT NAME,GENDER,SUM(INCOME) FROM suman GROUP BY 
GROUPING SETS
(
  (GENDER,nAME),
  (NAME),
  (GENDER),
  ()
)
 use harsh
 ----------------------------------------------------------------SQL TYPE
DDL-CREATE,ALTER,DROP,TRUNCATE,RENAME
DML-INSERT,UPDATE,DELETE,MERGE
DCL-GRANT,REVOKE
TCL-COMMIT,ROLLBACK,SAVE POINT,
DQL-SELECT
----------------------------------------------------------------
SELECT * FROM AMIR
---------------CTE
WITH HI AS
(
 SELECT * FROM amir WHERE GENDER='male'
)
select * from hi
----
WITH HI(a,b,c,d) AS
(
 SELECT * FROM amir WHERE GENDER='male'
)
select * from hi
---
WITH HI(a,b,c,d) AS
(
 SELECT * FROM amir WHERE GENDER='male'
)
select * from hi where b='aman'
----
WITH HI(a,b) AS
(
 SELECT * FROM amir WHERE GENDER='male'
)
select  a from hi 
---insert
WITH HI AS
(
 SELECT * FROM amir WHERE GENDER='male'
)
select * from hi where b='aman'
------
with hi as
(
 select * from amir 
)
insert into hi values(500,'sachin','male',323231)
---
WITH HI(a,b,c,d) AS
(
 SELECT * FROM amir 
)
update hi set a=50000000 where a=23
---------------------------------------------------------------------
create table amazon
(SR_NO INT,
EMP_NAME VARCHAR(100),
EMP_GENDER VARCHAR(6),
INCOME INT)

INSERT INTO AMAZON VALUES
(1,'AMIR','MALE',12000),
(2,'AMAN','MALE',52000),
(3,'SUMITRA','FEMALE',96000),
(4,'RUHI','FEMALE',54000),
(5,'SHIVANI','FEMALE',71000),
(6,'SACHIN','MALE',51000),
(7,'AARAV','MALE',71000),
(8,'SIYA','FEMALE',10600),
(9,'RAVI','MALE',84000),
(10,'USMAN','MALE',54000)
INSERT INTO AMAZON VALUES
(1,'AMIR','MALE',12000),
(2,'AMAN','MALE',52000),
(3,'SUMITRA','FEMALE',96000),
(4,'RUHI','FEMALE',54000),
(5,'SHIVANI','FEMALE',71000),
(6,'SACHIN','MALE',51000),
(7,'AARAV','MALE',71000),
(8,'SIYA','FEMALE',10600),
(9,'RAVI','MALE',84000),
(10,'USMAN','MALE',54000)
SELECT * FROM AMAZON

WITH DuplicateRows AS (
    SELECT SR_NO, EMP_NAME, EMP_GENDER, INCOME,
           ROW_NUMBER() OVER(PARTITION BY SR_NO, EMP_NAME, EMP_GENDER, INCOME ORDER BY SR_NO) AS RowNumber
    FROM amazon
)
DELETE FROM DuplicateRows
WHERE RowNumber > 1
select ascii('a')
select len('ash')
select char(34)
select nchar(35)
select str(37676547)
select charindex ('t','prakriti',2)
select concat('prakriti','vishwarma')
select 'prakriti' + 'vsk'
select concat_ws('-','www','w3school')
select datalength('prakriti')
select format(1643578698,'# #-##-####')
select left('prakriti vsk',3)
select right('prakriti vsk',2)
select substring('how are you',1,3)
select lower('abdul')
select upper('abdul')
select trim('prakriti vishwarma')
select ltrim('prakriti','vishwarma')
select rtrim('prakriti','vishwarma')
select patindex('%r%','prakriti vishwarma')
select patindex('%prakriti%','prakriti vishwarma')
select quotename('prakriti','{-[]-}')
select replace('prakriti vishwarma','a','A')
select replicate('*',10)
select reverse('prakriti vishwarma')
select space(56)
select stuff('prakriti','vishwarma',4,'dr')
---------------------------------------------------------------------try catch
begin try
select ('prakriti',234)
end try
begin catch
select
error_number() as [no],
error_severity() as [severty],
error_state() as [state],
error_procedure() as [proc],
error_line() as [error on line],
error_message() as msg
print('only int')
end catch

