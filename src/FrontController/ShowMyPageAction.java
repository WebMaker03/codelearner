package FrontController;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ChallengesDAO;
import DAO.UserDAO;
import DTO.Challenges;
import DTO.MyC;
import DTO.Users;

public class ShowMyPageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward= new ActionForward(); 
		ChallengesDAO cdao = new ChallengesDAO();
		/*UserDAO  udao = new UserDAO();
		Users user = udao.showUser(userid);*/
		HttpSession session = request.getSession();
		Users user = (Users)session.getAttribute("session_user");

		ArrayList<MyC> myClist = cdao.prochal(user.getU_code());
		request.setAttribute("pro_chalList", myClist);
		ArrayList<Challenges> Clist = cdao.getChalName(myClist);
		request.setAttribute("pro_chalList_C", Clist); 
		
		ArrayList<MyC> EndList= cdao.finchal(user.getU_code());
		request.setAttribute("end_chalList", EndList);
		
		ArrayList<Integer> endPercent = cdao.endPercentage(EndList);
		request.setAttribute("endPercent", endPercent);
		
		ArrayList<Challenges> EndList_D = cdao.getChalName(EndList);
		request.setAttribute("end_chalList_D", EndList_D);
		
		// 진행중 챌린지 개수 반환
		int ProChalCnt= cdao.cntprochal(user.getU_code());
		request.setAttribute("ProChalCnt", ProChalCnt);
		
		// 종료된 챌린지 개수 반환
		int finChalCnt= cdao.cntfinchal(user.getU_code());
		request.setAttribute("finChalCnt", finChalCnt);
		
		forward.setRedirect(false); 
		forward.setPath("mypage.jsp");
		return forward;
		
	}

}
