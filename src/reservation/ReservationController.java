package reservation;

import java.io.IOException;
import java.sql.Timestamp;
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
import member.MemberDAO;
import member.MemberVO;

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
			String id = (String)session.getAttribute("id");
			MemberDAO mdao = new MemberDAO();
			MemberVO mvo = mdao.selectAll(id);
			request.setAttribute("mvo", mvo);
			nextPage = "/reservation/reserStep1.jsp";
		}else if(action.equals("/reserv.do")) {
			String reser_id = request.getParameter("id");
			String reser_email = request.getParameter("email");
			int count = Integer.parseInt(request.getParameter("person"));
			String[] seatlist = request.getParameterValues("seatlist");
			String seat = "";
			for(int i = 0; i<seatlist.length; i++) {
				seat += seatlist[i]+" ";
			}
			HttpSession session = request.getSession();
			ReservationVO vo = (ReservationVO)session.getAttribute("vo");
			vo.setCount(count); vo.setSeat(seat); vo.setReser_id(reser_id);
			vo.setReser_email(reser_email);
			ReservationDAO dao = new ReservationDAO();
			dao.addReserv(vo);
			nextPage = "/mem/index.do";
		}
		
		
		
			
		
		RequestDispatcher dispatch = request.getRequestDispatcher(nextPage);
		dispatch.forward(request, response);
	}

}
