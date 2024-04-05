package org.suyu.ctrl.notice;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.suyu.dao.NoticeDao;
import org.suyu.dto.Notice;

/**
 * Servlet implementation class Notilist
 */
@WebServlet("/notilist")
public class Notilist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Notilist() {
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
		
		List<Notice> arr = new ArrayList<Notice>();
		
		NoticeDao nd = new NoticeDao();
		arr = nd.getNoticeList();
		
		
		
		
		
		request.setAttribute("arr", arr);
		request.getAttribute("cnt");
		RequestDispatcher view = request.getRequestDispatcher("/notice/noticeList.jsp");
		view.forward(request, response);
		
		
		
		
	}

}
