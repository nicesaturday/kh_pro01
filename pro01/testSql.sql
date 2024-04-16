select * from notice;
desc users;

desc notice;

insert into notice values(default,'����1','����1',default,default);
insert into notice values(default,'����2','����2',default,default);
insert into notice values(default,'����3','����3',default,default);

update notice set visited = 0 where id = 14;

select rownum from notice;


desc users;
select * from users where id = 3 or id = 5;
insert into users values(default , default , 'yain123' , '1234' , '�����');
insert into users values(default , default , 'minsik' , '12345' , '��ν�');
insert into users values(default , default , 'admin' , '1234' , '������');
alter table users modify email varchar(100) unique;


desc qna;
drop table qna;
select * from qna order by parid asc;
select * from qna;
create table qna(id int auto_increment primary key , plevel int not null , parid int  , title varchar(100) not null , content varchar(1000) not null , resdate datetime default now() , visited int default 0, aemail varchar(100) not null);

alter table qna add constraint qna_aemail foreign key (aemail) references users(email);

insert into qna values(default,1,null,'�׽�Ʈ','������',default,default,'yain123');
update qna as q1 set q1.parid= (select id from qna order by id desc limit 1) as q2 where id = (select id from qna order by id desc limit 1);
UPDATE qna 
SET parid = (SELECT id FROM (SELECT id FROM qna ORDER BY id DESC LIMIT 1) AS temp)
WHERE id = (SELECT id FROM qna ORDER BY id DESC LIMIT 1);
delete from qna where id = 2;
UPDATE qna AS q1 JOIN (SELECT id FROM qna ORDER BY id DESC LIMIT 1) AS q2 ON q1.id = q2.id SET q1.parid = q2.id;


select * from traffic;
desc traffic;
create table traffic(id int AUTO_INCREMENT PRIMARY KEY, type varchar(100),num varchar(100), route varchar(1000),comment varchar(1000),uri varchar(1000));
drop table traffic;



insert into traffic values(default,
'����',
'710',
'��������ũ7���� - ���DMCȫ����.YTN - (�� �����й̵���Ƽ�� ��) - �����Ű���� - ������û�� - (�� �����߾ӵ����� ��/�� ���굿 ��) - ����2�� - ����104������.������ȸ�� - ������ - �̴��Ĺ� - ��ȭ�ͳ� - �溹�� - �ȱ��� - â���� - (�� ��������Ÿ� �� ��Ŵ�.��ȭ�� �� ��ȭ�� ��/�� â���.������б����� �� ���3��.�����Ա� ��) - �Ｑ��.�Ѽ����б� - ���ϻ�Ÿ�.���ſ����Ա� - ������Ÿ�� - �̾ƻ�Ÿ��� - �̾ƿ� - ��������.���ſ���̾�ķ�۽� �� ������.���ϱ�û �� ���ϱ�û �� �����߾ӽ��� �� ���Ѻ��� �� ��������.���ſ���̾�ķ�۽� �� ���� ����',
'�ٸ���ڵ������� �����ϴ� �ְ������� �뼱����, �պ� ����Ÿ��� 49.5km��.',
'https://map.naver.com/p/search/710%EB%B2%88%EB%B2%84%EC%8A%A4/bus-route/895?c=11.24,0,0,0,dh'
)
insert into traffic values(default,
'����',
'163',
'���̵��������Ա�.���ѻ���̿� - ����4.19���ֹ����Ա� - ����2���ֹμ���.���̽��� - �����Ÿ� - ������.���ϱ�û - �̾ƿ�.�����߰� - �̾ƻ�Ÿ��� - (�� ������Ÿ�� ��/�� ���ϵ��Ｚ����Ʈ�Ա� ��) - ����2���ֹμ��� - ���δ��б� - �Ͼ��ͳ� - �Ե�����Ʈ - ��â���ֹμ��� - ������.���� - ���￩�ڰ�ȣ���� - ������ - ���빮��û.���Ǽ�.����ȸ - �������� - (�� ���빮��ü�� �� �������б� �� ���̱����� ��/�� ���񵿴�����Ʈ �� �����ȭ�� ��) - ���̿��Ÿ� - ����â��.�������ֹμ��� - �����뱳 - ��ȸ�ǻ�� - ���ǵ��� - ������ 4�� �ⱸ.���ǵ����� / ������ 1�� �ⱸ - ��濪',
'���ƿ������ �����ϴ� �������� �뼱����, �պ� ����Ÿ��� 55.6km��.',
'https://map.naver.com/p/search/163%EB%B2%88%EB%B2%84%EC%8A%A4?c=11.24,0,0,0,dh'
)





