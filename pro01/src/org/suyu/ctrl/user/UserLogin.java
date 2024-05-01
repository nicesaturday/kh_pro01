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
import org.suyu.util.AES256;

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
		String key = "%02x";
		
		UserDao ud = new UserDao();
		User user = ud.getOneUser(email);
		String decrptpw = user.getPw();
		try {
			decrptpw = AES256.decryptAES256(user.getPw(), key);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		  if(email.equals(user.getEmail()) && pw.equals(decrptpw)) {
			HttpSession session = request.getSession();
			session.setAttribute("semail", user.getEmail());
			session.setAttribute("sname", user.getName());
			session.setAttribute("sid", user.getId());
			session.setAttribute("spw", decrptpw);
			session.setAttribute("saddr", user.getAddr());
			session.setAttribute("spostcode", user.getPostcode());
			response.sendRedirect("/pro01");
		} else if(email.equals(user.getEmail())) {
			request.setAttribute("error", "비밀번호가 올바르지 않습니다.");
			request.setAttribute("email", user.getEmail());
			RequestDispatcher view = request.getRequestDispatcher("/user/login.jsp");
			view.forward(request, response);
		} else {
			request.setAttribute("error", "없는 사용자 입니다. 계정을 생성해 주세요.");
			RequestDispatcher view = request.getRequestDispatcher("/user/login.jsp");
			view.forward(request, response);
		}
		
		
	}

}
