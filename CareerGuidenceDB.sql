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
    name_question varchar (30)NOT NULL UNIQUE,
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
    name_test varchar(50) Not NUll,
    primary key(id_test)
);

create table works (
	id int (10) NOT NULL unique,
    id_profession int(10) NOT NULL unique,
    name_work varchar(50) NOT NULL,
    position_work varchar(50) NOT NULL,
    primary key(id),
    foreign key (id_profession) references professions(id_profession)
);
CREATE table answers(
	id int (10) Not Null Unique, 
    id_profession int(10)NOT NULL UNIQUE,
    id_question int (10)NOT NULL,
    Primary key(id),
    foreign key (id_question) references questions(id)

);

create table enterprises_has_work (
    id_enterprise int(10) NOT NULL UNIQUE,
    id_works int(10) NOT NULL UNIQUE,
    foreign key (id_enterprise) references enterprises(id_enterprice),
    foreign key (id_works) references works(id)
);
create table test_has_users (
	id_user int(10) NOT NULL UNIQUE,
	id_test int(10)NOT NULL UNIQUE,
	id_profession int(10)NOT NULL UNIQUE,
	foreign key (id_user) references users(id_user),
	foreign key (id_test) references tests(id_test),
	foreign key (id_profession) references professions(id_profession)
);

-- in dao user answers
create table user_has_questions(
	id_user int(10) NOT NULL UNIQUE,
	id_question int(10) NOT NULL UNIQUE,
	flag boolean NOT NULL,
	Foreign key(id_user) references users(id_user),
	Foreign key(id_question) references questions(id)
);
create table test_has_question(
    id_test int(10)NOT NULL UNIQUE,
    id_question int(10)NOT NULL UNIQUE,
    foreign key (id_test) references tests(id_test), 
    foreign key (id_question) references answers(id_question)
);

