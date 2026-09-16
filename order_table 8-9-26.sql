--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--08/09/2026 TUESDAY CLASS
/* 
1."GROUP BY "— explained simply

Think of GROUP BY like sorting a pile of mixed candies into separate bowls by color.
SQL takes your rows and bundles them into groups based on a column you specify 
— then you usually run an aggregate function (COUNT, SUM, AVG, etc.) on each bundle.

2."ORDER BY "— explained simply

ORDER BY just arranges your final result 
— like sorting a list of names A-to-Z, or sorting exam scores highest-to-lowest.
ASC = ascending (low → high, A → Z) — this is the default if you don't specify.
DESC = descending (high → low, Z → A).

*/
use vcube
select * from orders

select SHIP_MODE ,count(*) as ROW_ID1
from orders 
group by SHIP_mODE 
order by ROW_ID1 asc

/*select row_id, count(*) as order_count
from orders 
group by row_id
order by row_id asc
*/

/*DISTINCT
Used to remove duplicate rows from a query result, keeping only unique values.*/
select row_id from orders
select DISTINCT ship_mode from Orders
select distinct order_id from orders

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--09/09/2026 WEDNESDAY CLASS
/* "HAVAING"
In HAVING clause is used to filter groups after GROUP BY.

SELECT column_name, aggregate_function(column)
FROM table_name
GROUP BY column_name
HAVING condition;
*/
select * from orders
select customer_id ,customer_name,count(*) as Total_no_costomers
from orders 
--where YEAR(Order_Date) = 2023
group by customer_id ,customer_name--must present the "group by" clause before the "having" clause
having count(*)>10
---------------------------------------
SELECT customer_id,
       customer_name,
       COUNT(*) AS Total_no_orders
FROM orders
GROUP BY customer_id, customer_name
HAVING COUNT(*) > 10;
---------------------------------------
--  1Q. DISPLAY SUB_CATEGEORY WISE NO OF ORDERS GENERATED IN SOUTH REGION
  ANSWER:
        SELECT [Sub_Category] ,COUNT(*) AS NO_OF_ORDERS
        FROM ORDERS
        WHERE Region = 'EAST'
        GROUP BY [Sub_Category]
  
  /*2Q. TO DISPLAY PRODUCT WISE TOTAL QUANTITY SOLD BASED ON BELOW CONDITION
       i  .category = technology
       ii .year = 2024
       iii.get the total quality grater than 20
       iv .excluding order the total quality in decending order 
   */    
  ANSWER:
         SELECT[Product_Name] ,SUM([Quantity]) AS TOTAL_QUANTITY
         FROM Orders
         WHERE [Category] = 'TECHNOLOGY' AND YEAR([Order_Date])=2024
         GROUP BY [Product_Name] 
         HAVING SUM([Quantity]) > 20
         ORDER BY TOTAL_QUANTITY DESC

         SELECT [Category]  FROM ORDERS
       
/* 3Q. TO DISPLAY TOP 25 CUSTOMERS BASED ON NO OF ORDERS
      i  .SEGMENT = CONSUMER
      ii .SHIPMODE = FIRST CLASS
      iii.EXCLUDING ART SUB CATEGORY
*/  
ANSWER:
       SELECT TOP 25 [Customer_Name],[Sub_Category]
       FROM ORDERS
       WHERE [Segment] = 'CONSUMER' AND [Ship_Mode] = 'FIRST CLASS'
       ORDER BY [Sub_Category] DESC
-----------------------------------------------------------------------
       SELECT TOP 25 [Customer_Name],COUNT(*) AS NO_OF_ORDERS
       FROM ORDERS
       WHERE [Segment] = 'CONSUMER' AND [Ship_Mode] = 'FIRST CLASS'
       AND [Sub_Category] != 'ART'
       GROUP BY [Customer_Name]
       ORDER BY NO_OF_ORDERS DESC
       
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--10/09/2026 THURSDAY CLASS
/* TO DISPLAY SUB CATEGORY WISE TOTAL SALES , TOTAL PROFIT ,AVERGE SALES, 
 AVERGER PROFIT AND OF ORDERS
 CONDITIONS :
     i  .total sales > 1000
     ii .no_of_orders > 10
     iii.year 2023 & 2024
*/
     SELECT [Sub_Category],
     SUM([Sales]) AS TOTAL_SALES, 
     SUM([Profit]) AS TOTAL_PROFIT,
     AVG([Sales]) AS AVERAGE_SALES,
     AVG([Profit]) AS AVERAGE_SALE,
     COUNT(*) AS NO_ORDERS
     FROM ORDERS
     WHERE Order_Date  between '2023' and '2024' 
     GROUP BY [Sub_Category]
     HAVING SUM([Sales]) > 1000 AND COUNT(*) > 10
