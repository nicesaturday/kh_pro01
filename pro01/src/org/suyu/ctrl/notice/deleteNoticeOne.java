package org.suyu.ctrl.notice;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.suyu.dao.NoticeDao;

/**
 * Servlet implementation class deleteNoticeOne
 */
@WebServlet("/delete_notice_one")
public class deleteNoticeOne extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public deleteNoticeOne() {
        super();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		
		int id = Integer.parseInt(request.getParameter("id"));
		int cnt = 0;
		NoticeDao nd = new NoticeDao();
		String error = null;
		
		cnt = nd.deleteNoticeOne(id);
		
		if(cnt <= 0) {
			error = "삭제에 실패했습니다.";
			request.setAttribute("error", error);
			RequestDispatcher view = request.getRequestDispatcher("/pro01/notilist.do");
			view.forward(request, response);
		}
		if(cnt > 0) response.sendRedirect("/pro01/notilist.do");
	}

}
