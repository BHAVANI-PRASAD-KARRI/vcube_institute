create database vcube;
use vcube;
create table vcube_student (
     First_Name varchar(50),
     Last_Name varchar(50),
     Contant_Number int,
     Gender char,
     Joining_Date date,
     Ending_Date date,
     Gmail_id varchar(50),
     Area_Location varchar(20),
     Class_Mode varchar(10)
  )
  /* want to change an existing table column's data type from INT to BIGINT. 
  That's a common thing to do when a column might grow beyond INT's limit 
  (INT maxes out around 2.1 billion; BIGINT goes much higher).
  Here is the sytax:
          ALTER TABLE table_name
          ALTER COLUMN column_name BIGINT;
  And it have were as files and software it different
  */
  ALTER TABLE PRASAD
  ALTER COLUMN CONTANT_NUMBER BIGINT
select * from vcube_student;
-- INSERT INTO THE TABLE VALUES IN VCUBE_STUDENT
insert into  vcube_student values('Raju','Kumar',85,'M','2026-08-31','2007-01-18','rajukumar@gmail.com','Hyd','Offline')
INSERT INTO vcube_student VALUES('Divya','Naidu',35,'M','2026-01-27','2002-09-10','divyanaidu0@gmail.com','Hyd','Online')
-- above over 
INSERT INTO vcube_student VALUES('Meena','Mehta',75,'F','2026-04-26','2008-11-05','meenamehta1@gmail.com','Delhi','Offline')
INSERT INTO vcube_student VALUES('Sneha','Chowdary',47,'F','2026-03-03','2004-01-17','snehachowdary2@gmail.com','Hyd','Online')
INSERT INTO vcube_student VALUES('Amit','Patel',36,'F','2026-05-27','2005-11-06','amitpatel3@gmail.com','Chennai','Online')
INSERT INTO vcube_student VALUES('Kartik','Yadav',67,'M','2026-07-13','2007-06-15','kartikyadav5@gmail.com','Pune','Online')
INSERT INTO vcube_student VALUES('Vikram','Sharma',59,'F','2026-08-08','2005-02-11','vikramsharma6@gmail.com','Delhi','Online')
INSERT INTO vcube_student VALUES('Sowmya','Singh',52,'F','2026-07-08','2004-12-16','sowmyasingh7@gmail.com','Hyd','Offline')
INSERT INTO vcube_student VALUES('Sneha','Yadav',48,'F','2026-07-14','2007-03-18','snehayadav8@gmail.com','Warangal','Online')
INSERT INTO vcube_student VALUES('Bhavya','Reddy',88,'M','2026-06-11','2005-08-27','bhavyareddy9@gmail.com','Bangalore','Online')
INSERT INTO vcube_student VALUES('Ramya','Chowdary',49,'M','2026-01-27','2006-11-13','ramyachowdary10@gmail.com','Coimbatore','Offline')
INSERT INTO vcube_student VALUES('Vikram','Chowdary',35,'F','2026-04-23','2006-01-09','vikramchowdary11@gmail.com','Pune','Online')
INSERT INTO vcube_student VALUES('Sudhakar','Sharma',79,'M','2026-02-03','2002-03-27','sudhakarsharma12@gmail.com','Kochi','Online')
INSERT INTO vcube_student VALUES('Naveen','Verma',81,'M','2026-03-05','2003-06-28','naveenverma14@gmail.com','Chennai','Online')
INSERT INTO vcube_student VALUES('Anita','Rao',72,'M','2026-08-10','2006-04-10','anitarao16@gmail.com','Bangalore','Offline')
INSERT INTO vcube_student VALUES('Rahul','Sharma',41,'F','2026-07-03','2002-01-23','rahulsharma17@gmail.com','Bangalore','Offline')
INSERT INTO vcube_student VALUES('Deepa','Nair',99,'F','2026-04-23','2008-07-21','deepanair18@gmail.com','Chennai','Offline')
INSERT INTO vcube_student VALUES('Divya','Pillai',76,'M','2026-02-13','2004-11-19','divyapillai19@gmail.com','Vizag','Offline')
INSERT INTO vcube_student VALUES('Suresh','Menon',36,'M','2026-02-02','2002-09-02','sureshmenon21@gmail.com','Hyd','Online')
INSERT INTO vcube_student VALUES('Nikhila','Joshi',81,'M','2026-04-23','2002-12-17','nikhilajoshi22@gmail.com','Kochi','Offline')
INSERT INTO vcube_student VALUES('Meena','Nair',51,'M','2026-02-22','2003-04-06','meenanair23@gmail.com','Bangalore','Offline')
INSERT INTO vcube_student VALUES('Deepa','Bose',41,'F','2026-05-23','2002-06-20','deepabose24@gmail.com','Chennai','Offline')
INSERT INTO vcube_student VALUES('Vikram','Patel',99,'M','2026-01-23','2002-01-18','vikrampatel26@gmail.com','Coimbatore','Offline')
INSERT INTO vcube_student VALUES('Manoj','Singh',65,'M','2026-01-27','2002-07-14','manojsingh27@gmail.com','Vizag','Online')
INSERT INTO vcube_student VALUES('Sandeep','Kumar',85,'F','2026-01-25','2007-10-12','sandeepkumar28@gmail.com','Vizag','Offline')
INSERT INTO vcube_student VALUES('Ashok','Kumar',56,'F','2026-01-19','2002-09-06','ashokkumar29@gmail.com','Mumbai','Online')
INSERT INTO vcube_student VALUES('Naveen','Joshi',50,'F','2026-07-22','2005-11-14','naveenjoshi30@gmail.com','Chennai','Online')
INSERT INTO vcube_student VALUES('Vikram','Patel',72,'M','2026-07-24','2004-04-09','vikrampatel31@gmail.com','Warangal','Offline')
INSERT INTO vcube_student VALUES('Priya','Iyer',61,'F','2026-01-15','2002-01-26','priyaiyer32@gmail.com','Coimbatore','Offline')
INSERT INTO vcube_student VALUES('Bhavya','Naidu',42,'F','2026-05-06','2005-09-01','bhavyanaidu33@gmail.com','Mumbai','Offline')
INSERT INTO vcube_student VALUES('Priya','Chowdary',45,'M','2026-03-14','2007-02-17','priyachowdary34@gmail.com','Coimbatore','Offline')
INSERT INTO vcube_student VALUES('Ramya','Pillai',97,'M','2026-03-05','2004-10-23','ramyapillai35@gmail.com','Chennai','Offline')
INSERT INTO vcube_student VALUES('Kartik','Sharma',76,'M','2026-02-27','2007-05-10','kartiksharma36@gmail.com','Pune','Offline')
INSERT INTO vcube_student VALUES('Ashok','Chowdary',55,'M','2026-07-10','2003-08-09','ashokchowdary37@gmail.com','Kochi','Online')
INSERT INTO vcube_student VALUES('Ashok','Patel',50,'F','2026-07-11','2005-09-10','ashokpatel38@gmail.com','Kochi','Online')
INSERT INTO vcube_student VALUES('Naveen','Chowdary',70,'M','2026-02-22','2008-09-26','naveenchowdary39@gmail.com','Delhi','Online')
INSERT INTO vcube_student VALUES('Ravi','Bose',73,'M','2026-07-08','2005-01-17','ravibose40@gmail.com','Mumbai','Offline')
INSERT INTO vcube_student VALUES('Sudhakar','Sharma',93,'F','2026-07-27','2005-04-27','sudhakarsharma41@gmail.com','Vizag','Online')
INSERT INTO vcube_student VALUES('Priya','Singh',79,'F','2026-03-16','2003-10-28','priyasingh56@gmail.com','Delhi','Online')
INSERT INTO vcube_student VALUES('Sowmya','Iyer',78,'M','2026-05-18','2003-04-12','sowmyaiyer57@gmail.com','Mumbai','Online')
INSERT INTO vcube_student VALUES('Sowmya','Verma',71,'M','2026-01-13','2002-05-18','sowmyaverma58@gmail.com','Warangal','Online')
INSERT INTO vcube_student VALUES('Swathi','Patel',92,'F','2026-07-18','2006-07-26','swathipatel59@gmail.com','Delhi','Online')
INSERT INTO vcube_student VALUES('Ramya','Nair',43,'M','2026-06-03','2002-08-24','ramyanair60@gmail.com','Warangal','Online')
INSERT INTO vcube_student VALUES('Sneha','Menon',60,'M','2026-01-16','2005-11-28','snehamenon61@gmail.com','Delhi','Online')
INSERT INTO vcube_student VALUES('Arjun','Patel',63,'M','2026-04-08','2006-06-25','arjunpatel62@gmail.com','Coimbatore','Offline')
INSERT INTO vcube_student VALUES('Meena','Nair',67,'M','2026-07-06','2006-04-03','meenanair63@gmail.com','Chennai','Offline')
INSERT INTO vcube_student VALUES('Praveen','Mehta',59,'F','2026-02-23','2004-11-15','praveenmehta64@gmail.com','Coimbatore','Offline')
INSERT INTO vcube_student VALUES('Sneha','Patel',99,'F','2026-05-08','2008-02-25','snehapatel65@gmail.com','Vizag','Offline')
INSERT INTO vcube_student VALUES('Deepa','Chowdary',87,'M','2026-08-15','2007-02-08','deepachowdary66@gmail.com','Chennai','Online')
INSERT INTO vcube_student VALUES('Meena','Das',84,'F','2026-01-22','2007-03-25','meenadas67@gmail.com','Hyd','Online')
INSERT INTO vcube_student VALUES('Naveen','Iyer',49,'F','2026-08-14','2006-05-08','naveeniyer191@gmail.com','Pune','Offline')
INSERT INTO vcube_student VALUES('Kartik','Nair',40,'F','2026-04-20','2003-03-04','kartiknair192@gmail.com','Mumbai','Offline')
INSERT INTO vcube_student VALUES('Anjali','Pillai',96,'M','2026-06-13','2008-11-01','anjalipillai193@gmail.com','Chennai','Online')
INSERT INTO vcube_student VALUES('Nikhila','Kumar',97,'F','2026-03-25','2002-01-05','nikhilakumar194@gmail.com','Bangalore','Offline')
INSERT INTO vcube_student VALUES('Ramya','Iyer',94,'F','2026-02-11','2007-06-23','ramyaiyer195@gmail.com','Kochi','Online')
INSERT INTO vcube_student VALUES('Anjali','Iyer',63,'F','2026-06-20','2006-12-16','anjaliiyer196@gmail.com','Hyd','Online')
INSERT INTO vcube_student VALUES('Manoj','Sharma',84,'F','2026-05-22','2005-07-12','manojsharma197@gmail.com','Coimbatore','Offline')
INSERT INTO vcube_student VALUES('Vikram','Nair',69,'F','2026-01-13','2005-05-13','vikramnair198@gmail.com','Warangal','Online')
INSERT INTO vcube_student VALUES('Vijay','Sharma',83,'F','2026-06-11','2006-11-11','vijaysharma199@gmail.com','Delhi','Offline')
INSERT INTO vcube_student VALUES('Ramya','Prasad',96,'F','2026-07-24','2003-07-04','ramyaprasad200@gmail.com','Mumbai','Online')
INSERT INTO vcube_student VALUES('Priya','Sharma',61,'F','2026-04-20','2007-02-24','priyasharma201@gmail.com','Mumbai','Offline')
INSERT INTO vcube_student VALUES('Meena','Prasad',66,'M','2026-05-01','2003-06-15','meenaprasad202@gmail.com','Bangalore','Online')
INSERT INTO vcube_student VALUES('Anjali','Joshi',71,'F','2026-08-04','2007-12-15','anjalijoshi203@gmail.com','Pune','Offline')
--Here Next
INSERT INTO vcube_student VALUES('Amit','Patel',78,'M','2026-08-25','2006-05-24','amitpatel437@gmail.com','Delhi','Online')
INSERT INTO vcube_student VALUES('Anjali','Iyer',72,'F','2026-02-13','2006-01-13','anjaliiyer438@gmail.com','Bangalore','Online')
INSERT INTO vcube_student VALUES('Pooja','Gupta',41,'M','2026-08-27','2007-02-19','poojagupta439@gmail.com','Coimbatore','Offline')
INSERT INTO vcube_student VALUES('Vikram','Mehta',66,'M','2026-03-26','2007-12-27','vikrammehta440@gmail.com','Coimbatore','Offline')
INSERT INTO vcube_student VALUES('Sandeep','Menon',60,'F','2026-06-24','2007-06-17','sandeepmenon441@gmail.com','Warangal','Online')
INSERT INTO vcube_student VALUES('Manoj','Gupta',80,'F','2026-05-11','2003-10-12','manojgupta442@gmail.com','Bangalore','Online')
INSERT INTO vcube_student VALUES('Kiran','Mehta',88,'M','2026-05-25','2008-05-05','kiranmehta443@gmail.com','Chennai','Online')
INSERT INTO vcube_student VALUES('Sowmya','Pillai',65,'M','2026-07-25','2006-02-20','sowmyapillai444@gmail.com','Warangal','Offline')
INSERT INTO vcube_student VALUES('Sandeep','Mehta',50,'M','2026-02-07','2006-05-21','sandeepmehta445@gmail.com','Hyd','Online')
INSERT INTO vcube_student VALUES('Ramya','Pillai',51,'M','2026-07-10','2006-02-23','ramyapillai446@gmail.com','Coimbatore','Online')
INSERT INTO vcube_student VALUES('Lakshmi','Pillai',43,'F','2026-06-23','2002-07-27','lakshmipillai447@gmail.com','Vizag','Offline')
INSERT INTO vcube_student VALUES('Praveen','Sharma',61,'F','2026-08-09','2004-04-02','praveensharma448@gmail.com','Warangal','Online')
INSERT INTO vcube_student VALUES('Ravi','Sharma',74,'M','2026-08-15','2002-07-13','ravisharma449@gmail.com','Chennai','Offline')
INSERT INTO vcube_student VALUES('Priya','Bose',92,'M','2026-07-07','2007-12-22','priyabose450@gmail.com','Chennai','Online')
INSERT INTO vcube_student VALUES('Swathi','Nair',35,'F','2026-01-23','2008-02-18','swathinair451@gmail.com','Warangal','Offline')
INSERT INTO vcube_student VALUES('Sandeep','Yadav',81,'M','2026-04-27','2004-03-01','sandeepyadav452@gmail.com','Delhi','Online')
INSERT INTO vcube_student VALUES('Meena','Singh',95,'F','2026-08-27','2002-11-24','meenasingh453@gmail.com','Warangal','Online')
INSERT INTO vcube_student VALUES('Sowmya','Yadav',76,'F','2026-04-09','2006-09-04','sowmyayadav454@gmail.com','Kochi','Online')
INSERT INTO vcube_student VALUES('Bhavya','Das',47,'M','2026-02-17','2007-05-21','bhavyadas455@gmail.com','Kochi','Offline')
INSERT INTO vcube_student VALUES('Nikhila','Rao',36,'F','2026-08-13','2008-02-25','nikhilarao456@gmail.com','Chennai','Online')
INSERT INTO vcube_student VALUES('Sneha','Singh',40,'F','2026-03-14','2002-11-16','snehasingh457@gmail.com','Mumbai','Offline')
INSERT INTO vcube_student VALUES('Raju','Yadav',71,'M','2026-01-24','2007-01-09','rajuyadav458@gmail.com','Mumbai','Offline')
INSERT INTO vcube_student VALUES('Meena','Rao',70,'F','2026-05-03','2008-01-24','meenarao459@gmail.com','Bangalore','Offline')
INSERT INTO vcube_student VALUES('Pooja','Naidu',42,'F','2026-01-26','2005-01-24','poojanaidu460@gmail.com','Vizag','Offline')
INSERT INTO vcube_student VALUES('Pooja','Sharma',79,'M','2026-01-09','2005-04-25','poojasharma461@gmail.com','Kochi','Online')
INSERT INTO vcube_student VALUES('Naveen','Gupta',41,'M','2026-07-06','2003-08-13','naveengupta462@gmail.com','Pune','Online')
INSERT INTO vcube_student VALUES('Ravi','Reddy',85,'F','2026-01-23','2008-09-10','ravireddy463@gmail.com','Pune','Offline')
INSERT INTO vcube_student VALUES('Sowmya','Sharma',60,'M','2026-05-11','2008-10-16','sowmyasharma464@gmail.com','Vizag','Offline')
INSERT INTO vcube_student VALUES('Sowmya','Menon',93,'M','2026-07-07','2006-08-27','sowmyamenon465@gmail.com','Kochi','Online')
INSERT INTO vcube_student VALUES('Manoj','Gupta',44,'F','2026-07-17','2004-07-23','manojgupta466@gmail.com','Coimbatore','Online')
INSERT INTO vcube_student VALUES('Ashok','Pillai',59,'M','2026-03-10','2005-03-04','ashokpillai467@gmail.com','Vizag','Offline')
INSERT INTO vcube_student VALUES('Ravi','Iyer',94,'M','2026-07-24','2005-10-17','raviiyer468@gmail.com','Hyd','Online')
INSERT INTO vcube_student VALUES('Anita','Gupta',87,'F','2026-01-07','2008-02-24','anitagupta469@gmail.com','Coimbatore','Online')
INSERT INTO vcube_student VALUES('Nikhila','Joshi',35,'F','2026-04-26','2007-02-06','nikhilajoshi470@gmail.com','Pune','Online')
INSERT INTO vcube_student VALUES('Manoj','Chowdary',67,'M','2026-08-02','2006-06-19','manojchowdary471@gmail.com','Mumbai','Online')
INSERT INTO vcube_student VALUES('Meena','Joshi',92,'F','2026-01-26','2008-04-04','meenajoshi472@gmail.com','Warangal','Offline')
INSERT INTO vcube_student VALUES('Nikhila','Singh',49,'F','2026-05-15','2003-10-10','nikhilasingh473@gmail.com','Delhi','Online')
INSERT INTO vcube_student VALUES('Bhavya','Yadav',38,'M','2026-04-23','2008-05-06','bhavyayadav474@gmail.com','Pune','Online')
INSERT INTO vcube_student VALUES('Sowmya','Kumar',73,'F','2026-01-02','2008-05-26','sowmyakumar475@gmail.com','Pune','Offline')
INSERT INTO vcube_student VALUES('Manoj','Chowdary',96,'F','2026-01-09','2007-06-08','manojchowdary476@gmail.com','Chennai','Online')
INSERT INTO vcube_student VALUES('Naveen','Gupta',43,'M','2026-08-07','2006-03-06','naveengupta477@gmail.com','Delhi','Online')
INSERT INTO vcube_student VALUES('Priya','Gupta',62,'M','2026-01-15','2003-02-10','priyagupta478@gmail.com','Mumbai','Offline')
INSERT INTO vcube_student VALUES('Sudhakar','Joshi',76,'M','2026-02-23','2005-04-01','sudhakarjoshi479@gmail.com','Pune','Online')
INSERT INTO vcube_student VALUES('Swathi','Menon',42,'F','2026-03-24','2008-10-06','swathimenon480@gmail.com','Bangalore','Online')
INSERT INTO vcube_student VALUES('Nikhila','Pillai',52,'F','2026-07-16','2007-05-28','nikhilapillai481@gmail.com','Mumbai','Online')
INSERT INTO vcube_student VALUES('Rahul','Das',35,'M','2026-06-14','2003-02-20','rahuldas482@gmail.com','Vizag','Offline')
INSERT INTO vcube_student VALUES('Sandeep','Naidu',75,'M','2026-04-20','2008-07-10','sandeepnaidu483@gmail.com','Delhi','Offline')
INSERT INTO vcube_student VALUES('Anita','Joshi',99,'M','2026-07-25','2002-02-07','anitajoshi484@gmail.com','Warangal','Online')
INSERT INTO vcube_student VALUES('Priya','Chowdary',47,'M','2026-08-03','2008-11-18','priyachowdary485@gmail.com','Pune','Online')
INSERT INTO vcube_student VALUES('Divya','Chowdary',93,'F','2026-07-17','2002-02-12','divyachowdary486@gmail.com','Bangalore','Online')
INSERT INTO vcube_student VALUES('Naveen','Iyer',69,'M','2026-07-27','2008-04-20','naveeniyer487@gmail.com','Pune','Offline')
INSERT INTO vcube_student VALUES('Suresh','Menon',61,'F','2026-03-12','2007-02-23','sureshmenon488@gmail.com','Hyd','Offline')
INSERT INTO vcube_student VALUES('Divya','Joshi',59,'M','2026-06-22','2005-05-03','divyajoshi489@gmail.com','Chennai','Online')
INSERT INTO vcube_student VALUES('Lakshmi','Singh',78,'M','2026-05-28','2004-12-25','lakshmisingh490@gmail.com','Vizag','Online')
INSERT INTO vcube_student VALUES('Manoj','Joshi',99,'M','2026-01-25','2005-10-19','manojjoshi491@gmail.com','Pune','Offline')
INSERT INTO vcube_student VALUES('Anita','Iyer',63,'M','2026-02-16','2008-01-11','anitaiyer492@gmail.com','Kochi','Online')
INSERT INTO vcube_student VALUES('Rahul','Menon',72,'F','2026-07-15','2005-11-04','rahulmenon493@gmail.com','Bangalore','Online')
INSERT INTO vcube_student VALUES('Naveen','Verma',83,'M','2026-08-09','2006-06-22','naveenverma494@gmail.com','Mumbai','Online')
INSERT INTO vcube_student VALUES('Raju','Iyer',36,'M','2026-06-22','2006-10-07','rajuiyer495@gmail.com','Warangal','Offline')
INSERT INTO vcube_student VALUES('Kiran','Rao',61,'F','2026-02-14','2008-02-23','kiranrao496@gmail.com','Kochi','Online')
INSERT INTO vcube_student VALUES('Sowmya','Patel',86,'M','2026-06-13','2006-11-05','sowmyapatel497@gmail.com','Vizag','Online')
INSERT INTO vcube_student VALUES('Vikram','Sharma',58,'M','2026-04-09','2002-06-20','vikramsharma499@gmail.com','Warangal','Offline')
 
