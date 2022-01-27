package FrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UserDAO;
import DAO.VerificationDAO;
import DTO.Users;
import DTO.Verification;

public class submitVerificationAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      ActionForward forward= new ActionForward(); 
      Verification ver = new Verification();
      VerificationDAO vdao = new VerificationDAO();
      UserDAO udao = new UserDAO();
      int c_code = Integer.parseInt(request.getParameter("c_code"));
      int mc_code= Integer.parseInt(request.getParameter("mc_code"));
      System.out.println("c+code"+c_code);
      System.out.println("mc+code"+mc_code);
      
      System.out.println(request.getParameter("verRating"));
      System.out.println(request.getParameter("verReview"));
      
      int v_rating = Integer.parseInt(request.getParameter("verRating"));
      String v_review = request.getParameter("verReview");
      
      HttpSession session = request.getSession();
      Users user = (Users)session.getAttribute("session_user");

      ver.setU_code(user.getU_code());
      ver.setMc_code(mc_code);
      ver.setRating(v_rating);
      ver.setV_text(v_review);
      vdao.insertV(ver);          
      vdao.payback(c_code, user.getU_code());
      
      //세션 유저 업데이트
      Users user2 =udao.showUser(user.getUserid());
      session.setAttribute("session_user",user2);
      forward.setRedirect(false);
      forward.setPath("prochal_detail.ch?c_code="+c_code);
      return forward;
   }

}