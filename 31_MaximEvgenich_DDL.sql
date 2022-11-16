create table salary (
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary) VALUES (500),
											  (700),
											  (1000),
											  (1200),
											  (1400),
											  (1500);
											 
insert into salary(id, monthly_salary) VALUES (7, 1700);		

insert into salary(monthly_salary) VALUES (1900),
									      (2000);
											 
select * from salary

create table roles (
	id serial primary key,
	role_title varchar(50) unique not null
);

insert into roles(role_title)
values ('Junior_QA'),
	   ('Middle_QA'),
	   ('Senior_QA'),
	   ('Junior_JS_Developer'),
	   ('Middle_JS_Developer'),
	   ('Senior_JS_Developer');

select * from roles;


create table roles_salary (
	id serial primary key,
	id_role int not null,
	id_salary int not null,
	foreign key (id_role)
		references roles(id),
	foreign key (id_salary)
		references salary(id)
);

insert into roles_salary(id_role, id_salary) values (1, 1),
													(2, 3),
													(3, 7);

select * from roles_salary;												
												
update salary
set monthly_salary = 1800
where id = 7;

delete from salary
where id = 9;
												

alter table roles
add column parking int;

alter table roles
rename column parking to taxi;

alter table roles
drop column taxi;



drop table roles_salary;
drop table roles;





/* ----------------------------------------------------------- */ 

create table employees (
	id serial primary key,
	employee_name varchar(50) not null
);

/* generated in google docs*/ 

insert into employees(employee_name) values ('MaximKotov1');
insert into employees(employee_name) values ('MaximKotov2');
insert into employees(employee_name) values ('MaximKotov3');
insert into employees(employee_name) values ('MaximKotov4');
insert into employees(employee_name) values ('MaximKotov5');
insert into employees(employee_name) values ('MaximKotov6');
insert into employees(employee_name) values ('MaximKotov7');
insert into employees(employee_name) values ('MaximKotov8');
insert into employees(employee_name) values ('MaximKotov9');
insert into employees(employee_name) values ('MaximKotov10');
insert into employees(employee_name) values ('MaximKotov11');
insert into employees(employee_name) values ('MaximKotov12');
insert into employees(employee_name) values ('MaximKotov13');
insert into employees(employee_name) values ('MaximKotov14');
insert into employees(employee_name) values ('MaximKotov15');
insert into employees(employee_name) values ('MaximKotov16');
insert into employees(employee_name) values ('MaximKotov17');
insert into employees(employee_name) values ('MaximKotov18');
insert into employees(employee_name) values ('MaximKotov19');
insert into employees(employee_name) values ('MaximKotov20');
insert into employees(employee_name) values ('MaximKotov21');
insert into employees(employee_name) values ('MaximKotov22');
insert into employees(employee_name) values ('MaximKotov23');
insert into employees(employee_name) values ('MaximKotov24');
insert into employees(employee_name) values ('MaximKotov25');
insert into employees(employee_name) values ('MaximKotov26');
insert into employees(employee_name) values ('MaximKotov27');
insert into employees(employee_name) values ('MaximKotov28');
insert into employees(employee_name) values ('MaximKotov29');
insert into employees(employee_name) values ('MaximKotov30');
insert into employees(employee_name) values ('MaximKotov31');
insert into employees(employee_name) values ('MaximKotov32');
insert into employees(employee_name) values ('MaximKotov33');
insert into employees(employee_name) values ('MaximKotov34');
insert into employees(employee_name) values ('MaximKotov35');
insert into employees(employee_name) values ('MaximKotov36');
insert into employees(employee_name) values ('MaximKotov37');
insert into employees(employee_name) values ('MaximKotov38');
insert into employees(employee_name) values ('MaximKotov39');
insert into employees(employee_name) values ('MaximKotov40');
insert into employees(employee_name) values ('MaximKotov41');
insert into employees(employee_name) values ('MaximKotov42');
insert into employees(employee_name) values ('MaximKotov43');
insert into employees(employee_name) values ('MaximKotov44');
insert into employees(employee_name) values ('MaximKotov45');
insert into employees(employee_name) values ('MaximKotov46');
insert into employees(employee_name) values ('MaximKotov47');
insert into employees(employee_name) values ('MaximKotov48');
insert into employees(employee_name) values ('MaximKotov49');
insert into employees(employee_name) values ('MaximKotov50');
insert into employees(employee_name) values ('MaximKotov51');
insert into employees(employee_name) values ('MaximKotov52');
insert into employees(employee_name) values ('MaximKotov53');
insert into employees(employee_name) values ('MaximKotov54');
insert into employees(employee_name) values ('MaximKotov55');
insert into employees(employee_name) values ('MaximKotov56');
insert into employees(employee_name) values ('MaximKotov57');
insert into employees(employee_name) values ('MaximKotov58');
insert into employees(employee_name) values ('MaximKotov59');
insert into employees(employee_name) values ('MaximKotov60');
insert into employees(employee_name) values ('MaximKotov61');
insert into employees(employee_name) values ('MaximKotov62');
insert into employees(employee_name) values ('MaximKotov63');
insert into employees(employee_name) values ('MaximKotov64');
insert into employees(employee_name) values ('MaximKotov65');
insert into employees(employee_name) values ('MaximKotov66');
insert into employees(employee_name) values ('MaximKotov67');
insert into employees(employee_name) values ('MaximKotov68');
insert into employees(employee_name) values ('MaximKotov69');
insert into employees(employee_name) values ('MaximKotov70');

