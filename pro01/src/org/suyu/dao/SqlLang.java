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
	
	public Connection connect();
	public void close(Connection con);
	public void close(Connection con ,PreparedStatement pstmt);
	public void close(Connection con ,PreparedStatement pstmt, ResultSet rs);
}
