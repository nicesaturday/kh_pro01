package org.suyu.ctrl.qna;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.suyu.dao.QnaDao;
import org.suyu.dto.Qna;

/**
 * Servlet implementation class QOne
 */
@WebServlet("/q_one")
public class QOne extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QOne() {
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
		
		
		QnaDao qd = new QnaDao();
		int id = Integer.parseInt(request.getParameter("id"));
		boolean viewBreak = true;
		Qna qna = qd.getOneQna(id,viewBreak);
		
		
		request.setAttribute("data", qna);
		RequestDispatcher view = request.getRequestDispatcher("/qna/qnaOne.jsp");
		view.forward(request, response);
	}

}
