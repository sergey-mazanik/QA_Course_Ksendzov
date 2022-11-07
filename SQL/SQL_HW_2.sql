-- Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
create table employees (
	id serial primary key,
	employee_name varchar(40) not null
);

-- Наполнить таблицу employee 70 строками.
insert into employees (id, employee_name)
values	(default, 'Sergey1'),
		(default, 'Sergey2'),
		(default, 'Sergey3'),
		(default, 'Sergey4'),
		(default, 'Sergey5'),
		(default, 'Sergey6'),
		(default, 'Sergey7'),
		(default, 'Sergey8'),
		(default, 'Sergey9'),
		(default, 'Sergey10'),
		(default, 'Sergey11'),
		(default, 'Sergey12'),
		(default, 'Sergey13'),
		(default, 'Sergey14'),
		(default, 'Sergey15'),
		(default, 'Sergey16'),
		(default, 'Sergey17'),
		(default, 'Sergey18'),
		(default, 'Sergey19'),
		(default, 'Sergey20'),
		(default, 'Sergey21'),
		(default, 'Sergey22'),
		(default, 'Sergey23'),
		(default, 'Sergey24'),
		(default, 'Sergey25'),
		(default, 'Sergey26'),
		(default, 'Sergey27'),
		(default, 'Sergey28'),
		(default, 'Sergey29'),
		(default, 'Sergey30'),
		(default, 'Sergey31'),
		(default, 'Sergey32'),
		(default, 'Sergey33'),
		(default, 'Sergey34'),
		(default, 'Sergey35'),
		(default, 'Sergey36'),
		(default, 'Sergey37'),
		(default, 'Sergey38'),
		(default, 'Sergey39'),
		(default, 'Sergey40'),
		(default, 'Sergey41'),
		(default, 'Sergey42'),
		(default, 'Sergey43'),
		(default, 'Sergey44'),
		(default, 'Sergey45'),
		(default, 'Sergey46'),
		(default, 'Sergey47'),
		(default, 'Sergey48'),
		(default, 'Sergey49'),
		(default, 'Sergey50'),
		(default, 'Sergey51'),
		(default, 'Sergey52'),
		(default, 'Sergey53'),
		(default, 'Sergey54'),
		(default, 'Sergey55'),
		(default, 'Sergey56'),
		(default, 'Sergey57'),
		(default, 'Sergey58'),
		(default, 'Sergey59'),
		(default, 'Sergey60'),
		(default, 'Sergey61'),
		(default, 'Sergey62'),
		(default, 'Sergey63'),
		(default, 'Sergey64'),
		(default, 'Sergey65'),
		(default, 'Sergey66'),
		(default, 'Sergey67'),
		(default, 'Sergey68'),
		(default, 'Sergey69'),
		(default, 'Sergey70');

-- Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
create table salary(
	id serial primary key,
	monthly_salary int not null
);

-- Наполнить таблицу salary 15 строками
insert into salary (monthly_salary)
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

-- Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
create table employee_salary (
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

--drop table employee_salary;

-- Наполнить таблицу employee_salary 40 строками
insert into employee_salary (employee_id, salary_id)
values (3, 7),
(1, 4),
(5, 9),
(40, 13),
(23, 4),
(11, 2),
(52, 10),
(15, 13),
(26, 4),
(16, 1),
(33, 7),
(2, 3),
(4, 15),
(6, 14),
(7, 13),
(8, 12),
(9, 11),
(10, 10),
(12, 9),
(13, 4),
(14, 7),
(17, 6),
(18, 4),
(19, 5),
(20, 9),
(21, 4),
(22, 10),
(24, 3),
(25, 11),
(27, 2),
(75, 12),
(80, 1),
(85, 15),
(90, 10),
(95, 5),
(100, 3),
(105, 2),
(110, 1),
(115, 3),
(120, 9);

-- Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
create table roles(
	id serial primary key,
	role_name int not null unique
);

-- Поменять тип столба role_name с int на varchar(30)
alter table roles 
alter column role_name type varchar(30);

-- Наполнить таблицу roles 20 строками
insert into roles (role_name)
values  ('Junior Python developer'),
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
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
create table roles_employee (
	id serial primary key,
	employee_id int not null unique,
	role_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (role_id)
		references roles(id)
);
 --drop table roles_employee;

-- Наполнить таблицу roles_employee 40 строками
insert into roles_employee (employee_id, role_id)
values  (7, 2),
		(20, 4),
		(3, 9),
		(5, 13),
		(23, 4),
		(11, 2),
		(10, 9),
		(22, 13),
		(21, 3),
		(34, 4),
		(6, 7),
		(1, 20),
		(2, 19),
		(4, 18),
		(8, 17),
		(9, 16),
		(12, 15),
		(13, 14),
		(14, 13),
		(15, 12),
		(16, 11),
		(17, 10),
		(18, 9),
		(19, 8),
		(24, 1),
		(25, 11),
		(26, 14),
		(27, 12),
		(28, 6),
		(29, 17),
		(30, 3),
		(31, 4),
		(32, 7),
		(33, 20),
		(35, 4),
		(36, 9),
		(37, 13),
		(38, 14),
		(39, 2),
		(40, 9);

	
	
select * from employees; 
select * from salary; 
--select salary_id from employee_salary
--where salary_id = 16 or salary_id = 8;

select * from employee_salary
--where employee_id is null;
--order by salary_id; 
select * from roles;
select * from roles_employee;

--select role_id, count(role_id) from roles_employee
--group by role_id
--order by role_id;