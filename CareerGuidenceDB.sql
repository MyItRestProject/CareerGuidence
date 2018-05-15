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
    id_question int(10)NOT NULL UNIQUE,
    name_question varchar (30)NOT NULL UNIQUE,
    flag_question bit(1)NOT NULL,
    primary key(id)
);

create table professions(
    id_profession int(10)NOT NULL UNIQUE,
    name_profession varchar(20)NOT NULL UNIQUE,
    description_profession varchar(255)NOT NULL UNIQUE,
    primary key(id_profession) 
);

CREATE TABLE users_has_roles(
    id_user INT(10) UNIQUE NOT NULL,
    id_role INT(10) UNIQUE NOT NULL,
    FOREIGN KEY(id_user) REFERENCES users(id_user),
    FOREIGN KEY(id_role) REFERENCES roles(id_roles)
);

CREATE table specializes(
    id_specialize int(10)NOT NULL UNIQUE,
    name_specialize varchar (30)NOT NULL UNIQUE,
    primary key(id_specialize)
);

CREATE table answers(
    id_specializes int(10)NOT NULL UNIQUE,
    id_questions int (10)NOT NULL,
    flag bit (1)NOT NULL ,
    Primary key(id_specializes)
);

create table enterprises (
    id_enterprice int(10) NOT NULL UNIQUE,
    login_enterprice varchar(15) NOT NULL UNIQUE,
    password_enterprice varchar(50) NOT NULL,
    name_enterprice varchar(50) NOT NULL,
    phone_enterprice varchar(13) NOT NULL,
    geolocation_enterprice varchar(100) NOT NULL,
    primary key(id_enterprice)
);

create table tests (
    id_test int(10)NOT NULL UNIQUE,
    id_user int(10)NOT NULL UNIQUE,
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
    id_work int(10) NOT NULL unique,
    name_work varchar(50) NOT NULL,
    position_work varchar(50) NOT NULL,
    primary key(id_work),
    foreign key (id_work) references professions(id_profession)
);

create table enterprises_has_work (
    id_enterprise int(10) NOT NULL UNIQUE,
    id_woks int(10) NOT NULL UNIQUE,
    foreign key (id_enterprise) references enterprises(id_enterprice),
    foreign key (id_woks) references works(id_work)
);
