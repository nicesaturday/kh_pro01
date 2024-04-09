select * from notice;
desc users;

desc notice;

insert into notice values(default,'공지1','내용1',default,default);
insert into notice values(default,'공지2','내용2',default,default);
insert into notice values(default,'공지3','내용3',default,default);

update notice set visited = 0 where id = 14;

select rownum from notice;


select * from users;
insert into users values(default , default , 'yain123' , '1234' , '김두한');