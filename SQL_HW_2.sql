--Создать таблицу employees
-- - id. serial,  primary key,
-- - employee_name. Varchar(50), not null

create table employees(
	id serial primary key,
	employee_name varchar(50) not null
)

select * from employees


-- Наполнить таблицу employee 70 строками.

insert into employees (employee_name)
values  ('Kevin Black'),
		('John Moss'),
		('Andrew Larson'),
		('Joseph Payne'),
		('Donna Gilbert'),
		('on Carter'),
		('John Henry'),
		('Pamela Nichols'),
		('Sylvia Barton'),
		('Joel Hall'),
		('Sara Boyd'),
		('Carol Stewart'),
		('Anthony Robertson'),
		('Robert Graham'),
		('Emily Young'),
		('Jeremy Welch'),
		('Paul Marsh'),
		('Sherry Schmidt'),
		('Courtney Wallace'),
		('Tracy Davis'),
		('Ida Morales'),
		('Jim Walters'),
		('David Bryant'),
		('Carla Andrews'),
		('David Hayes'),
		('Linda Phillips'),
		('Daniel Soto'),
		('Maria Smith'),
		('Rebecca Thompson'),
		('David Anderson'),
		('Lauren Martinez'),
		('Lydia Jones'),
		('Helen Wallace'),
		('James Rogers'),
		('Doris Paul'),
		('Ethel Rodriguez'),
		('Colleen Smith'),
		('Eddie Garcia'),
		('Glenda Mitchell'),
		('Kelly Wolfe'),
		('Billie Franklin'),
		('Edward Hamilton'),
		('Naomi Williams'),
		('Seth Allen'),
		('Margaret Cox'),
		('Michael Barnes'),
		('Gina Brooks'),
		('Gregory Hunt'),
		('Denise James'),
		('Sandra Sims'),
		('Mary Lawson'),
		('Hilda Taylor'),
		('Lucille Adams'),
		('Jacqueline Smith'),
		('Mae Young'),
		('Rene Payne'),
		('Danielle Hughes'),
		('James Smith'),
		('Patricia Cunningham'),
		('Sharon Brown'),
		('Charles Smith'),
		('Andrea Gardner'),
		('David Barber'),
		('Janice Johnson'),
		('Robert Johnson'),
		('Dorothy Henderson'),
		('Vivian Tucker'),
		('Jill Graham'),
		('Jilwq Grahamqe'),
		('Angela Flores');

	
--	Создать таблицу salary
-- - id. Serial  primary key,
-- - monthly_salary. Int, not null
	
create table salary_2 (
	id serial primary key,
	monthly_salary int not null
)

select * from salary_2 

--Наполнить таблицу salary 15 строками:

insert into salary_2(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);
	    
select * from salary_2


-- Создать таблицу employee_salary
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique
-- - salary_id. Int, not null

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null 
)

select * from employee_salary

-- Наполнить таблицу employee_salary 40 строками:
-- - в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary(employee_id, salary_id )
values(1,1),
	  (2,2),
	  (3,3),
	  (4,4),
	  (5,5),
	  (6,6),
	  (7,7),
	  (8,8),
	  (9,9),
	  (10,10),
	  (11,11),
	  (12,12),
	  (13,13),
	  (14,14),
	  (15,15),
	  (16,1),
	  (17,2),
	  (18,3),
	  (19,4),
	  (20,5),
	  (21,6),
	  (22,7),
	  (23,8),
	  (24,9),
	  (25,10),
	  (26,11),
	  (27,12),
	  (28,13),
	  (29,14),
	  (30,15),
	  (71,1),
	  (72,2),
	  (73,3),
	  (74,4),
	  (75,5),
	  (76,6),
	  (77,7),
	  (78,8),
	  (79,9),
	  (80,10);

	 
	 
-- Создать таблицу roles
-- - id. Serial  primary key,
-- - role_name. int, not null, unique

	 
create table roles_2(
id serial primary key,
role_name int  unique not null
)

select * from roles_2
 
-- Поменять тип столба role_name с int на varchar(30)
alter table roles_2 alter column role_name type varchar(30);


-- Наполнить таблицу roles 20 строками
insert into roles_2( role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	   
	   
-- Создать таблицу roles_employee
-- - id. Serial  primary key,
-- - employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- - role_id. Int, not null (внешний ключ для таблицы roles, поле id)
   
create table roles_employee(
id serial primary key,
employee_id int not null unique,
role_id int not null,
foreign key(employee_id)
	references employees(id),
foreign key (role_id)
	references roles_2 (id)
)

select * from roles_employee

--Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id,role_id)
values (1,1),
	   (2,2),
	   (3,3),
	   (4,4),
	   (5,5),
	   (6,6),
	   (7,7),
	   (8,8),
	   (9,9),
	   (10,10),
	   (11,11),
	   (12,12),
	   (13,13),
	   (14,14),
	   (15,15),
	   (16,16),
	   (17,17),
	   (18,18),
	   (19,19),
	   (20,20),
	   (21,1),
	   (22,2),
	   (23,3),
	   (24,4),
	   (25,5),
	   (26,6),
	   (27,7),
	   (28,8),
	   (29,9),
	   (30,10),
	   (31,11),
	   (32,12),
	   (33,13),
	   (34,14),
	   (35,15),
	   (36,16),
	   (37,17),
	   (38,18),
	   (39,19),
	   (40,20);
	   