SELECT student_id, marks,
CASE
    WHEN marks >= 85 THEN 'Excellent'
    WHEN marks >= 70 THEN 'Good'
    ELSE 'Average'
END AS performance
FROM marks;

SELECT student_id, amount,
CASE
    WHEN amount >= 40000 THEN 'Paid'
    ELSE 'Pending'
END AS fee_status
FROM fees_payment;


SELECT student_id,
CASE
    WHEN status='Present' THEN 'Attended'
    ELSE 'Absent'
END AS attendance_status
FROM attendance;


##### view #####################

CREATE VIEW vw_student_basic AS
SELECT student_id, first_name, last_name, email
FROM students;

CREATE VIEW vw_student_course AS
SELECT s.student_id, s.first_name, c.course_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN courses c ON e.course_id = c.course_id;


CREATE VIEW vw_attendance AS
SELECT student_id, attendance_date, status
FROM attendance;


CREATE VIEW vw_student_result AS
SELECT s.student_id, s.first_name, m.marks,
CASE
    WHEN m.marks >= 40 THEN 'Pass'
    ELSE 'Fail'
END AS result
FROM students s
JOIN marks m ON s.student_id = m.student_id;


CREATE VIEW vw_student_result AS
SELECT s.student_id, s.first_name, m.marks,
CASE
    WHEN m.marks >= 40 THEN 'Pass'
    ELSE 'Fail'
END AS result
FROM students s
JOIN marks m ON s.student_id = m.student_id;

CREATE VIEW vw_attendance AS
SELECT student_id, attendance_date, status
FROM attendance;

DELIMITER //

CREATE PROCEDURE sp_get_all_students()
BEGIN
    SELECT * FROM students;
END //

DELIMITER ;




