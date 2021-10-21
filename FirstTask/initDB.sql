create table if not exists developers(
id integer primary key not null,
name varchar(50) not null,
age integer not null,
gender varchar(10) not null);

create table if not exists skills(
id integer primary key not null,
name varchar(50) not null,
level varchar(50) not null);

create table if not exists projects(
id integer primary key not null,
name varchar(50) not null,
description varchar (300));

create table if not exists companies(
id integer primary key not null,
name varchar(50) not null,
specialization varchar (300) not null);

create table if not exists customers(
id integer primary key not null,
name varchar(50) not null,
specialization varchar(300) not null);

create table if not exists developers_projects(
id integer primary key not null,
developer_id integer not null,
project_id integer not null,
foreign key (developer_id) references developers (id),
foreign key (project_id) references projects (id));

create table if not exists developers_skills(
id integer primary key not null,
developer_id integer not null,
skill_id integer not null,
foreign key (developer_id) references developers (id),
foreign key (skill_id) references skills (id));

create table if not exists customers_projects(
id integer primary key not null,
customer_id integer not null,
project_id integer not null,
foreign key (customer_id) references customers (id),
foreign key (project_id) references projects (id));

create table if not exists companies_projects(
id integer primary key not null,
company_id integer not null,
project_id integer not null,
foreign key (company_id) references companies (id),
foreign key (project_id) references projects (id));