-----------------------------------------------------------------
SELECT 
    [Sub_Category],
    SUM([Sales]) AS TOTAL_SALES, 
    SUM([Profit]) AS TOTAL_PROFIT,
    AVG([Sales]) AS AVERAGE_SALES,
    AVG([Profit]) AS AVERAGE_PROFIT,
    COUNT(*) AS NO_ORDERS
FROM ORDERS
WHERE Order_Date >= '2023-01-01' AND Order_Date < '2025-01-01'
GROUP BY [Sub_Category]
HAVING SUM([Sales]) > 1000 AND COUNT(*) > 10
/* "DATE FUNCTIONS"
1. Getting Current Date/Time
        SELECT GETDATE();           -- 2026-09-11 14:32:10.123 (current date+time)
        SELECT SYSDATETIME();       -- more precision (nanoseconds)
        SELECT CURRENT_TIMESTAMP;   -- ANSI standard equivalent of GETDATE()
        SELECT GETUTCDATE();        -- current UTC date+time

2. DATEPART / DATENAME — Extracting Pieces
            SELECT DATEPART(month, order_date);    -- 9
            SELECT DATEPART(day, order_date);      -- 11
            SELECT DATEPART(quarter, order_date);  -- 3
            SELECT DATEPART(weekday, order_date);  -- 1-7 depending on DATEFIRST setting
            SELECT DATEPART(year, order_date);     -- 2026
            SELECT DATENAME(month, order_date);    -- 'September' (returns text, not number)
            SELECT DATENAME(weekday, order_date);  -- 'Friday'

3. DATEADD — Adding/Subtracting Time
Syntax: DATEADD(datepart, number, date)
            SELECT DATEADD(day, 7, order_date);      -- add 7 days
            SELECT DATEADD(month, -1, order_date);   -- subtract 1 month
            SELECT DATEADD(year, 1, order_date);     -- add 1 year
            SELECT DATEADD(hour, 5, order_date);     -- add 5 hours

4. DATEDIFF — Difference Between Two Dates
Syntax: DATEDIFF(datepart, startdate, enddate)
            SELECT DATEDIFF(month, hire_date, GETDATE()) AS months_employed;
            SELECT DATEDIFF(day, order_date, delivery_date) AS days_taken;
            SELECT DATEDIFF(year, dob, GETDATE()) AS age;
*/
use vcube
select getdate() as Date
select year(getdate()) as YEAR_
select month(getdate()) as MONTH_
select day(getdate()) as DAY_

--QUESTION : TO DISPLAY YEAR WISE NO.OF.ORDERS GENERATED
--ANSWER :
 --OR
 SELECT YEAR(ORDER_DATE) AS YEARS,
 COUNT(*) AS NO_OF_ORDERS
 FROM ORDERS
 GROUP BY YEAR(ORDER_DATE)
 ORDER BY YEARS

 
--QUESTION : TO DISPLAY MONTH WISE NO.OF.ORDERS GENERATED
--ANSWER :
 SELECT YEAR([Order_Date]) AS YEARS,
 MONTH([Order_Date]) AS MONTH_1,
 COUNT(*) AS NO_OF_ORDERS
 FROM ORDERS
 GROUP BY YEAR([Order_Date]), MONTH([Order_Date])
 ORDER BY YEARS, MONTH_1

 SELECT 
    YEAR([Order_Date]) AS YEARS, 
    MONTH([Order_Date]) AS MONTH_,
    COUNT(*) AS NO_OF_ORDERS
FROM ORDERS
GROUP BY YEAR([Order_Date]), MONTH([Order_Date])
ORDER BY YEARS, MONTH_




