package FrontController;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ChallengesDAO;
import DTO.Challenges;
import DTO.MyC;

public class StartChallengeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		ActionForward forward =null;
		if (session.getAttribute("session_user") == null) {
			response.setContentType("text/html; charset=UTF-8");
			response.setCharacterEncoding("UTF-8");
			out.println("<script>alert('로그인해주세요!!');location.href='login.jsp';</script>");
			out.flush();
			
		} else {
			forward = null;
			ChallengesDAO cdao = new ChallengesDAO();
			int u_code = Integer.parseInt(request.getParameter("u_code"));
			ArrayList<MyC> checkMyC = cdao.prochal(u_code);
			int c_code = Integer.parseInt(request.getParameter("c_code"));
			Challenges ch = cdao.getonechal(c_code);
			if(cdao.checkChallengeRepeat(u_code,c_code)) {
				response.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				out.println("<script>alert('fail');location.href='calltheme.ch?theme="+ ch.getTheme()+"'</script>");
				out.flush();
				
			}else {
				int chFee = ch.getFee();
				cdao.start_ch(ch, u_code);
				cdao.updateUserPoint(chFee, u_code);
				response.setCharacterEncoding("UTF-8");
				response.setContentType("text/html; charset=UTF-8");
				out.println("<script>alert('success');location.href='calltheme.ch?theme="+ ch.getTheme()+"'</script>");
				out.flush();
				
				
			}
		}
		return forward;
	}

}
