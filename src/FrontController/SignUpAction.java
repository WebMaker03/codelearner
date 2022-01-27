package FrontController;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;

import DTO.Users;
public class SignUpAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward= null;
		
		UserDAO udao = new UserDAO();
		Users newUser = new Users();
		
		newUser.setUserid(request.getParameter("id"));
		newUser.setUserpw(request.getParameter("pw1"));
		newUser.setU_name(request.getParameter("userName"));
		newUser.setAge(Integer.parseInt(request.getParameter("userAge")));
		newUser.setEmail(request.getParameter("userEmail"));
		
		
		if(udao.SignUp(newUser)) {			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원가입이 완료되었습니다.');location.href='main.jsp';</script>");
			out.flush();
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('회원가입 실패입니다.');location.href='main.jsp';</script>");
			out.flush();
		}

		return forward;
		
	}

}