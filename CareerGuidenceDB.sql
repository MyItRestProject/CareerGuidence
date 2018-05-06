drop database IF EXISTS CareerGuidenceDB;
create database CareerGuidenceDB;

CREATE TABLE users(
	id_user       INT(10) UNIQUE NOT NULL PRIMARY KEY,
    age_user      INT(10),
    surname_user  VARCHAR(255),
    name_user     VARCHAR(255),
    email_user    VARCHAR(255),
    login_user    VARCHAR(255),
    password_user VARCHAR(255)
);

CREATE TABLE roles(
	id_roles   INT(10) UNIQUE NOT NULL PRIMARY KEY,
	name_roles VARCHAR(255)
);

CREATE TABLE usersHasRoles(
	id_user INT(10)      UNIQUE NOT NULL,
    id_role INT(10)	     UNIQUE NOT NULL,
    FOREIGN KEY(id_user) REFERENCES usersTable(id_user),
    FOREIGN KEY(id_role) REFERENCES rolesTable(id_roles)
)

CREATE table questions(
    id      int(255)NOT NULL UNIQUE,
    Name    varchar (30)NOT NULL UNIQUE,
    Flag    bit(1)NOT NULL,
    Primary key(id)
);

CREATE table specializes(
    id      int(255)NOT NULL UNIQUE,
    Name    varchar (30)NOT NULL UNIQUE,
    Primary key(id)
);

CREATE table answers(
    id_specializes  int(255)NOT NULL UNIQUE,
    id_questions    int (255)NOT NULL,
    Flag bit (1)NOT NULL ,
    Primary key(id_specializes)
);

create table works (
    name        varchar(100) NOT NULL,
    position    varchar(100) NOT NULL,
    id          int(10) NOT NULL unique,
    primary key(id),
    foreign key (id) references professions(id_profession)
);

create table enterprises (
    name        varchar(100) NOT NULL,
    phone       varchar(100) NOT NULL,
    geolacation varchar(100) NOT NULL,
    id          int(10) NOT NULL UNIQUE,
    primary key(id)
);

create table interprise_has_work (
    id_enterprise int(10) NOT NULL UNIQUE,
    id_woks       int(10) NOT NULL UNIQUE,
    foreign key (id_enterprise) references interprise(id),
    foreign key (id_woks) references works(id)
);

create table profession(
    name            varchar(100)NOT NULL UNIQUE,
    description     varchar(100)NOT NULL UNIQUE,
    id_profession   int(100)NOT NULL UNIQUE,
    primary key(id_profession) 
);

create table test (
    id_user         varchar(100)NOT NULL UNIQUE,
    id_test         int(10)NOT NULL UNIQUE,
    id_profession   int(10)NOT NULL UNIQUE, 
    primary key(id_test),
    foreign key (id_user) references profession(id_proferssion) 
);

create table question(
    id_name     varchar(100)NOT NULL UNIQUE,
    flag        boolean UNIQUE,
    primary key(id_name) 
);

create table test_has_question(
    id_test         int(100)NOT NULL UNIQUE,
    id_answer       int(100)NOT NULL UNIQUE,
    foreign key (id_test) references test(id_test), 
    foreign key (id_answer) references answer(id_answer)
);
