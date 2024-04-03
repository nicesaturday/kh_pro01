package org.suyu.ctrl;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.suyu.dto.Qna;
import org.suyu.person.Users;

/**
 * Servlet implementation class Main
 */
@WebServlet("/pro01")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Main() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = "��ν�";
		
		 ServletContext application = request.getServletContext();
		 String realPath = request.getSession().getServletContext().getRealPath("/"); //�� ��ǻ���� ������Ʈ ��ġ
		 application.setAttribute("realPath", realPath);
		 
		 List<Users> usersList = new ArrayList<Users>();
		 List<Qna> qnaList = new ArrayList<Qna>();
		 
		 request.setAttribute("usersList", usersList);
		 request.setAttribute("qna", qnaList);
		 request.setAttribute("name", name);
		 request.setAttribute("sa", "./img/hwaguesa.jpg");
		 RequestDispatcher view = request.getRequestDispatcher("/WEB-INF/index.jsp");
		 view.forward(request, response);
		 
	}

}