select * from employees;

drop table salary;

create table salary (
	id serial primary key,
	monthly_salary int not null
)

insert into salary(monthly_salary) values (1000)

select * from salary s ;
truncate salary;

insert into salary(monthly_salary) values (1000);
insert into salary(monthly_salary) values (1100);
insert into salary(monthly_salary) values (1200);
insert into salary(monthly_salary) values (1300);
insert into salary(monthly_salary) values (1400);
insert into salary(monthly_salary) values (1500);
insert into salary(monthly_salary) values (1600);
insert into salary(monthly_salary) values (1700);
insert into salary(monthly_salary) values (1800);
insert into salary(monthly_salary) values (1900);
insert into salary(monthly_salary) values (2000);
insert into salary(monthly_salary) values (2100);
insert into salary(monthly_salary) values (2200);
insert into salary(monthly_salary) values (2300);
insert into salary(monthly_salary) values (2400);
insert into salary(monthly_salary) values (2500);


create table employee_salary (
	id serial primary key,
	employee_id int not null,
	salary_id int not null
);

insert into employee_salary(id, employee_id, salary_id) values (1,3,7);
insert into employee_salary(id, employee_id, salary_id) values (2,1,4);
insert into employee_salary(id, employee_id, salary_id) values (3,5,9);
insert into employee_salary(id, employee_id, salary_id) values (4,40,13);
insert into employee_salary(id, employee_id, salary_id) values (5,23,4);
insert into employee_salary(id, employee_id, salary_id) values (6,11,2);
insert into employee_salary(id, employee_id, salary_id) values (7,52,10);
insert into employee_salary(id, employee_id, salary_id) values (8,15,13);
insert into employee_salary(id, employee_id, salary_id) values (9,26,4);
insert into employee_salary(id, employee_id, salary_id) values (10,16,1);
insert into employee_salary(id, employee_id, salary_id) values (11,33,7);

insert into employee_salary(id, employee_id, salary_id) values (12,2,12);
insert into employee_salary(id, employee_id, salary_id) values (13,37,6);
insert into employee_salary(id, employee_id, salary_id) values (14,78,13);
insert into employee_salary(id, employee_id, salary_id) values (15,61,9);
insert into employee_salary(id, employee_id, salary_id) values (16,40,10);
insert into employee_salary(id, employee_id, salary_id) values (17,104,13);
insert into employee_salary(id, employee_id, salary_id) values (18,48,11);
insert into employee_salary(id, employee_id, salary_id) values (19,66,4);
insert into employee_salary(id, employee_id, salary_id) values (20,98,11);
insert into employee_salary(id, employee_id, salary_id) values (21,57,3);
insert into employee_salary(id, employee_id, salary_id) values (22,91,9);
insert into employee_salary(id, employee_id, salary_id) values (23,61,9);
insert into employee_salary(id, employee_id, salary_id) values (24,16,5);
insert into employee_salary(id, employee_id, salary_id) values (25,84,15);
insert into employee_salary(id, employee_id, salary_id) values (26,21,16);
insert into employee_salary(id, employee_id, salary_id) values (27,45,7);
insert into employee_salary(id, employee_id, salary_id) values (28,17,15);
insert into employee_salary(id, employee_id, salary_id) values (29,53,6);
insert into employee_salary(id, employee_id, salary_id) values (30,115,4);
insert into employee_salary(id, employee_id, salary_id) values (31,23,14);
insert into employee_salary(id, employee_id, salary_id) values (32,1,11);
insert into employee_salary(id, employee_id, salary_id) values (33,113,7);
insert into employee_salary(id, employee_id, salary_id) values (34,64,6);
insert into employee_salary(id, employee_id, salary_id) values (35,29,12);
insert into employee_salary(id, employee_id, salary_id) values (36,99,11);
insert into employee_salary(id, employee_id, salary_id) values (37,67,15);
insert into employee_salary(id, employee_id, salary_id) values (38,23,6);
insert into employee_salary(id, employee_id, salary_id) values (39,148,2);
insert into employee_salary(id, employee_id, salary_id) values (40,159,8);



