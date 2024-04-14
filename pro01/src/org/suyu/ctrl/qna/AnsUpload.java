package org.suyu.ctrl.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.suyu.dao.QnaDao;


@WebServlet("/answer_upload")
public class AnsUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AnsUpload() {
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
		
		
		int parid = Integer.parseInt(request.getParameter("parid"));
		
		request.setAttribute("parid", parid);
		RequestDispatcher view = request.getRequestDispatcher("/qna/answerUpload.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int parid = Integer.parseInt(request.getParameter("parid"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String email = request.getParameter("email");
		
		int cnt = 0;
		QnaDao qd = new QnaDao();
		cnt = qd.newAnswer(parid, title, content, email);
		
		if(cnt > 0) {
			response.sendRedirect("/pro01/qnalist");
		}
	}

}
