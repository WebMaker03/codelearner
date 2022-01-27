package FrontController;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import DTO.Users;

public class UpdateUserAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward= null; 
		
		UserDAO udao = new UserDAO();
		Users newUser = new Users();
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		Users originUser = (Users)session.getAttribute("session_user");

			newUser.setU_name(request.getParameter("userName"));
			newUser.setEmail(request.getParameter("userEmail"));
			newUser.setAge(Integer.parseInt(request.getParameter("userAge")));
			// 기존 변경 안되는 값들 session에 넘겨주기
			newUser.setU_code(originUser.getU_code());
			newUser.setPoint(originUser.getPoint());
			newUser.setUserid(originUser.getUserid());
			newUser.setUserpw(originUser.getUserpw());
			if(!udao.updateUser(newUser)) {
				session.setAttribute("session_user", newUser);
				response.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				out.println("<script>alert('회원정보가 수정되었습니다 :)');"
						+ " location.href='mypage.etc';</script>");
				out.flush();
			}	else {
				response.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				out.println("<script>alert('회원정보 수정 실패!!');"
						+ " location.href='history.go(-1)';</script>");
				out.flush();
			};
		
		return forward;
	}
}