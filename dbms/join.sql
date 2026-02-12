-- create table company(
-- id int not null generated always as identity primary key,
-- name varchar(20) not null,
-- age int not null,
-- address char(25),
-- salary decimal(10,2) default 10000.00,
-- join_date date default current_date
-- );

-- insert into company(name,age,address,salary)values
-- ('paul',32,'california',20000),
-- ('mark',82,'japan',10000),
-- ('',42,'argentina',25000),
-- ('james',34,'canada',30000),
-- ('kim',20,'america',50500);

-- create table department (
-- id int not null generated always as identity primary key,
-- dept char(50) not null,
-- emp_id int not null,
-- foreign key (emp_id) references company(id)
-- );

-- insert into department(dept,emp_id)values
-- ('finance',001),
-- ('it',002),
-- ('hr',003);

-- select * from company c join department d on c.id=d.emp_id;