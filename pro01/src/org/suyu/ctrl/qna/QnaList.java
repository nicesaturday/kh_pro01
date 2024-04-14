package org.suyu.ctrl.qna;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.suyu.dao.QnaDao;
import org.suyu.dto.Qna;

/**
 * Servlet implementation class QnaList
 */
@WebServlet("/qnalist")
public class QnaList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public QnaList() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		QnaDao qd = new QnaDao();
		List<Qna>  qnaList= qd.getQnaList();
		
		
		request.setAttribute("arr", qnaList);
		RequestDispatcher view = request.getRequestDispatcher("/qna/qnaList.jsp");
		view.forward(request, response);
		
	}

}
