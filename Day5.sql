USE startersql;
SELECT*FROM users;

SELECT* FROM users WHERE SALARY>60000  ORDER BY created_at DESC LIMIT 10;
SELECT *FROM users ORDER BY salary DESC;
SELECT * FROM USERS WHERE salary BETWEEN 50000 AND 70000;

-- UPDATING VALUES IN TABLE
UPDATE users SET salary=51000 WHERE id=24;

-- to run safe query Gpt code
SET SQL_SAFE_UPDATES = 0;

-- INCREASE salary by 10000 whose salary is greater than 60000
UPDATE users SET salary=salary+10000 WHERE salary<60000;

UPDATE users SET name='Rohan K' WHERE email='rohan08@gmail.com';

-- updating gender 
UPDATE users SET gender='other' WHERE name='sandeep';

-- USING ORDER BY 
SELECT * FROM users WHERE gender='male' OR salary>70000 ORDER BY date_of_birth ASC;
SELECT * FROM users WHERE gender='male' OR salary>70000 ORDER BY date_of_birth DESC;
-- TO GET ONLY 5 ROWS
SELECT * FROM users WHERE gender='male' OR salary>70000 ORDER BY date_of_birth ASC LIMIT 5;

-- DELETING BASED ON CONDITION
DELETE FROM users WHERE salary<31000;
DELETE FROM users WHERE id=9;

-- adding CONSTRAINT USNG ALTER 
ALTER TABLE users ADD CONSTRAINT unique_email UNIQUE(email);

SELECT*FROM users;