package FrontController;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ChallengesDAO;
import DTO.Challenges;

public class StartChallengeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		ActionForward forward = new ActionForward();
		if (session.getAttribute("session_user") == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('로그인부터 진행하세요!!');location.href='login.jsp';</script>");
			out.flush();
			
		} else {
			forward = new ActionForward();
			ChallengesDAO cdao = new ChallengesDAO();
			int c_code = Integer.parseInt(request.getParameter("c_code"));
			Challenges ch = cdao.getonechal(c_code);
			String u_code = request.getParameter("u_code");

			cdao.start_ch(ch, u_code);

			forward.setRedirect(false);
			forward.setPath("calltheme.ch?theme=" + ch.getTheme());
		}
		return forward;
	}

}
