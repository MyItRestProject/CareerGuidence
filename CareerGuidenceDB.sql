drop database IF EXISTS CareerGuidenceDB;
create database CareerGuidenceDB;
use CareerGuidenceDB;

CREATE TABLE users(
id_user INT(10) UNIQUE NOT NULL PRIMARY KEY,
age_user INT(10),
surname_user VARCHAR(20),
name_user VARCHAR(20),
email_user VARCHAR(30),
login_user VARCHAR(15),
password_user VARCHAR(15)
);

CREATE TABLE roles(
id_roles INT(10) UNIQUE NOT NULL PRIMARY KEY,
name_roles VARCHAR(5)
);

CREATE table questions(
id int(10)NOT NULL UNIQUE,
name varchar (30)NOT NULL UNIQUE,
flag bit(1)NOT NULL,
primary key(id)
);

create table professions(
name varchar(20)NOT NULL UNIQUE,
description varchar(255)NOT NULL UNIQUE,
id_profession int(10)NOT NULL UNIQUE,
primary key(id_profession) 
);

CREATE TABLE users_has_roles(
id_user INT(10) UNIQUE NOT NULL,
id_role INT(10) UNIQUE NOT NULL,
FOREIGN KEY(id_user) REFERENCES users(id_user),
FOREIGN KEY(id_role) REFERENCES roles(id_roles)
);

CREATE table specializes(
id int(10)NOT NULL UNIQUE,
name varchar (30)NOT NULL UNIQUE,
primary key(id)
);

CREATE table answers(
id_specializes int(10)NOT NULL UNIQUE,
id_questions int (10)NOT NULL,
flag bit (1)NOT NULL ,
Primary key(id_specializes)
);

create table enterprises (
name varchar(50) NOT NULL,
phone varchar(13) NOT NULL,
geolacation varchar(100) NOT NULL,
id int(10) NOT NULL UNIQUE,
primary key(id)
);

create table tests (
id_user int(10)NOT NULL UNIQUE,
id_test int(10)NOT NULL UNIQUE,
id_profession int(10)NOT NULL UNIQUE, 
primary key(id_test),
foreign key (id_profession) references professions(id_profession)
);

create table test_has_question(
id_test int(10)NOT NULL UNIQUE,
id_answer int(10)NOT NULL UNIQUE,
foreign key (id_test) references tests(id_test), 
foreign key (id_answer) references answers(id_specializes)
);

create table works (
name varchar(50) NOT NULL,
position varchar(50) NOT NULL,
id int(10) NOT NULL unique,
primary key(id),
foreign key (id) references professions(id_profession)
);

create table enterprises_has_work (
id_enterprise int(10) NOT NULL UNIQUE,
id_woks int(10) NOT NULL UNIQUE,
foreign key (id_enterprise) references enterprises(id),
foreign key (id_woks) references works(id)
);
