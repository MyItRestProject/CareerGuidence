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