--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--11/09/2026 FRIDAY CLASS
/* 
HERE WE HAVE THE PRATICES FUNTIONS OF "DATE FUNCTIONS"
*/
create table ages(
Id_ int,
Name_ varchar(29),
Date_Of_Birth date,
Favourite_Item varchar(10)
)
select * from ages
/*
HERE WE CAN CHANGE THE EXISTING TABLE COLUMN TO ANOTHER NAME
USING THIS STATEMENT
"EXEC sp_rename 'ages.Favourite_Item', 'Favourite_Game', 'COLUMN';"
*/
INSERT INTO ages 
VALUES
(1, 'Aarav', '2005-02-01', 'Painting'),
(2, 'Vivaan', '1998-04-05', 'Football'),
(3, 'Aditya', '2005-12-18', 'Football'),
(4, 'Vihaan', '2004-07-02', 'Cricket'),
(5, 'Arjun', '1996-04-08', 'Cycling'),
(6, 'Sai', '2004-01-18', 'Music'),
(7, 'Reyansh', '2006-11-23', 'Cycling'),
(8, 'Ayaan', '2001-04-15', 'Gaming'),
(9, 'Krishna', '1999-01-25', 'Books'),
(10, 'Ishaan', '2006-07-11', 'Painting'),
(11, 'Rohan', '1997-04-25', 'Chess'),
(12, 'Kabir', '1996-02-13', 'Football'),
(13, 'Aryan', '2000-06-20', 'Painting'),
(14, 'Dhruv', '2007-01-24', 'Cooking'),
(15, 'Karan', '2003-02-13', 'Football'),
(16, 'Yash', '2003-05-27', 'Gaming'),
(17, 'Nikhil', '2008-06-19', 'Music'),
(18, 'Rahul', '2006-02-02', 'Music'),
(19, 'Amit', '2007-05-03', 'Music'),
(20, 'Rajesh', '2008-02-13', 'Painting'),
(21, 'Ananya', '2002-11-27', 'Chess'),
(22, 'Diya', '1997-06-12', 'Music'),
(23, 'Aadhya', '2005-05-23', 'Football'),
(24, 'Saanvi', '2004-11-06', 'Cycling'),
(25, 'Myra', '2006-04-06', 'Cooking'),
(26, 'Anika', '2001-05-21', 'Cycling'),
(27, 'Ira', '1998-11-11', 'Cricket'),
(28, 'Kavya', '1998-01-26', 'Chess'),
(29, 'Riya', '2001-05-03', 'Music'),
(30, 'Siya', '2004-12-11', 'Music'),
(31, 'Priya', '2005-08-13', 'Cooking'),
(32, 'Neha', '1997-05-05', 'Music'),
(33, 'Pooja', '2006-09-18', 'Painting'),
(34, 'Sneha', '2006-10-14', 'Gaming'),
(35, 'Divya', '2001-06-08', 'Books'),
(36, 'Swati', '2003-08-03', 'Cricket'),
(37, 'Meera', '2008-02-05', 'Books'),
(38, 'Anjali', '2007-11-14', 'Gaming'),
(39, 'Shreya', '1996-07-13', 'Gaming'),
(40, 'Nisha', '2002-09-09', 'Cycling'),
(41, 'Vikram', '2008-01-22', 'Football'),
(42, 'Suresh', '2005-09-25', 'Painting'),
(43, 'Manoj', '2007-11-11', 'Football'),
(44, 'Deepak', '1999-07-06', 'Cooking'),
(45, 'Ravi', '1995-12-24', 'Painting'),
(46, 'Ajay', '2003-03-17', 'Football'),
(47, 'Vijay', '2008-11-10', 'Cycling'),
(48, 'Sanjay', '2004-04-05', 'Chess'),
(49, 'Anil', '2007-03-18', 'Cycling'),
(50, 'Sunil', '1995-10-11', 'Cooking'),
(51, 'Pallavi', '1995-02-12', 'Painting'),
(52, 'Kavita', '1998-01-08', 'Gaming'),
(53, 'Lakshmi', '1996-02-24', 'Cooking'),
(54, 'Radha', '2008-02-25', 'Cycling'),
(55, 'Geeta', '2007-03-05', 'Cooking'),
(56, 'Sunita', '2003-03-09', 'Cycling'),
(57, 'Rekha', '2008-10-14', 'Music'),
(58, 'Asha', '2003-12-23', 'Music'),
(59, 'Usha', '2006-05-13', 'Chess'),
(60, 'Vandana', '2002-09-15', 'Football'),
(61, 'Arnav', '1998-04-03', 'Chess'),
(62, 'Vihan', '1995-10-18', 'Music'),
(63, 'Shaurya', '2004-04-01', 'Football'),
(64, 'Advait', '2006-11-02', 'Music'),
(65, 'Atharv', '1996-01-28', 'Chess'),
(66, 'Kian', '1996-09-08', 'Painting'),
(67, 'Reyaan', '2005-08-07', 'Cycling'),
(68, 'Yuvraj', '1997-12-19', 'Gaming'),
(69, 'Devansh', '2002-04-26', 'Cooking'),
(70, 'Parth', '2007-07-07', 'Football'),
(71, 'Tanya', '1996-11-14', 'Chess'),
(72, 'Isha', '2001-07-15', 'Cricket'),
(73, 'Aisha', '2005-11-21', 'Football'),
(74, 'Zara', '1995-07-24', 'Chess'),
(75, 'Naina', '2007-02-08', 'Music'),
(76, 'Alia', '1998-09-15', 'Books'),
(77, 'Sara', '2001-03-09', 'Cooking'),
(78, 'Tara', '1998-02-15', 'Cycling'),
(79, 'Mira', '1996-01-21', 'Cycling'),
(80, 'Nidhi', '2008-01-03', 'Music'),
(81, 'Akash', '1997-07-16', 'Cooking'),
(82, 'Naveen', '1998-07-02', 'Books'),
(83, 'Praveen', '2001-01-13', 'Painting'),
(84, 'Ramesh', '2007-08-10', 'Dance'),
(85, 'Suraj', '2006-12-26', 'Cycling'),
(86, 'Gautam', '2005-12-16', 'Books'),
(87, 'Harsh', '1998-05-07', 'Cricket'),
(88, 'Varun', '2004-12-18', 'Cricket'),
(89, 'Rakesh', '2006-06-02', 'Cricket'),
(90, 'Mahesh', '2004-08-17', 'Cycling'),
(91, 'Pallavi', '1997-01-17', 'Football'),
(92, 'Bhavana', '2008-03-03', 'Gaming'),
(93, 'Chitra', '1996-11-28', 'Music'),
(94, 'Deepa', '2001-02-19', 'Music'),
(95, 'Farah', '2004-10-02', 'Gaming'),
(96, 'Gauri', '1996-07-22', 'Gaming'),
(97, 'Hema', '2004-09-11', 'Painting'),
(98, 'Indira', '1998-11-23', 'Chess'),
(99, 'Jaya', '1998-05-13', 'Books'),
(100, 'Kiran', '2005-11-10', 'Cooking');
-- PRATICE SOME QUESTIONS --
/*--i.DATEPART
DATEPART() pulls out a specific piece of a date (year, month, day, hour, etc.) 
as an integer.
Syntax:
sql
DATEPART(datepart, date)
EXAMPLE:
 SELECT DATEPART(YEAR, '2026-09-14'); OR WE USE THIS BELOW
 SELECT DATEPART(YEAR,GETDATE())
-- Returns: 2026

SELECT DATEPART(MONTH, '2026-09-14');OR WE USE THIS BELOW
SELECT DATEPART(MONTH,GETDATE ())
-- Returns: 9

SELECT DATEPART(QUARTER, '2026-09-14'); OR WE USE THIS BELOW
SELECT DATEPART (QUARTER , GETDATE ())
-- Returns: 3

SELECT DATEPART(WEEK, '2026-09-14'); OR WE USE THIS BELOW
SELECT DATEPART (WEEK , GETDATE())
-- Returns: 38 (week number of the year)

SELECT DATEPART(WEEKDAY, '2026-09-14'); NOT SAME
SELECT DATEPART (WEEKDAY ,GETDATE()) --3
-- Returns: 2 (numeric day of week, Sunday=1 by default)

.Datepart — the part you want (no quotes): YEAR, QUARTER, MONTH,
  DAY_OF_YEAR, DAY, WEEK, WEEKDAY, HOUR, MINUTE, SECOND
.Date — the date/datetime value or column to extract from

*/
SELECT [Date_Of_Birth] FROM AGES 
SELECT YEAR (GETDATE())
SELECT MONTH (GETDATE())
SELECT DAY (GETDATE ())
SELECT DATEPART(MM , GETDATE())
SELECT DATENAME(MM , GETDATE())--IT GIVE THE FULLNAME OF THE INTERVAL"September"
SELECT DATEPART(YYYy ,getdate()) AS YEAR_NUMBER
SELECT DATEPART (QQ ,GETDATE()) AS QUTER_NUMBER
--SELECT DATENAME (QQ, GETDATE()) AS Q_N
SELECT DATEPART (HH, GETDATE()) AS HOUR_NUMBER
SELECT DATEPART (DD, GETDATE()) AS DATE_TODAY
SELECT DATEPART (MM,GETDATE()) AS MONTH_NUMBER
SELECT DATEPART (MI,GETDATE())AS MINUTES_
SELECT DATEPART (SS,GETDATE())AS SECONDS_
SELECT DATEPART (MILLISECOND,GETDATE()) MILLISECOND_
SELECT DATEPART (WK,GETDATE()) AS WEEK_NUMBER
SELECT DATEPART (DW,GETDATE())AS WEEK_DAY
SELECT DATEPART (DY,GETDATE())AS DAY_OF_YEAR
/*
--ii. DATEADD():
DATEADD() is a SQL Server function used to add or subtract a specified time interval (days, months, years, etc.) to/from a date.
--Syntax sql
          DATEADD(datepart, number, date)

  Parameters:
            I.datepart – the unit of time you want to add (e.g., year, month, day, hour)
            II.number – the number of units to add. Use a positive number to add time, 
               and a negative number to subtract time
               Common datepart values
                            datepart  |	Abbreviations
                         -----------------------------
                            year	  |  yy, yyyy
                            quarter	  |  qq, q
                            month	  |  mm, m
                            dayofyear |  dy, y
                            day	      |  dd, d
                            week	  |  wk, ww
                            hour	  |  hh
                            minute	  |  mi, n
                            second	  |  ss, s
                        -------------------------------
            III.date – the starting date/datetime value
*/
SELECT DATEADD(MM,2,GETDATE()) AS UPDATE_2_MONTHS
SELECT DATEADD(YY,1,GETDATE())AS UPDATE_1_YEAR
SELECT DATEADD(YEAR , 1 , GETDATE()) AS UPDATE_1_YEAR
SELECT DATEADD(MONTH , 1 , GETDATE())AS U_1_M
SELECT DATEADD(WEEK , 1 , GETDATE())AS U_1_W

