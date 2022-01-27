package FrontController;

import javax.servlet.http.HttpSession;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LogoutAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward =null;
		
		HttpSession session =request.getSession();
		session.invalidate(); 
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('로그아웃 되었습니다.'); location.href='main.jsp';</script>");
		out.flush(); 

		return forward;
	}
	
}