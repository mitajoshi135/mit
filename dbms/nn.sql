ALTER TABLE employee
ADD COLUMN dept varchar(30);

UPDATE employee
SET dept = 'HR'
WHERE dept IS NULL;

ALTER TABLE employee
ALTER COLUMN dept SET NOT NULL;
