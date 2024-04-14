select * from notice;
desc users;

desc notice;

insert into notice values(default,'공지1','내용1',default,default);
insert into notice values(default,'공지2','내용2',default,default);
insert into notice values(default,'공지3','내용3',default,default);

update notice set visited = 0 where id = 14;

select rownum from notice;


desc users;
select * from users where id = 3 or id = 5;
insert into users values(default , default , 'yain123' , '1234' , '김두한');
insert into users values(default , default , 'minsik' , '12345' , '김민식');
insert into users values(default , default , 'admin' , '1234' , '관리자');



desc qna;
select * from qna order by parid asc;
create table qna(id int auto_increment primary key , plevel int not null , parid int  , title varchar(100) not null , content varchar(1000) not null , resdate datetime default now() , visited int default 0, aid varchar(100));

alter table qna add constraint qna_aemail foreign key (aemail) references users(email);
alter table qna change aid aemail varchar(100);

insert into qna values(default,1,null,'테스트','ㅅㄴㅅ',default,default,'yain123');
update qna as q1 set q1.parid= (select id from qna order by id desc limit 1) as q2 where id = (select id from qna order by id desc limit 1);
UPDATE qna 
SET parid = (SELECT id FROM (SELECT id FROM qna ORDER BY id DESC LIMIT 1) AS temp)
WHERE id = (SELECT id FROM qna ORDER BY id DESC LIMIT 1);
delete from qna ;
UPDATE qna AS q1 JOIN (SELECT id FROM qna ORDER BY id DESC LIMIT 1) AS q2 ON q1.id = q2.id SET q1.parid = q2.id;

desc traffic;
alter table traffic modify route varchar(1000);
alter table traffic modify comment varchar(1000);





