package org.suyu.ctrl.user;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.suyu.dao.UserDao;

/**
 * Servlet implementation class UserOutSelf
 */
@WebServlet("/user_out_self")
public class UserOutSelf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserOutSelf() {
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
		
		String email = request.getParameter("email");
		int id = Integer.parseInt(request.getParameter("id"));
		int cnt = 0;
		UserDao ud = new UserDao();
		cnt = ud.deleteUser(id);
		
		if(cnt > 0) {
			if(email == "admin") {
				response.sendRedirect("/pro01");
				return;
			}
			session.invalidate();
			response.sendRedirect("/pro01");
		}
	}

}
