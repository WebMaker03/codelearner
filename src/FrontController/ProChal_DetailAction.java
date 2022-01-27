
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
         
         MyC myC = cdao.callMyC(mc_code);
         request.setAttribute("pro_chal_m", myC);
         
         HttpSession session = request.getSession();
        Users user = (Users)session.getAttribute("session_user");
    
         VerificationDAO vdao = new VerificationDAO();
         ArrayList<Verification> vlist = vdao.showV(user.getU_code(),mc_code); 
         request.setAttribute("vlist", vlist);
         
         boolean check = vdao.CheckVerification(mc_code);
         request.setAttribute("Vcheck", check);
         
         
         // 인증 별점 % 계산 ( 전체 인증 개수 중 해당 별점이 가진 % 계산) -> mc_code 파라미터로 사용
         // int 리스트 객체 반환!
         ArrayList<Integer> VStar= vdao.CalcStar(mc_code);
         request.setAttribute("VStar", VStar);
         
         forward.setRedirect(false); 
         forward.setPath("Prochal_detail.jsp");
         return forward;
      
      
   }

}