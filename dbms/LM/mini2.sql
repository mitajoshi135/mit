-- Step 1: DB setup
CREATE DATABASE attendance_db;
\c attendance_db;

-- Step 2: Tables
CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  department VARCHAR(50),
  phone_number VARCHAR(15) UNIQUE NOT NULL
);

CREATE TABLE attendance (
  record_id SERIAL PRIMARY KEY,
  employee_id INT REFERENCES employees(employee_id),
  date DATE NOT NULL,
  check_in_time TIMESTAMP,
  check_out_time TIMESTAMP
);

-- Step 3: Sample data
INSERT INTO employees (name, department, phone_number) VALUES
('Amit','HR','9000000001'),('Priya','Finance','9000000002'),
('Ravi','IT','9000000003'),('Sneha','Sales','9000000004'),
('Karan','HR','9000000005'),('Meera','Finance','9000000006'),
('Vikas','IT','9000000007'),('Anjali','Sales','9000000008'),
('Suresh','HR','9000000009'),('Pooja','Finance','9000000010'),
('Raj','IT','9000000011'),('Neha','Sales','9000000012'),
('Arjun','HR','9000000013'),('Divya','Finance','9000000014'),
('Manish','IT','9000000015'),('Komal','Sales','9000000016'),
('Deepak','HR','9000000017'),('Shreya','Finance','9000000018'),
('Nikhil','IT','9000000019'),('Ritika','Sales','9000000020');

INSERT INTO attendance (employee_id,date,check_in_time,check_out_time) VALUES
(1,CURRENT_DATE,'2026-03-10 09:00','2026-03-10 17:30'),
(2,CURRENT_DATE,'2026-03-10 09:15','2026-03-10 18:00'),
(3,CURRENT_DATE,'2026-03-10 08:45','2026-03-10 17:00'),
(4,CURRENT_DATE,'2026-03-10 09:30','2026-03-10 18:15'),
(5,CURRENT_DATE,'2026-03-10 09:00','2026-03-10 17:00'),
(6,CURRENT_DATE,'2026-03-10 09:10','2026-03-10 17:20'),
(7,CURRENT_DATE,'2026-03-10 09:05','2026-03-10 18:00'),
(8,CURRENT_DATE,'2026-03-10 09:20','2026-03-10 17:45'),
(9,CURRENT_DATE,'2026-03-10 09:00','2026-03-10 17:10'),
(10,CURRENT_DATE,'2026-03-10 09:25','2026-03-10 18:30'),
(11,CURRENT_DATE,'2026-03-10 09:00','2026-03-10 17:00'),
(12,CURRENT_DATE,'2026-03-10 09:15','2026-03-10 17:45'),
(13,CURRENT_DATE,'2026-03-10 08:55','2026-03-10 17:20'),
(14,CURRENT_DATE,'2026-03-10 09:05','2026-03-10 18:10'),
(15,CURRENT_DATE,'2026-03-10 09:00','2026-03-10 17:30'),
(16,CURRENT_DATE,'2026-03-10 09:10','2026-03-10 18:00'),
(17,CURRENT_DATE,'2026-03-10 09:00','2026-03-10 17:00'),
(18,CURRENT_DATE,'2026-03-10 09:20','2026-03-10 18:00'),
(19,CURRENT_DATE,'2026-03-10 09:00','2026-03-10 17:15'),
(20,CURRENT_DATE,'2026-03-10 09:30','2026-03-10 18:30');

-- Step 4: Queries
-- 1. Attendance for specific employee
SELECT * FROM attendance WHERE employee_id=1;

-- 2. Employees not checked in today
SELECT * FROM employees WHERE employee_id NOT IN
(SELECT employee_id FROM attendance WHERE date=CURRENT_DATE);

-- 3. Update check-out time
UPDATE attendance SET check_out_time='2026-03-10 18:00' WHERE employee_id=1 AND date=CURRENT_DATE;

-- 4. Employees present >8 hours
SELECT e.name,(a.check_out_time-a.check_in_time) AS duration
FROM employees e JOIN attendance a ON e.employee_id=a.employee_id
WHERE (a.check_out_time-a.check_in_time)>'08:00:00';

-- 5. Summary of total working hours
SELECT e.name,SUM(a.check_out_time-a.check_in_time) AS total_hours
FROM employees e JOIN attendance a ON e.employee_id=a.employee_id
GROUP BY e.name;
