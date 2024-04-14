package org.suyu.ctrl.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.suyu.dao.QnaDao;

/**
 * Servlet implementation class QDelete
 */
@WebServlet("/question_delete")
public class QDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QDelete() {
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
		
		int cnt = 0;
		QnaDao qd = new QnaDao();
		cnt = qd.deleteQuestion(parid);
		
		if(cnt > 0) {
			response.sendRedirect("/pro01/qnalist");
		}
	}

	

}
