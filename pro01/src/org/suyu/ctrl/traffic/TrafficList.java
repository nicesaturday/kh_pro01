package org.suyu.ctrl.traffic;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.suyu.dao.TrafficDao;
import org.suyu.dto.Traffic;

/**
 * Servlet implementation class TrafficList
 */
@WebServlet("/trafficlist")
public class TrafficList extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrafficList() {
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
		
		TrafficDao td = new TrafficDao();
		List<Traffic> trafficList =  td.getTrafficList();
		
		request.setAttribute("arr", trafficList);
		
		RequestDispatcher view = request.getRequestDispatcher("/traffic/trafficList.jsp");
		view.forward(request, response);
	}

}
