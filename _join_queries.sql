########## JOIN Statement ########

select * from students;
select * from enrollments;
select * from courses;

select s.first_name , c.course_name from students s
join enrollments e On s.student_id = e.student_id
join courses c On e.course_id = c.course_id;
  
SELECT s.first_name, c.course_name
    FROM students s
    JOIN enrollments e ON s.student_id=e.student_id
    JOIN courses c ON e.course_id=c.course_id;

SELECT s.first_name, f.amount
    FROM students s
    LEFT JOIN fees_payment f ON s.student_id=f.student_id;

SELECT s.first_name, m.marks
    FROM students s
    JOIN marks m ON s.student_id=m.student_id;

SELECT s.first_name, a.status
    FROM students s
    JOIN attendance a ON s.student_id=a.student_id;

SELECT first_name FROM students
    WHERE student_id IN (SELECT student_id FROM marks WHERE marks>80);

SELECT course_name FROM courses
    WHERE course_id IN (SELECT course_id FROM enrollments);

SELECT first_name FROM students
    WHERE student_id NOT IN (SELECT student_id FROM fees_payment);

SELECT first_name,
    CASE
      WHEN marks>=85 THEN 'Excellent'
      WHEN marks>=70 THEN 'Good'
      ELSE 'Average'
    END AS performance
    FROM students s
    JOIN marks m ON s.student_id=m.student_id;

SELECT s.first_name, AVG(m.marks)
    FROM students s
    JOIN marks m ON s.student_id=m.student_id
    GROUP BY s.student_id;

SELECT c.course_name, COUNT(e.student_id)
    FROM courses c
    JOIN enrollments e ON c.course_id=e.course_id
    GROUP BY c.course_name;

SELECT s.first_name FROM students s
    WHERE EXISTS (SELECT 1 FROM marks m WHERE s.student_id=m.student_id);

SELECT s.first_name FROM students s
    WHERE NOT EXISTS (SELECT 1 FROM attendance a WHERE s.student_id=a.student_id);

SELECT s.first_name, SUM(f.amount)
    FROM students s
    JOIN fees_payment f ON s.student_id=f.student_id
    GROUP BY s.student_id;

SELECT c.course_name, MAX(m.marks)
    FROM courses c
    JOIN marks m ON c.course_id=m.course_id
    GROUP BY c.course_name;

SELECT s.first_name, COUNT(a.status)
    FROM students s
    JOIN attendance a ON s.student_id=a.student_id
    GROUP BY s.student_id;

SELECT s.first_name FROM students s
    JOIN enrollments e ON s.student_id=e.student_id;

SELECT DISTINCT s.first_name
    FROM students s
    JOIN attendance a ON s.student_id=a.student_id;

SELECT s.first_name, c.course_name
    FROM students s
    JOIN enrollments e ON s.student_id=e.student_id
    JOIN courses c ON e.course_id=c.course_id
    WHERE c.course_name='BCA';

SELECT s.first_name, m.marks
    FROM students s
    JOIN marks m ON s.student_id=m.student_id
    ORDER BY m.marks DESC;

SELECT s.first_name FROM students s
    JOIN marks m ON s.student_id=m.student_id
    WHERE m.marks = (SELECT MAX(marks) FROM marks);