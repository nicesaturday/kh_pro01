package org.suyu.ctrl.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.suyu.dao.UserDao;
import org.suyu.person.User;

/**
 * Servlet implementation class UserLogin
 */
@WebServlet("/user_login")
public class UserLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher view = request.getRequestDispatcher("/user/login.jsp");
		view.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		UserDao ud = new UserDao();
		User user = ud.getOneUser(email);
		if(user == null) {
			request.setAttribute("error", "없는 사용자 입니다. 계정을 생성해 주세요.");
			RequestDispatcher view = request.getRequestDispatcher("/user/login.jsp");
			view.forward(request, response);
		}
		if(user.getEmail().equals(email) && user.getPw().equals(pw)) {
			HttpSession session = request.getSession();
			session.setAttribute("semail", user.getEmail());
			session.setAttribute("sname", user.getName());
			RequestDispatcher view = request.getRequestDispatcher("/");
			view.forward(request, response);
		} else if(user.getEmail().equals(email)) {
			request.setAttribute("error", "비밀번호가 올바르지 않습니다.");
			RequestDispatcher view = request.getRequestDispatcher("/user/login.jsp");
			view.forward(request, response);
		} else if(user.getPw().equals(pw)) {
			request.setAttribute("error", "이메일이 올바르지 않습니다.");
			RequestDispatcher view = request.getRequestDispatcher("/user/login.jsp");
			view.forward(request, response);
		}
		  else {
			request.setAttribute("error", "없는 사용자 입니다. 계정을 생성해 주세요.");
			RequestDispatcher view = request.getRequestDispatcher("/user/login.jsp");
			view.forward(request, response);
		}
		
		
		
	}

}
