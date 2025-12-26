CREATE DATABASE startersql;
USE startersql;
select*from startersql;

CREATE TABLE users(
id INT AUTO_INCREMENT  PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
gender ENUM('male','female','other'),
date_of_birth DATE,
created_at TIMESTAMP default CURRENT_TIMESTAMP
);

-- DROP DATABASE startersql1; -- created another another database for sample and then dropped using DROP DATABASE

SELECT*FROM users;
SELECT email,gender FROM users;

-- Renaming table
RENAME  TABLE users to customers;
select*from customers;

RENAME  TABLE customers to users;

-- Altering table
ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT true;
SELECT*FROM users;

-- Modifying column
ALTER TABLE users MODIFY COLUMN name VARCHAR(150);

-- droping column
ALTER TABLE users DROP COLUMN is_active;

-- moving from place to another place
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) AFTER id;

ALTER TABLE users MODIFY COLUMN date_of_birth DATETIME FIRST;