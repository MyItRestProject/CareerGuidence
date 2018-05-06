drop database IF EXISTS CareerGuidenceDB;
create database CareerGuidenceDB;
create table works (
name varchar(100) NOT NULL,
position varchar(100) NOT NULL,
id int(10) NOT NULL unique,
primary key(id),
 foreign key (id) references professions(id_profession));

create table enterprises (
name varchar(100) NOT NULL,
phone varchar(100) NOT NULL,
geolacation varchar(100) NOT NULL,
id int(10) NOT NULL UNIQUE,
primary key(id));

create table interprise_has_work (
id_enterprise int(10) NOT NULL UNIQUE,
id_woks int(10) NOT NULL UNIQUE,
foreign key (id_enterprise) references interprise(id),
foreign key (id_woks) references works(id));
