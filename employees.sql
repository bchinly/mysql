drop table if exists employee;
drop table if exists salary;

CREATE TABLE employee (
    id int NOT NULL AUTO_INCREMENT,
    name varchar(255),
    PRIMARY KEY (ID)
);

create table salary (
id int not null auto_increment,
employee_id INT,
amount int,
date varchar(255),
primary key (id)
);

insert into employee (name)
values ('jason');

insert into employee (name)
values ('michael');

insert into employee (name)
values ('billy');

insert into employee (name)
values ('fred');

insert into employee (name)
values ('sarah');

insert into employee (name)
values ('madison');

insert into employee (name)
values ('jamie');

insert into salary (employee_id, amount, date)
values (1, 50000, '2015-01-01');

insert into salary (employee_id, amount, date)
values (1, 55000, '2015-06-01');

insert into salary (employee_id, amount, date)
values (1, 52500, '2016-01-01');

insert into salary (employee_id, amount, date)
values (2, 75000, '2017-03-01');

insert into salary (employee_id, amount, date)
values (3, 65000, '2017-06-15');

insert into salary (employee_id, amount, date)
values (3, 80000, '2015-03-25');

insert into salary (employee_id, amount, date)
values (4, 40000, '2016-06-01');

insert into salary (employee_id, amount, date)
values (4, 50000, '2017-01-01');

insert into salary (employee_id, amount, date)
values (5, 50000, '2014-06-01');

insert into salary (employee_id, amount, date)
values (6, 50000, '2017-01-01');

insert into salary (employee_id, amount, date)
values (7, 57500, '2017-01-01');

insert into salary (employee_id, amount, date)
values (7, 62500, '2017-06-01');