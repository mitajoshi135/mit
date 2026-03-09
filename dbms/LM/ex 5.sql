-- 1. Select all columns from university_students
SELECT * 
FROM university_students;

-- 2. Select only name and age where age > 20
SELECT name, age 
FROM university_students
WHERE age > 20;

-- 3. Order results by name in descending order
SELECT * 
FROM university_students
ORDER BY name DESC;

-- 4. Limit the number of results to 2
SELECT * 
FROM university_students
LIMIT 2;

-- 5. Select students whose names start with 'A'
SELECT * 
FROM university_students
WHERE name LIKE 'A%';

-- 6. Retrieve distinct ages from the university_students table
SELECT DISTINCT age 
FROM university_students;

-- 7. Find students who have NULL values in the phone_number column
SELECT * 
FROM university_students
WHERE phone_number IS NULL;
