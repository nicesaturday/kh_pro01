package org.suyu.ctrl.qna;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.suyu.dao.QnaDao;

/**
 * Servlet implementation class ADelete
 */
@WebServlet("/answer_delete")
public class ADelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ADelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		QnaDao qd = new QnaDao();
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		
		int cnt = 0;
		cnt = qd.deleteAnswer(id);
		
		
		if(cnt > 0) {
			response.sendRedirect("/pro01/qnalist");
		}
	}

}
