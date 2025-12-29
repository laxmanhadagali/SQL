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