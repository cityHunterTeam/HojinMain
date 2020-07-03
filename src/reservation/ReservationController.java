package reservation;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;

import board.BoardDAO;
import board.BoardVO;

@WebServlet("/res/*")
public class ReservationController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	BoardDAO dao;
	
	public void init(ServletConfig config) throws ServletException {
		dao = new BoardDAO();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doHandle(request, response);

	}
	
	protected void doHandle(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String nextPage = null;
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		String action = request.getPathInfo();
		System.out.println("action:" + action);
		if(action.equals("/seat.do")) {
			String traingradename = request.getParameter("traingradename");
			int adultcharge = Integer.parseInt(request.getParameter("adultcharge"));			
			String depplandtime1 = request.getParameter("depplandtime");
			java.sql.Timestamp depplandtime = java.sql.Timestamp.valueOf(depplandtime1);
			String depplacename = request.getParameter("depplacename");
			String arrplacename = request.getParameter("arrplacename");
			
			ReservationVO vo = new ReservationVO(depplacename,arrplacename,traingradename,depplandtime,adultcharge);
			request.setAttribute("vo", vo);
			HttpSession session = request.getSession();
			session.setAttribute("vo", vo);
			nextPage = "/reservation/reserStep1.jsp";
		}
			
		
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}

}