--Drop table
--DROP TABLE_NAME
--DROP Classes
--TRUNCATE TABLE   
--select*from vcube_student
--where Joining_Date '2026-02-26'
create table prasad (
     First_Name varchar(50),
     Last_Name varchar(50),
     Contant_Number BIGINT,
     Gender char,
     Joining_Date date,
     Ending_Date date,
     Gmail_id varchar(50),
     Area_Location varchar(20),
    Class_Mode varchar(10)
  )
-- If the table contant have n number of column name that have to match each and every thing
drop table prasad
  select*from prasad
 
-- If copying the table with other table using sql sytax
INSERT INTO PRASAD SELECT*FROM vcube_student
TRUNCATE TABLE  PRASAD

--DONE WITH THE DROP AND TRUNCATE TABLE 
--31/08/2026 MONDAY CLASS
SELECT TOP 10* FROM PRASAD
SELECT DISTINCT AREA_LOCATION FROM PRASAD
SELECT FIRST_NAME ,JOINING_DATE, AREA_LOCATION ,CLASS_MODE FROM PRASAD
--done!
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--01/09/2026 TUESDAY CLASS
/*  The point in this day is "WHERE CLASSS" and the different funtion are the methiods
      comparision opertors :
       =,<,>,<>,!=,<=,>=,
     To filter multiple value :
       IN,OR,AND,BETWEEN
     Willcard Filter :
      LIKE, NOT LIKE
     Null value Filter :
      IS NULL ,IS NOT NULL
*/