/*QUESTION 1: TO DISPLAY ID_,NAME_,[Date_Of_Birth] 
  AND ADD 6 MONTHS TO [Date_Of_Birth]
  */
--ANSWER
 SELECT ID_,NAME_,[Date_Of_Birth],DATEADD(MM,6,[Date_Of_Birth]) AS U_6_MONTS
 FROM AGES

/* iii.DATADIFF
DATEDIFF() calculates the difference between two dates, returned 
in the unit (days, months, years, etc.) that you specify.
Syntax sql

DATEDIFF(datepart, startdate, enddate)

Parameters:
            i.datepart – the unit you want the difference in 
               (day, month, year, etc.)
           ii.startdate – the earlier date
          iii.enddate – the later date
*/

seleCT DATEDIFF(DD ,'2026-09-26',GETDATE()) AS NUMNBER_DATES_COUNT
seleCT DATEDIFF(YYYY ,'2003-09-26',GETDATE())AS NUMBER_OF_YEARS_COUNT

--QUESTION 1: DISPLAY THE AGES OF EACH PERSON
SELECT NAME_ ,DATEDIFF(YYYY,[Date_Of_Birth],GETDATE()) AS AGES_OF_EACH_PERSON
FROM AGES
SELECT * FROM AGES
--QUESTION 2: DISPLAY THE AGES OF EACH PERSON BUT AGE IS GREATHAN 28 YEARS
SELECT NAME_ ,DATEDIFF(YYYY,[Date_Of_Birth],GETDATE()) AS AGES_OF_EACH_PERSON
FROM AGES
WHERE DATEDIFF(YYYY, DATE_OF_BIRTH,GETDATE()) > 28

