package FrontController;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import DTO.Users;

public class UpdateUserPasswordAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null; // 객체는 미리 생성

		UserDAO udao = new UserDAO();
		Users newUser = new Users();
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		Users originUser = (Users)session.getAttribute("session_user");
		newUser.setUserpw(request.getParameter("pw1"));
		newUser.setU_code(originUser.getU_code());
		if (!udao.updateUserPw(newUser)) {
			session.invalidate();
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('비밀번호가 변경되었습니다. 다시로그인 해주세요.');"
					+ " location.href='index.jsp';</script>");
			out.flush();
		} else {
			response.setCharacterEncoding("UTF-8");
			response.setContentType("text/html; charset=UTF-8");
			out.println("<script>alert('비밀번호 변경실패!!');"
					+ " location.href='history.go(-1)';</script>");
			out.flush();
		}
		return forward;
	}

}