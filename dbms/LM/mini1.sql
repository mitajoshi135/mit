-- 1. Create database
CREATE DATABASE library_db;

-- 2. Switch to database
\c library_db;
-- 1. Students table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    age INT CHECK (age >= 16),
    phone_number VARCHAR(15) UNIQUE NOT NULL
);

-- 2. Books table
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    author VARCHAR(100) NOT NULL,
    availability BOOLEAN DEFAULT TRUE
);

-- 3. Borrow Records table
CREATE TABLE borrow_records (
    record_id SERIAL PRIMARY KEY,
    student_id INT REFERENCES students(student_id),
    book_id INT REFERENCES books(book_id),
    borrow_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    return_date TIMESTAMP
);

INSERT INTO students (name, age, phone_number) VALUES
('Amit', 18, '9876543210'),
('Priya', 20, '9876543211'),
('Ravi', 19, '9876543212'),
('Sneha', 21, '9876543213'),
('Karan', 22, '9876543214'),
('Meera', 23, '9876543215'),
('Vikas', 24, '9876543216'),
('Anjali', 25, '9876543217'),
('Suresh', 26, '9876543218'),
('Pooja', 27, '9876543219'),
('Raj', 28, '9876543220'),
('Neha', 29, '9876543221'),
('Arjun', 30, '9876543222'),
('Divya', 31, '9876543223'),
('Manish', 32, '9876543224'),
('Komal', 33, '9876543225'),
('Deepak', 34, '9876543226'),
('Shreya', 35, '9876543227'),
('Nikhil', 36, '9876543228'),
('Ritika', 37, '9876543229');

INSERT INTO books (title, author, availability) VALUES
('Database Systems', 'Elmasri', TRUE),
('Operating Systems', 'Silberschatz', TRUE),
('Computer Networks', 'Tanenbaum', TRUE),
('Data Structures', 'Cormen', TRUE),
('Artificial Intelligence', 'Russell', TRUE),
('Machine Learning', 'Goodfellow', TRUE),
('Web Development', 'Flanagan', TRUE),
('Python Programming', 'Mark Lutz', TRUE),
('Java Programming', 'Horstmann', TRUE),
('Cloud Computing', 'Rajkumar Buyya', TRUE);

INSERT INTO borrow_records (student_id, book_id, borrow_date) VALUES
(1, 1, CURRENT_TIMESTAMP),
(2, 2, CURRENT_TIMESTAMP),
(3, 3, CURRENT_TIMESTAMP),
(4, 4, CURRENT_TIMESTAMP),
(5, 5, CURRENT_TIMESTAMP),
(6, 6, CURRENT_TIMESTAMP),
(7, 7, CURRENT_TIMESTAMP),
(8, 8, CURRENT_TIMESTAMP),
(9, 9, CURRENT_TIMESTAMP),
(10, 10, CURRENT_TIMESTAMP);

SELECT DISTINCT s.*
FROM students s
JOIN borrow_records br ON s.student_id = br.student_id;

SELECT * FROM books WHERE availability = TRUE;

UPDATE books SET availability = FALSE WHERE book_id = 1;

SELECT * FROM students
WHERE student_id NOT IN (SELECT student_id FROM borrow_records);

UPDATE borrow_records SET return_date = CURRENT_TIMESTAMP WHERE record_id = 1;
UPDATE books SET availability = TRUE WHERE book_id = 1;

SELECT * FROM students LIMIT 5;

SELECT * FROM students OFFSET 5 LIMIT 5;

SELECT s.name, COUNT(br.book_id) AS books_borrowed
FROM students s
JOIN borrow_records br ON s.student_id = br.student_id
GROUP BY s.name
HAVING COUNT(br.book_id) > 1;

SELECT s.name, COUNT(br.book_id) AS books_borrowed
FROM students s
JOIN borrow_records br ON s.student_id = br.student_id
GROUP BY s.name
HAVING COUNT(br.book_id) >= 3;
