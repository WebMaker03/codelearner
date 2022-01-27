
package FrontController;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.ChallengesDAO;
import DAO.VerificationDAO;
import DTO.Challenges;
import DTO.MyC;
import DTO.Users;
import DTO.Verification;

public class ProChal_DetailAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward= new ActionForward(); 
         
         int c_code = Integer.parseInt( request.getParameter("c_code"));
         int mc_code = Integer.parseInt(request.getParameter("mc_code"));
         
         ChallengesDAO cdao = new ChallengesDAO();
         Challenges ch = cdao.getonechal(c_code);
         request.setAttribute("pro_chal_c",ch);
         
         //mc_code 값 알고 있으니까 ..객체 반환
         MyC myC = cdao.callMyC(mc_code);
         request.setAttribute("pro_chal_m", myC);
         
         HttpSession session = request.getSession();
 		 Users user = (Users)session.getAttribute("session_user");
 	
         VerificationDAO vdao = new VerificationDAO();
         ArrayList<Verification> vlist = vdao.showV(user.getU_code(),mc_code); //usercode랑 c_Code
         request.setAttribute("vlist", vlist);
         
         //해당 챌린지가 오늘 인증가능한지 검사! 인증 가능하면 TRUE, 인증 불가하면 FALSE
         boolean check = vdao.CheckVerification(mc_code);
         request.setAttribute("Vcheck", check);
         
         forward.setRedirect(false); 
         forward.setPath("Prochal_detail.jsp");
         return forward;
		
		
	}

}
