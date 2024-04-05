select * from notice;
desc notice;

insert into notice values(default,'공지1','내용1',default,default);
insert into notice values(default,'공지2','내용2',default,default);
insert into notice values(default,'공지3','내용3',default,default);


select rownum from notice;