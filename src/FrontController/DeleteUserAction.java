package FrontController;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BoardDAO;
import DAO.UserDAO;
import DTO.Post;
import DTO.Users;

public class DeleteUserAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null; // 객체는 미리 생성

		UserDAO udao = new UserDAO();
		Users newUser = new Users();
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		Users originUser = (Users)session.getAttribute("session_user");
		int u_code = originUser.getU_code();
		newUser.setUserpw(request.getParameter("pw1"));
		newUser.setU_code(originUser.getU_code());
		if(udao.delU(u_code)) {			
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('회원탈퇴완료!!');location.href='index.jsp';</script>");
			out.flush();
		}else {
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('회원탈퇴실패');location.href='history.go(-1)';</script>");
			out.flush();
		}
		return forward;
		

	}

}
