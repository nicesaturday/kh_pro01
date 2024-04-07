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

@WebServlet("/notice_edit")
public class NoticeEdit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public NoticeEdit() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		NoticeDao nd = new NoticeDao();
		boolean viewBreak = false;
		Notice notice= nd.getNoticeOne(id,viewBreak);
		
		
		request.setAttribute("data", notice);
		
		RequestDispatcher view = request.getRequestDispatcher("/notice/noticeEdit.jsp");
		view.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		
		NoticeDao nd = new NoticeDao();
		
		int cnt = 0;
		cnt = nd.editNoticeOne(id, title, content);
		
		System.out.println(cnt + "개 수정되었습니다.");
		if(cnt > 0) response.sendRedirect("/pro01/notilist");
	}

}
