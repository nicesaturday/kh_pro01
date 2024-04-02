create database master;
use master;

drop table traffic;


create table traffic(id int primary key, type int ,num varchar(100) ,route varchar(100) , comment varchar(200));
desc traffic;

create table notice(id int auto_increment primary key, title varchar(100),content varchar(100), resdate datetime default current_timestamp , visited int default 0); 
desc notice;

create table users(id int auto_increment primary key, resdate datetime default current_timestamp , email varchar(100) not null, pw varchar(100) not null, name varchar(50) not null);


desc users;


drop table qna;
create table qna(id int auto_increment primary key,plevel int not null, title varchar(100) not null , content varchar(200) not null , resdate datetime default current_timestamp, visited int default 0, user_id int, manager_id int , foreign key (user_id) references users(id) , foreign key (manager_id) references manager(id));
desc qna;

create table datas(id int auto_increment primary key,path varchar(100));
desc datas;

create table manager(id int auto_increment primary key, resdate datetime default current_timestamp, email varchar(100), pw varchar(100), name varchar(50));
desc manager;

