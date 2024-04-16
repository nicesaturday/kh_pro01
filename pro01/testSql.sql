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
alter table users modify email varchar(100) unique;


desc qna;
drop table qna;
select * from qna order by parid asc;
select * from qna;
create table qna(id int auto_increment primary key , plevel int not null , parid int  , title varchar(100) not null , content varchar(1000) not null , resdate datetime default now() , visited int default 0, aemail varchar(100) not null);

alter table qna add constraint qna_aemail foreign key (aemail) references users(email);

insert into qna values(default,1,null,'테스트','ㅅㄴㅅ',default,default,'yain123');
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
'버스',
'710',
'월드컵파크7단지 - 상암DMC홍보관.YTN - (← 디지털미디어시티역 ←) - 월드컵경기장 - 마포구청역 - (→ 마포중앙도서관 →/← 성산동 ←) - 성산2교 - 연희104고지앞.구성산회관 - 연세대 - 이대후문 - 금화터널 - 경복궁 - 안국역 - 창덕궁 - (→ 원남동사거리 → 통신대.이화장 → 혜화역 →/← 창경궁.서울대학교병원 ← 명륜3가.성대입구 ←) - 삼선교.한성대학교 - 돈암사거리.성신여대입구 - 길음뉴타운 - 미아사거리역 - 미아역 - 수유시장.성신여대미아캠퍼스 → 수유역.강북구청 → 강북구청 → 수유중앙시장 → 대한병원 → 수유시장.성신여대미아캠퍼스 → 이후 역순',
'다모아자동차에서 운행하는 주간선버스 노선으로, 왕복 운행거리는 49.5km다.',
'https://map.naver.com/p/search/710%EB%B2%88%EB%B2%84%EC%8A%A4/bus-route/895?c=11.24,0,0,0,dh'
)
insert into traffic values(default,
'버스',
'163',
'우이동도선사입구.북한산우이역 - 국립4.19민주묘지입구 - 수유2동주민센터.우이시장 - 광산사거리 - 수유역.강북구청 - 미아역.신일중고 - 미아사거리역 - (→ 길음뉴타운 →/← 돈암동삼성아파트입구 ←) - 정릉2동주민센터 - 국민대학교 - 북악터널 - 롯데아파트 - 평창동주민센터 - 세검정.상명대 - 서울여자간호대학 - 유진상가 - 서대문구청.보건소.구의회 - 연희교차로 - (→ 서대문우체국 → 연세대학교 → 신촌기차역 →/← 연희동대우아파트 ← 현대백화점 ←) - 신촌오거리 - 광흥창역.서강동주민센터 - 서강대교 - 국회의사당 - 여의도역 - 샛강역 4번 출구.여의도자이 / 샛강역 1번 출구 - 대방역',
'동아운수에서 운행하는 간선버스 노선으로, 왕복 운행거리는 55.6km다.',
'https://map.naver.com/p/search/163%EB%B2%88%EB%B2%84%EC%8A%A4?c=11.24,0,0,0,dh'
)