SELECT * FROM PRASAD WHERE AREA_LOCATION = 'HYD' --Use the where clause
SELECT * FROM PRASAD WHERE JOINING_DATE BETWEEN '2026-01-18' AND '2026-02-18'
SELECT * FROM PRASAD WHERE CONTANT_NUMBER >= 47
SELECT * FROM PRASAD WHERE CONTANT_NUMBER <= 47
SELECT * FROM PRASAD WHERE CONTANT_NUMBER = 60
SELECT * FROM PRASAD WHERE gender <>'M' --The symbols of "<>" and "!=" both are same 
SELECT * FROM PRASAD WHERE gender !='f'
select last_naME ,CONtant_number, genDER ,CLAss_mode FROM PRASAD WHERE CLASS_MODE LIKE 'ONLINE'
SELECT * FROM PRASAD WHERE fIRST_NAME LIKE 'A%'
SELECT * FROM prasad where  FIRST_NAME NOT LIKE 'R%'
SELECT * FROM PRASAD WHERE  CONTANT_NUMBER IS  NULL

--done!
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--02/09/2026 WENDESDAY CLASS
/* Here the point of the class is you to "UPDATE" and "DELECT" QUERES are throught 
   SYNTAX UPDATE
   UPDATE table_name
   SET column1 = value1, column2 = value2, ...
   WHERE condition;


   This updates every row in the prasad table (no WHERE clause) and sets contact_number to 547  for all of them
   — the old values will be lost unless you capture them before or during the update.
*/
 update prasad set contant_number =547

 /*UPDATE PRASAD 
 SET CONTANT_NUMBER = 1
 WHERE CLASS_MODE = 'ONLINE'

 "That's right — if the UPDATE already ran without OUTPUT and you have no backup, the previous values are gone. 
 There's no query that can pull them back from the table as it stands now."
 */
 UPDATE PRASAD 
 SET CONTANT_NUMBER = 85198
 WHERE CLASS_MODE = 'OFFLINE'

 SELECT*FROM PRASAD 
 SELECT*FROM PRASAD WHERE LAST_NAME ='IYER'
 --BEGIN TRANSACTION ;IT USE FOR RETRIVE SAME VALUE BACK BY USING #ROLLBACK#
 UPDATE PRASAD SET CONTANT_NUMBER =2 WHERE GENDER = 'F'
 UPDATE PRASAD SET CONTANT_NUMBER =1  WHERE FIRST_NAME ='RAJU'
 
 UPDATE PRASAD 
 SET CLASS_MODE = 'OFFLINE'
 WHERE CLASS_MODE ='ONLINE'