create table roles (
	id serial primary key,
	role_name int unique not null
);

ALTER TABLE public.roles ALTER COLUMN role_name TYPE varchar(30) USING role_name::varchar(30);

insert into roles(role_name) values ('Junior Python developer');
insert into roles(role_name) values ('Middle Python developer');
insert into roles(role_name) values ('Senior Python developer');
insert into roles(role_name) values ('Junior Java developer');
insert into roles(role_name) values ('Middle Java developer');
insert into roles(role_name) values ('Senior Java developer');
insert into roles(role_name) values ('Junior JavaScript developer');
insert into roles(role_name) values ('Middle JavaScript developer');
insert into roles(role_name) values ('Senior JavaScript developer');
insert into roles(role_name) values ('Junior Manual QA engineer');
insert into roles(role_name) values ('Middle Manual QA engineer');
insert into roles(role_name) values ('Senior Manual QA engineer');
insert into roles(role_name) values ('Project Manager');
insert into roles(role_name) values ('Designer');
insert into roles(role_name) values ('HR');
insert into roles(role_name) values ('CEO');
insert into roles(role_name) values ('Sales manager');
insert into roles(role_name) values ('Junior Automation QA engineer');
insert into roles(role_name) values ('Middle Automation QA engineer');
insert into roles(role_name) values ('Senior Automation QA engineer');

select * from roles;

create table roles_employee (
	id serial primary key,
	employee_id int unique not null,
	role_id int not null 
);

drop table roles_employee;

select * from roles_employee;


insert into roles_employee(employee_id, role_id) values (7,2);
insert into roles_employee(employee_id, role_id) values (20,4);
insert into roles_employee(employee_id, role_id) values (3,9);
insert into roles_employee(employee_id, role_id) values (5,13);
insert into roles_employee(employee_id, role_id) values (23,4);
insert into roles_employee(employee_id, role_id) values (11,2);
insert into roles_employee(employee_id, role_id) values (10,9);
insert into roles_employee(employee_id, role_id) values (22,13);
insert into roles_employee(employee_id, role_id) values (21,3);
insert into roles_employee(employee_id, role_id) values (34,4);
insert into roles_employee(employee_id, role_id) values (6,7);
insert into roles_employee(employee_id, role_id) values (4,1);
insert into roles_employee(employee_id, role_id) values (8,5);
insert into roles_employee(employee_id, role_id) values (13,2);
insert into roles_employee(employee_id, role_id) values (16,16);
insert into roles_employee(employee_id, role_id) values (44,8);
insert into roles_employee(employee_id, role_id) values (52,14);
insert into roles_employee(employee_id, role_id) values (9,8);
insert into roles_employee(employee_id, role_id) values (51,14);
insert into roles_employee(employee_id, role_id) values (42,5);
insert into roles_employee(employee_id, role_id) values (61,1);
insert into roles_employee(employee_id, role_id) values (65,7);
insert into roles_employee(employee_id, role_id) values (63,2);
insert into roles_employee(employee_id, role_id) values (39,17);
insert into roles_employee(employee_id, role_id) values (67,8);
insert into roles_employee(employee_id, role_id) values (49,13);
insert into roles_employee(employee_id, role_id) values (69,10);
insert into roles_employee(employee_id, role_id) values (55,10);
insert into roles_employee(employee_id, role_id) values (47,20);
insert into roles_employee(employee_id, role_id) values (38,18);
insert into roles_employee(employee_id, role_id) values (82,1);
insert into roles_employee(employee_id, role_id) values (87,14);
insert into roles_employee(employee_id, role_id) values (92,18);
insert into roles_employee(employee_id, role_id) values (96,20);
insert into roles_employee(employee_id, role_id) values (99,14);
insert into roles_employee(employee_id, role_id) values (104,17);
insert into roles_employee(employee_id, role_id) values (108,13);
insert into roles_employee(employee_id, role_id) values (118,2);
insert into roles_employee(employee_id, role_id) values (149,17);
insert into roles_employee(employee_id, role_id) values (196,19);