#### Select Statement #############

Select * from marks;
Select * from fees_payment;
Select * from enrollments;
Select * from courses;
Select * from attendance;
Select * from fees_payment;
Select * from students;
Select * from teachers;
Select * from users;
select first_name, email from students;
SELECT first_name, email FROM students;

#### Where Statement #############

SELECT * FROM students WHERE gender='Male';
SELECT * FROM students WHERE gender='Female';
SELECT * FROM students WHERE admission_date > '2023-06-01';
SELECT * FROM students WHERE address='Pune';

#### ASC/DSC Statement #############

SELECT * FROM students ORDER BY first_name ASC;
SELECT * FROM students ORDER BY admission_date DESC;

#### ORDER BY  Statement #############

SELECT * FROM courses ORDER BY fees ASC;

SELECT * FROM courses ORDER BY fees DESC;

#### DISTINCT Statement #############

SELECT DISTINCT address FROM students;

SELECT * FROM students LIMIT 3;
SELECT * FROM students WHERE gender!='Male';
SELECT * FROM students WHERE dob < '2002-01-01';
SELECT * FROM students WHERE first_name='Rahul';
SELECT * FROM students WHERE student_id BETWEEN 1 AND 3;


#### LIKE NOT LIKE Statement #############

SELECT * FROM students WHERE first_name LIKE 'R%';
SELECT * FROM students WHERE first_name LIKE '%a';
SELECT * FROM students WHERE first_name LIKE '%h%';
SELECT * FROM students WHERE email LIKE '%gmail.com';
SELECT * FROM students WHERE address LIKE 'M%';
SELECT * FROM students WHERE last_name LIKE '_a%';
SELECT * FROM students WHERE email NOT LIKE '%yahoo%';
SELECT * FROM students WHERE email LIKE '%@%';
SELECT * FROM students WHERE first_name NOT LIKE 'A%';
SELECT * FROM courses WHERE duration LIKE '%Months';
SELECT * FROM courses WHERE course_name LIKE '%Data%';

#### IN NOT IN Statement #############

SELECT * FROM students WHERE student_id IN (1,3);
SELECT * FROM students WHERE course_id IN (SELECT course_id FROM courses);
SELECT * FROM students WHERE address IN ('Pune','Mumbai');
SELECT * FROM students WHERE student_id NOT IN (2);

#### BETWEEN AND Statement #############

SELECT * FROM courses WHERE fees BETWEEN 50000 AND 150000;
SELECT * FROM students WHERE admission_date BETWEEN '2023-06-01' AND '2023-06-30';
SELECT * FROM students WHERE dob BETWEEN '2000-01-01' AND '2002-12-31';

#### NULL NOT NULL Statement #############

SELECT * FROM students WHERE phone IS NULL;
SELECT * FROM students WHERE phone IS NOT NULL;


SELECT * FROM courses WHERE duration LIKE '%Months';

SELECT * FROM courses WHERE course_name LIKE '%Data%';