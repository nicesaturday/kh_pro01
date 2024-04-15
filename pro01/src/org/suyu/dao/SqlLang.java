package org.suyu.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public interface SqlLang {
	String SELECT_ALL_USERS = "select * from users";
	String SELECT_ONE_USER = "select * from users where email = ?";
	String JOIN_USER = "insert into users values(default , default , ? ,? ,?)";
	String DELETE_ONE_USER = "delete from users where id = ?";
	String SELECT_NOTICE = "select * from notice order by id";
	String INS_NOTICE = "insert into notice values(default,?,?,default,default)";
	String SELECT_ONE_NOTICE = "select * from notice where id = ?";
	String DELETE_ONE_NOTICE = "delete from notice where id = ?";
	String UPDATE_ONE_NOTICE = "update notice set title=? , content=? where id = ?";
	String UPDATE_VISITED = "update notice set visited=visited+1 where id = ?";
	String UPDATE_ONE_USER = "update users set pw=? , name=? where email=?";
	String SELECT_ALL_QNA = "select * from qna order by parid asc";
	String SELECT_ONE_QNA = "select * from qna where id = ?";
	String INSERT_QUESTION = "insert into qna values(default , 1 , null , ? , ? , default , default , ?)";
	String ADD_PARID = "UPDATE qna AS q1 JOIN (SELECT id FROM qna ORDER BY id DESC LIMIT 1) AS q2 ON q1.id = q2.id SET q1.parid = q2.id";
	String INSERT_ANSWER = "insert into qna values(default , 2 , ? , ? , ? , default , default , ?)";
	String UPDATE_VISITED_QNA = "update qna set visited=visited+1 where id = ?";
	String DELETE_ONE_QUESTION = "delete from qna where parid = ?";
	String DELETE_ONE_ANSWER = "delete from qna where id = ?";
	
	String SELECT_TRAFFIC = "select * from traffic";
	
	public Connection connect();
	public void close(Connection con);
	public void close(Connection con ,PreparedStatement pstmt);
	public void close(Connection con ,PreparedStatement pstmt, ResultSet rs);
}
