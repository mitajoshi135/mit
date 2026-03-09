-- 1. Insert three students into university_students
INSERT INTO university_students (id, name, age, phone_number)
VALUES 
(1, 'Alice', 20, 98765432101),
(2, 'Bob', 22, 98765432102),
(3, 'Charlie', 19, 98765432103);

-- 2. Update the age of a student where id = 1
UPDATE university_students
SET age = 21
WHERE id = 1
RETURNING *;   

-- 3. Delete a student where id = 3
DELETE FROM university_students
WHERE id = 3
RETURNING *;   -- returns the deleted row

-- 4. Return data from modified rows
-- Already handled above using RETURNING clause in UPDATE and DELETE

-- 5. Insert multiple students in a single query
INSERT INTO university_students (id, name, age, phone_number)
VALUES 
(4, 'David', 23, 98765432104),
(5, 'Emma', 18, 98765432105),
(6, 'Frank', 25, 98765432106);

-- 6. Remove all students who are younger than 18
DELETE FROM university_students
WHERE age < 18
RETURNING *;   

INSERT INTO university_students (id, name, age, phone_number)
VALUES 
(27, 'Alice', 12, 98765432101),
(28, 'Bob', 15, 98765432102),
(30,’jake’,13,2334555667),
(29, 'Charlie', 14, 98765432103);
