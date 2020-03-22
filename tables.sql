create table individual(
aadhar varchar(12),
name varchar(30),
pan_no varchar(10) unique,
address varchar(60),
pincode varchar(6) ,
primary key(aadhar,name));

create table bank(
ifsc varchar(11),
b_name varchar(30),
city varchar(30),
primary key(ifsc));


create table has_acc_in(
aadhar varchar(12),
name varchar(30),
ifsc varchar(11),
acc_no varchar(20),
balance number(10),
primary key (acc_no),
foreign key(aadhar,name) references individual(aadhar,name) on delete cascade,
foreign key(ifsc) references bank on delete set null);



create table phone(
phone_no varchar(10),
aadhar varchar(12),
name varchar(30),
primary key (phone_no),
foreign key(aadhar,name) references individual(aadhar,name) on delete set null);


create table mail(
email_id varchar(80),
aadhar varchar(12),
name varchar(30),
primary key(email_id),
foreign key(aadhar,name) references individual(aadhar,name) on delete set null);


drop table mail;
drop table phone;
drop table has_acc_in;
drop table bank;
drop table individual;