/*   
 iv.EOMONTH() 
    Definition: EOMONTH() returns the last day of the month for a given date
            — optionally shifted forward/backward by a number of months.

Syntax sql
EOMONTH(start_date ,[month_to_add])

Parameters:
       I. start_date – the date you want the month-end for
      II. month_to_add (optional) – number of months to shift forward (+) 
          or backward (−) before finding the month-end
*/
SELECT EOMONTH(GETDATE(),0)
SELECT EOMONTH(GETDATE(),-1)
SELECT EOMONTH(GETDATE(),1)
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--12/09/2026 SATURDAY CLASS
/* 
 NO CLASS , EXAM DAY
*/
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--14/09/2026 MONDAY CLASS
/* 
 VINAYAKA CHAVITHI ,HOILYDAY
*/

--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--15/09/2026 TUESDAY CLASS
/* 
 SOME EXAMPLE ON THE EOMONTH
*/
--1Q. TO DISPLAY START DATA OF THE CURRENT MONTH BASED ON CURRENT DATE
SELECT EOMONTH (GETDATE(),-1) AS LAST_MONTH_LAST_DATE
SELECT DATEADD (DD,1,EOMONTH (GETDATE(),-1))

--2Q. TO DISPLAY END DATE OF THE CURRENT MONTH BASED ON CURRENT DATA
SELECT EOMONTH (GETDATE()) AS CURRENT_MONTH_LAST_DATE

