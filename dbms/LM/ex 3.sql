-- 1. Alter the students table to add a new column phone_number
ALTER TABLE students
ADD COLUMN phone_number NUMERIC(11) UNIQUE;

-- 2. Rename the students table to university_students
ALTER TABLE students
RENAME TO university_students;

-- 3. Drop the email column from university_students
ALTER TABLE university_students
DROP COLUMN email;

-- 4. Add a NOT NULL constraint to the phone_number column
ALTER TABLE university_students
ALTER COLUMN phone_number SET NOT NULL;


update university_students set phone_number = 9878978989 where id=1;
update university_students set phone_number = 8789782989 where id=2;
update university_students set phone_number = 9883978989 where id=3;
update university_students set phone_number = 9879478989 where id=4;
update university_students set phone_number = 9879718989 where id=5;
update university_students set phone_number = 9879768989 where id=6;
update university_students set phone_number = 9878937989 where id=7;
update university_students set phone_number = 9878979889 where id=8;
update university_students set phone_number = 9878972989 where id=9;
update university_students set phone_number = 9878758989 where id=10;
update university_students set phone_number = 9878967989 where id=11;
update university_students set phone_number = 9789378989 where id=12;
update university_students set phone_number = 9889778989 where id=13;
update university_students set phone_number = 9889378989 where id=13;
update university_students set phone_number = 9889678989 where id=14;
update university_students set phone_number = 9878397898 where id=15;
update university_students set phone_number = 9872897899 where id=16;
update university_students set phone_number = 9878698989 where id=17;
update university_students set phone_number = 9878987989 where id=18;
update university_students set phone_number = 9879758989 where id=19;
update university_students set phone_number = 9878928989 where id=20;