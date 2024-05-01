package org.suyu.ctrl.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.suyu.dao.UserDao;

import org.suyu.util.AES256;

/**
 * Servlet implementation class UserJoin
 */
@WebServlet("/user_join")
public class UserJoin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserJoin() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		RequestDispatcher view = request.getRequestDispatcher("/user/join.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int cnt = 0;
		UserDao ud = new UserDao();
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		String key = "%02x";
		
		try {
			pw = AES256.encryptAES256(pw, key);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String name = request.getParameter("name");
		String addr = request.getParameter("addr");
		String addr2 = request.getParameter("addr2");
		addr += "," + addr2;
		
		String postcode = request.getParameter("postcode");
		cnt = ud.joinUser(email, pw, name , addr , postcode);
		
		if(cnt > 0) {
			response.sendRedirect("/pro01/user_login");
		} else {
			response.sendRedirect("/pro01/user_join");
		}
		
	}

}
