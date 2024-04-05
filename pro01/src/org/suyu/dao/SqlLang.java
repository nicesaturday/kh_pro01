package org.suyu.dao;

public interface SqlLang {
	String SELECT_ONE_USERS = "select * from users where id=?";
	String SELCT_NOTICE = "select * from notice order by id";
	String INS_NOTICE = "insert into notice values(default,?,?,default,default)";
	String SELECT_ONE_NOTICE = "select * from notice where id = ?";
	String DELETE_ONE_NOTICE = "delete from notice where id = ?";
}
