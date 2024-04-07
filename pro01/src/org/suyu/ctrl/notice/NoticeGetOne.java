package org.suyu.ctrl.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.suyu.dao.NoticeDao;
import org.suyu.dto.Notice;

/**
 * Servlet implementation class NoticeGetOne
 */
@WebServlet("/notice_one")
public class NoticeGetOne extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NoticeGetOne() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		int cnt = 0;
		
		NoticeDao nd = new NoticeDao();
		boolean viewBreak = true;
		Notice noticeOne =  nd.getNoticeOne(id , viewBreak);
		
		
		request.setAttribute("data", noticeOne);
		RequestDispatcher view = request.getRequestDispatcher("/notice/noticeOne.jsp");
		view.forward(request, response);
	}

}