--KNOW TIME TO USE THE CASE IN UPDATE
--BEGIN TRANSACTION 
UPDATE PRASAD SET CONTANT_NUMBER = (
                   CASE 
                       WHEN CONTANT_NUMBER > 90 THEN '900'
                       WHEN CONTANT_NUMBER >=20 AND CONTANT_NUMBER <= 50 THEN '50'
                       ELSE '10'
                   END
)
BEGIN TRANSACTION
ALTER TABLE PRASAD 
ALTER COLUMN GENDER CHAR(10)

SELECT * FROM PRASAD

BEGIN TRANSACTION
UPDATE PRASAD SET GENDER =(
       CASE
          WHEN GENDER = 'M'  THEN 'MALE'
          WHEN GENDER = 'F' THEN 'FEMALE'
      END
      )
--ROLLBACK                     
----------------------------------------
 /* DELECT 
 DELETE syntax in SQL Server:

Basic syntax:
DELETE FROM table_name
WHERE condition;
*/
DELETE FROM PRASAD WHERE FIRST_NAME LIKE '%RAJU%'
--Here we can delete the columns and rows using this "DELETE SYNTAX"
DELETE FROM PRaSad
--DML (Data Manipulation Language) statement DELETE "ENTER TABLE"
--done!

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--03/09/2026 THURSDAY CLASS
/* DCL(DATA CONTROL LANGUAGE )
 GRANT : TO GIVE THE PERMISSONS FOR SPECIFIC PREVILAGES ON OBJECTS "TO" A USER.
 REVOKE : TO REVOME THE PERMISSONS FOR SPECIFIC PREVILAGES ON OBJECTS "FROM" A USER.

STEP 1 :
CREATE LOGIN IN SQL SERVER
SYNTAX:
CREATE LOGIN LOGIN_NAME WITH PASSWORD = PASSWORD 

EXAMPLE : CREATE LOGIN PRASAD WITH PASSWORD = '@1550'

STEP 2 :
CREATE DATABASE USER FOR THE LOGIN
SYNTAX:
CREATE USER USE_NAME
FOR LOGIN LOGIN_NAME

EXAMPLE : CREATE USER PRASAD
          FOR LOGIN PRASAD

GRANT:
SYNTAX:
GRANT SELECT/UPDATE /DELETE/INSERT ON OBJECT_NAME TO USER_NAME

EXAMPLE: GRANT SELECT ON PRASAD TO PRASAD
         GRANT UPDATE,DELETE,INSERT ON PRASAD TO PRASAD

REVOKE:
SYNTAX:
REVOKE SELECT/UPDATE /DELETE/INSERT ON OBJECT_NAME FROM USER_NAME

EXAMPLE: REVOKE SELECT ON PRASAD FROM  PRASAD
         REVOKE UPDATE,DELETE, SELECT ON PRASAD FROM PRASAD

*/
/*  TCL (TRANSACTION CONTROL LANGUAGE )
 COMMIT     :TO PERMINANTLY SAVA THE COMPLETED TRANSACTIONS
 ROLLBACK   :TO  ROLLBACK THE UN SAVED TRASACTIONS 
 SAVA POINT :TO SAVE THE TRANSACTIONS IN THE MIDDLE OF THE  TRANSACTIONS
*/
/* ACID (ATOMICITY , CONSISTENCY, ISOLATION, DURABILITY)

 COMMIT :
 SYNTAX: 
           BEGIN TRANSACTION
               SQL STATEMENT
           COMMIT TRANSACTION
--------------------------------------------
 ROLLBACK:
 SYNTAX: 
          BEGIN TRANSACTION
               SQL STATEMENT
          ROLLBACK TRANSACTION
--------------------------------------------
SAVE POINT:
SYNTAX:
        BEGIN TRANSACTION
               SQL STATEMENT
               SAVE TRANSACTION NAME (SAVE POINT)
               SQL STATEMENT
        ROLLBACK TRANSACTION SAVE POINT
---------------------------------------------
*/
BEGIN TRANSACTION;

