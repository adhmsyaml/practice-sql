create database student_loans;

use student_loans;

create table college (
ID int(100) not null auto_increment,
primary key(ID),
college_name varchar(255) not null,
address varchar(255) not null);

create table bank (
ID int(100) not null auto_increment,
primary key(ID),
bank_name varchar(255) not null,
branch varchar(255),
amount decimal(10,2) not null,
date_approved date not null,
duration varchar(255) not null,
monthly_payment decimal(10,2) not null,
balance decimal(10,2));

create table banker (
ID int(100) not null auto_increment,
primary key(ID),
banker_name varchar(255) not null,
telephone varchar(255),
employment_date date,
employment_length varchar(255));

create table loan (
ID int(100) not null auto_increment,
primary key(ID),
type_name varchar(255) not null,
fixed_interest_rate decimal(10,2),
income_based_repayment decimal(10,2),
interest_rate decimal(10,2),
penalty_fees decimal(10,2),
bank_id int(100),
foreign key (bank_id) references bank (ID));

create table student (
ID int(100) not null auto_increment,
primary key(ID),
student_name varchar(255) not null,
addres varchar(255),
years_attended int(10),
college_id int(100),
foreign key (college_id) references college (ID),
loan_id int(100),
foreign key (loan_id) references loan (ID),
banker_id int(100),
foreign key (banker_id) references banker (ID));