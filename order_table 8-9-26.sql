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
 SELECT  ORDER_ID,year(getdate()) AS NO_OF_ORDERS
 FROM ORDERS
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

*/



--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--12/09/2026 SATURDAY CLASS
/* 
 NO CLASS , EXAM DAY
*/
--++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
--14/09/2026 MONDAY CLASS
/* 

*/



























































































--------9-9-26 wednesday ------------------------------------------

/*SELECT * EXCEPT(order_id)
FROM orders;*/

DECLARE @cols NVARCHAR(MAX);

SELECT @cols = STRING_AGG(COLUMN_NAME, ', ')
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'orders' AND COLUMN_NAME <> 'order_id';

DECLARE @sql NVARCHAR(MAX) = 'SELECT ' + @cols + ' FROM orders';
EXEC sp_executesql @sql;


