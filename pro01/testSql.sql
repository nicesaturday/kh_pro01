select * from notice;
desc users;

desc notice;

insert into notice values(default,'공지1','내용1',default,default);
insert into notice values(default,'공지2','내용2',default,default);
insert into notice values(default,'공지3','내용3',default,default);

update notice set visited = 0 where id = 14;

select rownum from notice;


desc users;
select * from users;
insert into users values(default , default , 'yain123' , '1234' , '김두한');
insert into users values(default , default , 'minsik' , '12345' , '김민식');


1. insert 문 잘못씀;
2. query문 ?순서 넣는 자리에 전부 1을씀;
3. setInt해야하는 애들도 String 씀;
4. Query가 아니라 Update임;
5. close()안함;

1. update 문이 잘못됌. phone 넘버를 바꾸려면 update shop_member set phone=? where .....;
2. 폰넘버를 바꾸려면 sm인스턴스의 폰넘버를 넣어주는 것이 맞지만, id값을 넣어주지 않아서 ;
3. result=pstmt.executeUpdate() ;
4. result=executeUpdate() 로 몇개가 들어가는지를 해줘야함.; 
5. close가 역시없다.



1. rs.cuteQuery
2. pstmt.setInt(1,memberId);
3. 성별이 아니라 gender
4. close

외래의 부모키는 primary여야함.

join할때는 컬럼 이름이 같으면 USING 처리를 반드시 해주자.

USING은 서로 같은 컬럼일때만 가능

아마 GROUP BY 시에는 SUM으로 컬럼별 총값을 더함.

E. J. 을해서 그런듯

