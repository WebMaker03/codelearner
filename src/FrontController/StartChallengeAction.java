package FrontController;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ChallengesDAO;
import DAO.UserDAO;
import DTO.Challenges;
import DTO.MyC;
import DTO.Users;

public class StartChallengeAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		ActionForward forward =null;
		UserDAO udao = new UserDAO();
		Users user = (Users)session.getAttribute("session_user");
		if (session.getAttribute("session_user") == null) {
			response.setContentType("text/html; charset=UTF-8");
			response.setCharacterEncoding("UTF-8");
			out.println("<script>alert('로그인을 하세요!');location.href='login.jsp';</script>");
			out.flush();
			
		} else {
			forward = null;
			ChallengesDAO cdao = new ChallengesDAO();
			int u_code = user.getU_code();
			int u_point = user.getPoint();
			int c_code = Integer.parseInt(request.getParameter("c_code"));
			Challenges ch = cdao.getonechal(c_code);
				if(ch.getFee()<u_point) {
					if(cdao.checkChallengeRepeat(u_code,c_code)) {
						response.setCharacterEncoding("UTF-8");
						response.setContentType("text/html; charset=UTF-8");
						out.println("<script>alert('이미 참가중인 챌린지 입니다.');location.href='calltheme.ch?theme="+ ch.getTheme()+"'</script>");
						out.flush();
					}else {
						int chFee = ch.getFee();
						cdao.updateUserPoint(chFee, u_code);
						cdao.start_ch(ch, u_code);
						Users user2 = udao.showUser(user.getUserid());
						session.setAttribute("session_user", user2);

						response.setCharacterEncoding("UTF-8");
						response.setContentType("text/html; charset=UTF-8");
						out.println("<script>alert('참가 신청 완료되었습니다.');location.href='calltheme.ch?theme="+ ch.getTheme()+"'</script>");
						out.flush();
					}
					
				}else {
					response.setCharacterEncoding("UTF-8");
					response.setContentType("text/html; charset=UTF-8");
					out.println("<script>alert('point가 부족합니다!');location.href='calltheme.ch?theme="+ ch.getTheme()+"'</script>");
					out.flush();
				}
		}
		return forward;
	}

}
