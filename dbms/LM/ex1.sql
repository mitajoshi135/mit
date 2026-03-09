create database university;

\c university

create table students(
    Id INTEGER PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Age INTEGER CHECK (Age > 16),
    Email VARCHAR(255) UNIQUE
);

\d students

insert into students (Id, Name, Age, Email) VALUES
(1, 'Alice Johnson', 20, 'alice.johnson@example.com'),
(2, 'Bob Smith', 22, 'bob.smith@example.com'),
(3, 'Charlie Brown', 19, 'charlie.brown@example.com'),
(4, 'Diana Prince', 21, 'diana.prince@example.com'),
(5, 'Ethan Hunt', 23, 'ethan.hunt@example.com'),
(6, 'Fiona Davis', 24, 'fiona.davis@example.com'),
(7, 'George Miller', 25, 'george.miller@example.com'),
(8, 'Hannah Lee', 20, 'hannah.lee@example.com'),
(9, 'Ian Clark', 22, 'ian.clark@example.com'),
(10, 'Julia Roberts', 23, 'julia.roberts@example.com'),
(11, 'Kevin Adams', 21, 'kevin.adams@example.com'),
(12, 'Laura Scott', 19, 'laura.scott@example.com'),
(13, 'Michael Jordan', 24, 'michael.jordan@example.com'),
(14, 'Nina Taylor', 22, 'nina.taylor@example.com'),
(15, 'Oscar White', 23, 'oscar.white@example.com'),
(16, 'Paula Green', 25, 'paula.green@example.com'),
(17, 'Quentin Blake', 21, 'quentin.blake@example.com'),
(18, 'Rachel Moore', 20, 'rachel.moore@example.com'),
(19, 'Steven King', 22, 'steven.king@example.com'),
(20, 'Tina Turner', 23, 'tina.turner@example.com');

select * from students;