UPDATE prasad
SET contant_number = 54700
WHERE first_name =('Raju');

COMMIT;  
--The point 
BEGIN TRANSACTION

UPDATE PRASAD 
SET CONTANT_NUMBER = 544
WHERE FIRST_NAME = 'RAJU'

ROLLBACK
SELECT name FROM sys.databases;
--To see all databases in SQL Server, the simplest and most common way is:

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--04/09/2026 FRIDAY CLASS
/* THERE IS NO CLASS "SELF INTRODUTION" TAKE SO FAR
 USE TEMPDB
*/

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--07/09/2026 MONDAY CLASS
/*
commite , rollback , update , save point , aggergate functions 
Aggergate funtions 
 1.sum
 2.count
 3.avg 
 4.min
 5.max

*/
select* from prasad
-- commit,rollback,update,save AT one place 
 begin transaction 
 update prasad set contant_number = '450'where first_name = 'raju'
 update prasad set area_location = 'HYDERABAD' where area_location ='Hyd'
 --save 
 --commit
 rollback

USE vcube
create table lochan (
 Empolyee_id int,
 Full_name varchar(20),
 Monthly_salary int
)
INSERT INTO lochan VALUES (1, 'lochan kuppala', 45000);
INSERT INTO lochan VALUES (2, 'Sneha Reddy', 52000);
INSERT INTO lochan VALUES (3, 'Arjun Rao', 38000);
INSERT INTO lochan VALUES (4, 'Priya Sharma', 61000);
INSERT INTO lochan VALUES (5, 'Vikram Singh', 47000);
INSERT INTO lochan VALUES (6, 'Anjali Verma', 55000);
INSERT INTO lochan VALUES (7, 'Suresh Babu', 42000);
INSERT INTO lochan VALUES (8, 'Kavya Nair', 58000);
INSERT INTO lochan VALUES (9, 'Rahul Gupta', 39000);
INSERT INTO lochan VALUES (10, 'Divya Menon', 63000);
INSERT INTO lochan VALUES (11, 'Karthik Iyer', 46000);
INSERT INTO lochan VALUES (12, 'Pooja Patel', 51000);
INSERT INTO lochan VALUES (13, 'Manoj Kumar', 37000);
INSERT INTO lochan VALUES (14, 'Swathi Rao', 59000);
INSERT INTO lochan VALUES (15, 'Deepak Chandra', 44000);
INSERT INTO lochan VALUES (16, 'Meera Pillai', 60000);
INSERT INTO lochan VALUES (17, 'Ajay Mehta', 41000);
INSERT INTO lochan VALUES (18, 'Neha Joshi', 53000);
INSERT INTO lochan VALUES (19, 'Sandeep Reddy', 48000);
INSERT INTO lochan VALUES (20, 'Lakshmi Priya', 57000);
INSERT INTO lochan VALUES (21, 'Vivek Anand', 43000);
INSERT INTO lochan VALUES (22, 'Shalini Rao', 62000);
INSERT INTO lochan VALUES (23, 'Naveen Kumar', 40000);
INSERT INTO lochan VALUES (24, 'Ritu Agarwal', 56000);
INSERT INTO lochan VALUES (25, 'Harish Chandra', 45000);
INSERT INTO lochan VALUES (26, 'Sunita Devi', 50000);
INSERT INTO lochan VALUES (27, 'Prakash Rao', 38000);
INSERT INTO lochan VALUES (28, 'Anita Kumari', 64000);
INSERT INTO lochan VALUES (29, 'Ganesh Pillai', 42000);
INSERT INTO lochan VALUES (30, 'Vandana Sharma', 54000);
INSERT INTO lochan VALUES (31, 'Ramesh Babu', 46000);
INSERT INTO lochan VALUES (32, 'Sowmya Iyer', 59000);
INSERT INTO lochan VALUES (33, 'Kiran Kumar', 39000);
INSERT INTO lochan VALUES (34, 'Radha Krishnan', 61000);
INSERT INTO lochan VALUES (35, 'Ashok Verma', 44000);
INSERT INTO lochan VALUES (36, 'Deepa Nair', 55000);
INSERT INTO lochan VALUES (37, 'Mahesh Reddy', 41000);
INSERT INTO lochan VALUES (38, 'Geetha Menon', 58000);
INSERT INTO lochan VALUES (39, 'Srinivas Rao', 37000);
INSERT INTO lochan VALUES (40, 'Padma Priya', 63000);
INSERT INTO lochan VALUES (41, 'Vinod Kumar', 47000);
INSERT INTO lochan VALUES (42, 'Lavanya Rao', 52000);
INSERT INTO lochan VALUES (43, 'Arun Prasad', 43000);
INSERT INTO lochan VALUES (44, 'Nandini Gupta', 60000);
INSERT INTO lochan VALUES (45, 'Sathish Kumar', 40000);
INSERT INTO lochan VALUES (46, 'Preethi Shah', 57000);
INSERT INTO lochan VALUES (47, 'Girish Nayak', 45000);
INSERT INTO lochan VALUES (48, 'Anusha Reddy', 62000);
INSERT INTO lochan VALUES (49, 'Rajesh Khanna', 38000);
INSERT INTO lochan VALUES (50, 'Bhavani Prasad', 65000);

select * from lochan
--------WHEN THE NULL VALUES ARE NOT PRESENT SO IT GIVE THE NO OF ROWS IN THE TABLE 
------COUNT(*) → counts all rows, NULLs included.
select 
avg (monthly_salary) as Average_salary,
min (monthly_salary) as Minumam_salary,
max (monthly_salary) as Maxumam_salary ,
count(*) as Employee_count,
sum (empolyee_id) as Total
from lochan
----IF WE ADD THE NULL VALUES IN THE TABLE 
INSERT INTO lochan VALUES ( NULL,'Bd', 6000);
select 
avg (monthly_salary) as Average_salary,
min (monthly_salary) as Minumam_salary,
max (monthly_salary) as Maxumam_salary ,
count(*) AS NO_OF_EMPLOYEE,
sum (empolyee_id) as Total
from lochan
/*NEXT CLASS ABOUT THE 
WHERE , GROUP BY , HAVING , ORDER BY
*/