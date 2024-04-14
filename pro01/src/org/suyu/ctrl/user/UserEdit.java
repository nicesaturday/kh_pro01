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
 * Servlet implementation class UserEdit
 */
@WebServlet("/user_edit")
public class UserEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserEdit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		HttpSession session = request.getSession();
		
		
		
		RequestDispatcher view = request.getRequestDispatcher("/user/userEdit.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		int cnt = 0;
		UserDao ud = new UserDao();
		cnt = ud.editUser(email, pw, name);
		
		User user = ud.getOneUser(email);
		
		HttpSession session = request.getSession();
		session.setAttribute("semail", user.getEmail());
		session.setAttribute("sname", user.getName());
		session.setAttribute("sid", user.getId());
		session.setAttribute("spw", user.getPw());
		
		if(cnt > 0) {
			RequestDispatcher view = request.getRequestDispatcher("/user/userInfo.jsp");
			view.forward(request, response);
		}
		
	}

}
