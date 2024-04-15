package org.suyu.test;

import org.suyu.dao.UserDao;
import org.suyu.person.User;

public class GetOneUserTest {
	public static void main(String[] args) {
		UserDao ud = new UserDao();
		User user = ud.getOneUser("yain123");
		
		System.out.println(user.toString());
	}
}
