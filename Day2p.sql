CREATE DATABASE university;
USE university;

SHOW DATABASES;

CREATE TABLE students(
	id int PRIMARY KEY,
    name varchar(20) NOT NULL,
    email varchar(30) UNIQUE,
    phone_number varchar(10) UNIQUE DEFAULT '0000000000',
    joining_date date,
    age int check(age>18)
    );
    
    INSERT INTO students VALUES(1,'Laxman','laxman@123','9482093519','2025-12-11',21);
    INSERT INTO students VALUES(2,'Chetan','chetan@123','9731983232','2025-10-21',22);
    INSERT INTO students VALUES(3,'Vishwa','vishwa@153','6543219876','2025-12-11',22);
	INSERT INTO students VALUES(4,'Riyaz','riyaz@165','6362278910','2025-12-22',23);
	INSERT INTO students VALUES(5,'Vinay','vinay@965','7263451289','2025-12-18',22);
    
   -- Anoter way if you dont want to add some exceptional values ie email,can be null,phone number also can be null in that case 
   INSERT INTO students(id,name,age) VALUES (6,'sujal',21);
   
   -- ALTER TABLE: we can drop,add column
   ALTER table students ADD COLUMN branch varchar(3) default 'EEE'; 
    
    -- renaming a column 
    ALTER TABLE students RENAME COLUMN branch to course;
    
    select*from students;
    select*from students limit 2,5;
    
    
    UPDATE students SET NAME='Mallikarjun' WHERE id=6;
    
    select*from students where age<=22;
    SELECT*FROM students WHERE age between 20 and 30;