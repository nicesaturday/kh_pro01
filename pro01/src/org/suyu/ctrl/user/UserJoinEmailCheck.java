package org.suyu.ctrl.user;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONObject;
import org.suyu.dao.UserDao;
import org.suyu.person.User;

/**
 * Servlet implementation class UserJoinEmailCheck
 */
@WebServlet("/user_join_email_check")
public class UserJoinEmailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserJoinEmailCheck() {
        super();
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		UserDao ud = new UserDao();
		String email = request.getParameter("email");
		User user = ud.getOneUser(email);
		System.out.println(user.getEmail());
		JSONObject json = new JSONObject();
		if(user.getEmail() == null) {
			json.put("result", false);
			PrintWriter out = response.getWriter();
			out.println(json.toString());
		} else {
			json.put("result", true);
			PrintWriter out = response.getWriter();
			out.println(json.toString());
		}
	}

}
