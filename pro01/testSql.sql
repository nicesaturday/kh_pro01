select * from notice;
desc users;

desc notice;

insert into notice values(default,'����1','����1',default,default);
insert into notice values(default,'����2','����2',default,default);
insert into notice values(default,'����3','����3',default,default);

update notice set visited = 0 where id = 14;

select rownum from notice;


select * from users;
insert into users values(default , default , 'yain123' , '1234' , '�����');