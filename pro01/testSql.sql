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


1. insert �� �߸���;
2. query�� ?���� �ִ� �ڸ��� ���� 1����;
3. setInt�ؾ��ϴ� �ֵ鵵 String ��;
4. Query�� �ƴ϶� Update��;
5. close()����;

1. update ���� �߸���. phone �ѹ��� �ٲٷ��� update shop_member set phone=? where .....;
2. ���ѹ��� �ٲٷ��� sm�ν��Ͻ��� ���ѹ��� �־��ִ� ���� ������, id���� �־����� �ʾƼ� ;
3. result=pstmt.executeUpdate() ;
4. result=executeUpdate() �� ��� �������� �������.; 
5. close�� ���þ���.



1. rs.cuteQuery
2. pstmt.setInt(1,memberId);
3. ������ �ƴ϶� gender
4. close

�ܷ��� �θ�Ű�� primary������.

join�Ҷ��� �÷� �̸��� ������ USING ó���� �ݵ�� ������.

USING�� ���� ���� �÷��϶��� ����

�Ƹ� GROUP BY �ÿ��� SUM���� �÷��� �Ѱ��� ����.

E. J. ���ؼ� �׷���

