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
 * Servlet implementation class NotiUpLoad
 */
@WebServlet("/notice_upload")
public class NotiUpLoad extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NotiUpLoad() {
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
		
		
		String error = (String) request.getAttribute("error");
		if(error == null) request.setAttribute("error", error);
		RequestDispatcher view = request.getRequestDispatcher("/notice/notiUp.jsp");
		view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		NoticeDao nd = new NoticeDao();
		int cnt = 0;
		cnt = nd.insertNotice(title, content);
		
		request.setAttribute("cnt", cnt);
		String error = null;
		
		
		
		
		
		
		if(cnt == 0) {
			error = "실패했습니다.";
			request.setAttribute("error", error);
			response.sendRedirect("/pro01/notiupload");
		}
		if(cnt > 0) response.sendRedirect("/pro01/notilist.do");
		
			
		
	}

}
