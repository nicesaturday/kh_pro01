package org.suyu.dao;

public interface SqlLang {
	String SELECT_ONE_USERS = "select * from users where id=?";
	String SELECT_NOTICE = "select * from notice order by id";
	String INS_NOTICE = "insert into notice values(default,?,?,default,default)";
	String SELECT_ONE_NOTICE = "select * from notice where id = ?";
	String DELETE_ONE_NOTICE = "delete from notice where id = ?";
	String UPDATE_ONE_NOTICE = "update notice set title=? , content=? where id = ?";
	String UPDATE_VISITED = "update notice set visited=visited+1 where id = ?";
}