--3Q.TO DISPLAY START DATE OF THE CURRENT YEAR BASED ON CURRENT DATE 
SELECT EOMONTH (GETDATE(),-9) AS LAST_Y_D -- OUTPUT:2025-12-31
SELECT DATEADD (DD,1,EOMONTH (GETDATE(),-9)) AS PRESENT_Y_D --OUTPUT:2026-01-01
SELECT DATEADD (DD,1,EOMONTH (GETDATE (),-MONTH(GETDATE()))) AS PRESENT_Y
--OUTPUT:2026-01-01
--NOTE IF THE AFTER 2 YEARS SAME DATE
SELECT DATEADD (YYYY,2,EOMONTH (GETDATE(),-MONTH(GETDATE()))) AS AFTER_2_YEARS
--OUTPUT:2027-12-31

--4Q. TO DISPLAY END DATE OF THE CURRENT YEAR BASED ON CURRENT DATE
SELECT EOMONTH(GETDATE(),-MONTH(GETDATE()))AS ONE_YEAR_BACK --OUTPUT:2025-12-31
SELECT DATEADD(YYYY,1,EOMONTH(GETDATE(),-MONTH(GETDATE())))AS PRESENT_YEAR_END
--OUTPUT: 2026-12-31

--5Q. TO DISPLAY START DATE OF THE CURRENT WEEK BASED ON CURRENT DATE
SELECT EOMONTH (GETDATE()) AS DATE_ --OUTPUT:2026-09-30
SELECT DATEADD (WEEK,-2,EOMONTH (GETDATE())) AS USING_WEEK --OUTPUT:2026-09-16
SELECT DATEPART(DW,GETDATE())-1  AS WEEK_NUMBER
SELECT DATEADD (DD,-(DATEPART(DW,GETDATE())-1),GETDATE())
AS CURRENT_DATES --OUTPUT:2026-09-16 AND WHICH IS CHANGE ACCOUNTION TO DATE


--6Q. TO DISPLAY END DATE OF THE CURRENT WEEK BASEED ON CURRENT DATE 



/*  v.DATETRUNC
       Definition: DATETRUNC() truncates a date/datetime value to the specified 
              precision (datepart), setting everything smaller than that unit to its 
              starting value.

Syntax sql
DATETRUNC(datepart, date)

Parameters:
        I.datepart – the level of precision to truncate to 
          (year, month, day, hour, etc.)
       II.date – the date/datetime value to truncate

*/
SELECT DATETRUNC (YYYY,GETDATE())
SELECT DATETRUNC (MM,GETDATE())
SELECT DATETRUNC (QQ,GETDATE())
SELECT DATETRUNC (WEEK,GETDATE())






















































































--------9-9-26 wednesday ------------------------------------------

/*SELECT * EXCEPT(order_id)
FROM orders;*/

DECLARE @cols NVARCHAR(MAX);

SELECT @cols = STRING_AGG(COLUMN_NAME, ', ')
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'orders' AND COLUMN_NAME <> 'order_id';

DECLARE @sql NVARCHAR(MAX) = 'SELECT ' + @cols + ' FROM orders';
EXEC sp_executesql @sql;


