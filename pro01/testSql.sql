select * from notice;
desc users;

desc notice;

insert into notice values(default,'����1','����1',default,default);
insert into notice values(default,'����2','����2',default,default);
insert into notice values(default,'����3','����3',default,default);

update notice set visited = 0 where id = 14;

select rownum from notice;


desc users;
select * from users;
insert into users values(default , default , 'yain123' , '1234' , '�����');
insert into users values(default , default , 'minsik' , '12345' , '��ν�');


desc qna;

create table qna(id int primary key increase, plevel int not null , parid int  , title varchar(100) not null , content varchar(1000) not null , resdate datetime default now() , visited int default 0, aid varchar(100));

insert into qna values(default , null,null,null,null,default,default,null);

alter table qna modify parid int ;


desc traffic;
alter table traffic modify route varchar(1000);
alter table traffic modify comment varchar(1000);
