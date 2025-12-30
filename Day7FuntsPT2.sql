USE startersql;
SELECT * FROM users;

-- FUNCTIONS IN SQL 
-- * AGGREGATION FUNCTIONS 
-- 1  COUNT()
SELECT COUNT(*) FROM users;
SELECT COUNT(*) FROM users WHERE gender='female';
SELECT COUNT(*) FROM users WHERE gender='male';

-- 2 MAX AND MIN
SELECT  MIN(salary) AS min_salary , MAX(salary) AS max_salary FROM users;

-- 3 Avg
SELECT id,gender, AVG(salary) AS avg_salary FROM users GROUP BY id;
SELECT gender, AVG(salary) AS avg_salary FROM users GROUP BY gender;


-- 4 total
SELECT gender,SUM(salary) AS TOTAL_SALARY FROM users GROUP BY gender;

SELECT name ,LENGTH(name) as name_length FROM USERS; 

SELECT id,name, gender,LENGTH(name) as name_length FROM USERS; 


-- STRING FUNCTIONS
SELECT UPPER(name) FROM users;
SELECT LOWER(name) FROM users;
SELECT LENGTH(name) FROM users;
SELECT name,LENGTH(name) FROM users;
SELECT CONCAT(name,'-',email) AS user_info FROM users; -- used to cobine first name and last name 
SELECT SUBSTRING(name,1,3) AS Short_name FROM users; 
SELECT TRIM(' SQL Learning  '); -- used to remove sapces
SELECT LTRIM(' SQL Learning  '); -- used to remove LEFT sapces
SELECT RTRIM(' SQL Learning  '); -- used to remove RIGHT sapces

-- COMBINED EXAMPLE
SELECT 
	CONCAT(TRIM(name),'(',SUBSTRING(email,1,5),')')
		AS details
        FROM users;

-- NUMERIC(Math) FUNCTIONS
SELECT ABS(-50); -- USED TO RETURN POSITIVE VALUE OF A NUMBER
SELECT ROUND(123.456,2); -- USED to round of tho the nearest values
SELECT CEIL(12.1); -- USED to round upward nearest integer
SELECT FLOOR(12.9); -- USED to round downward ineteger
SELECT MOD(10,3); -- Used to reurn reminder after division
SELECT POWER(2,3); -- USED TO RAISE a number for given  power
SELECT SQRT(49); -- USED TO FIND SQRT OF A GIVEN NUMBER
SELECT SIGN(45); -- used to find sign of a number
SELECT SIGN(-45);

SELECT RAND(); -- USED to generate numbers from 0 to 1
SELECT TRUNCATE(12345.6789,2); -- USED TO remove decimal places without rounding
-- combined example(real world example)
SELECT
	name,
    ROUND(salary,-3) AS rounded_salary,
    CEIL(salary/30) AS daily_salary
    FROM users;
    
 -- DATE TIME functions
 SELECT NOW(); -- USED TO display current date and time
 SELECT CURDATE(); -- USED to display current date only
 SELECT CURTIME(); -- USED to display current time only
 SELECT DATE(NOW()); -- EXTRACTS date part from date time function
 SELECT time(NOW()); -- EXTRACTS time part from date time function
 SELECT YEAR(date_of_birth) FROM users; -- used to extract year
 SELECT month(date_of_birth) FROM users; -- used to extract month
 SELECT DAY(date_of_birth) FROM users; -- used to extract day
 
 -- DATEDIF()
 SELECT DATEDIFF(NOW(),created_at) FROM users; -- used to calculate defference between two dates
 
 -- TIMESTAMPDIFF() : returns difference in years,months,days
 SELECT name, TIMESTAMPDIFF(YEAR,date_of_birth,created_at) AS AGE FROM users;
 
 SELECT DATE_ADD('2025-12-20' , INTERVAL 10 DAY);
 SELECT DATE_ADD(NOW() , INTERVAL 10 DAY); -- RETURNS THE DIFFERENCE im years,month ,days ADDS TIME TO DATE
 SELECT DATE_SUB('2025-12-20' , INTERVAL 10 DAY); -- SUBTRACTS TIME FROM date
 SELECT LAST_DAY('2025-12-15');
 
 -- COMBINATION example and REAL WORLD example
 SELECT name,TIMESTAMPDIFF(YEAR,date_of_birth,CURDATE()) AS
 age, YEAR(created_at) AS join_year FROM users
 WHERE YEAR(created_at)=2025;
 

 SELECT*FROM USERS;






