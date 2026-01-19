####   AVG/COUNT/MIN/MAX Statement #############

SELECT COUNT(*) AS total_students
    FROM students;

SELECT COUNT(*) AS total_courses
    FROM courses;

SELECT COUNT(DISTINCT address) AS unique_addresses
    FROM students;

SELECT SUM(amount) AS total_fees
    FROM fees_payment;

SELECT AVG(amount) AS avg_fees
    FROM fees_payment;

SELECT MIN(amount) AS min_fees
    FROM fees_payment;

SELECT MAX(amount) AS max_fees
    FROM fees_payment;
    
##### GROUP BY / ORDER BY / HAVING / ASC ##########

SELECT course_id, COUNT(student_id) AS total_students
    FROM enrollments
    GROUP BY course_id
    ORDER BY course_id ASC;

SELECT gender, COUNT(*) AS total
    FROM students
    GROUP BY gender
    ORDER BY gender ASC;

SELECT address, COUNT(*) AS total_students
    FROM students
    GROUP BY address
    ORDER BY address ASC;

SELECT course_id, AVG(marks) AS avg_marks
    FROM marks
    GROUP BY course_id
    ORDER BY course_id ASC;

SELECT student_id, SUM(amount) AS total_paid
    FROM fees_payment
    GROUP BY student_id
    ORDER BY student_id ASC;
    
SELECT course_id, COUNT(*) AS total_students
    FROM enrollments
    GROUP BY course_id
    HAVING COUNT(*) > 1
    ORDER BY course_id ASC;

SELECT gender, COUNT(*) AS total
    FROM students
    GROUP BY gender
    HAVING COUNT(*) > 1
    ORDER BY gender ASC;

SELECT student_id, AVG(marks) AS avg_marks
    FROM marks
    GROUP BY student_id
    HAVING AVG(marks) > 80
    ORDER BY avg_marks ASC;
    
SELECT course_id, MAX(marks) AS highest_marks
    FROM marks
    GROUP BY course_id
    ORDER BY course_id ASC;
    
SELECT student_id, MIN(marks) AS lowest_marks
    FROM marks
    GROUP BY student_id
    ORDER BY student_id ASC;

SELECT COUNT(*) AS present_count
    FROM attendance
    WHERE status='Present';

SELECT student_id, COUNT(*) AS attendance_count
    FROM attendance
    GROUP BY student_id
    ORDER BY student_id ASC;

SELECT course_id, COUNT(*) AS attendance_count
    FROM attendance
    GROUP BY course_id
    ORDER BY course_id ASC;