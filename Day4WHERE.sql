USE startersql;

SELECT * FROM users;

-- SELECTING based on gender
SELECT * FROM users WHERE gender='male';
SELECT * FROM users WHERE gender='female';
SELECT* FROM users WHERE gender IN ('male','female');


-- SELECTING based on  date_of_birth
SELECT*FROM users WHERE date_of_birth BETWEEN '1999-08-01' AND '2002-08-01';
SELECT*FROM users WHERE date_of_birth BETWEEN '2004-08-01' AND '2015-08-01';

-- SELECTING based on ID
SELECT * FROM users WHERE id<25;
SELECT * FROM users WHERE id<=25;
SELECT * FROM users WHERE ID=49;
SELECT id,name,gender FROM users WHERE ID BETWEEN 1 AND 25;
SELECT * FROM users WHERE ID BETWEEN 25 AND 50;

-- SELECTING based  gender and salary
SELECT * FROM users WHERE gender='female' AND salary>70000;

SELECT * FROM users WHERE gender='female' AND salary<70000;
SELECT * FROM users WHERE gender='male' AND salary<70000;

-- USING ORDER BY 
SELECT * FROM users WHERE gender='male' OR salary>70000 ORDER BY date_of_birth ASC;
SELECT * FROM users WHERE gender='male' OR salary>70000 ORDER BY date_of_birth DESC;
-- TO GET ONLY 5 ROWS
SELECT * FROM users WHERE gender='male' OR salary>70000 ORDER BY date_of_birth ASC LIMIT 5;
select * from users ;