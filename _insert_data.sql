INSERT INTO students 
(first_name, last_name, gender, dob, email, phone, address, admission_date)
VALUES
('Rahul','Sharma','Male','2001-05-12','rahul@gmail.com','9876543210','Pune','2023-06-01'),
('Priya','Patil','Female','2002-03-22','priya@gmail.com','9876543211','Mumbai','2023-06-05'),
('Amit','Verma','Male','2001-11-10','amit@gmail.com','9876543212','Nagpur','2023-06-10'),
('Sneha','Kulkarni','Female','2002-01-18','sneha@gmail.com','9876543213','Kolhapur','2023-06-12'),
('Rohit','Deshmukh','Male','2000-09-30','rohit@gmail.com','9876543214','Satara','2023-06-15');

INSERT INTO courses 
(course_name, duration, fees)
VALUES
('BCA','3 Years',120000),
('BSc Computer Science','3 Years',150000),
('MCA','2 Years',180000),
('Data Science','6 Months',60000),
('Web Development','6 Months',50000);

INSERT INTO teachers
(teacher_name, subject, email, phone)
VALUES
('Anita Joshi','Database','anita@gmail.com','9000011111'),
('Suresh Patil','Java','suresh@gmail.com','9000022222'),
('Neha Singh','Python','neha@gmail.com','9000033333');

INSERT INTO enrollments
(student_id, course_id, enrollment_date)
VALUES
(1,1,'2023-06-01'),
(2,2,'2023-06-05'),
(3,1,'2023-06-10'),
(4,4,'2023-06-12'),
(5,5,'2023-06-15');

INSERT INTO attendance
(student_id, course_id, attendance_date, status)
VALUES
(1,1,'2023-07-01','Present'),
(2,2,'2023-07-01','Absent'),
(3,1,'2023-07-01','Present'),
(4,4,'2023-07-01','Present'),
(5,5,'2023-07-01','Absent');

INSERT INTO marks
(student_id, course_id, marks, grade)
VALUES
(1,1,85,'A'),
(2,2,78,'B'),
(3,1,90,'A+'),
(4,4,88,'A'),
(5,5,72,'C');

INSERT INTO fees_payment
(student_id, amount, payment_date, payment_mode)
VALUES
(1,40000,'2023-06-10','UPI'),
(2,50000,'2023-06-12','Cash'),
(3,40000,'2023-06-15','Card'),
(4,30000,'2023-06-20','UPI'),
(5,25000,'2023-06-22','NetBanking');

INSERT INTO users
(username, password, role)
VALUES
('admin','admin123','Admin'),
('rahul','rahul123','Student'),
('priya','priya123','Student'),
('anita','anita123','Teacher');







