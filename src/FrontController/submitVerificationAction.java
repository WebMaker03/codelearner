package FrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.VerificationDAO;
import DTO.Users;
import DTO.Verification;

public class submitVerificationAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      ActionForward forward= new ActionForward(); 
      Verification ver = new Verification();
      VerificationDAO vdao = new VerificationDAO();
      Users user = new Users();
      
      System.out.println(request.getParameter("verRating"));
      System.out.println(request.getParameter("verReview"));
      
      int v_rating = Integer.parseInt(request.getParameter("verRating"));
      String v_review = request.getParameter("verReview");
      //      HttpSession session = request.getSession();
//      user = (Users)session.getAttribute("session_user");
//      
//      ver.setU_code(user.getU_code());
      ver.setU_code(1);
      ver.setMc_code(3);
      // �� �ΰ� ��� �޾ƿñ�...
      ver.setRating(v_rating);
      ver.setV_text(v_review);
      
      vdao.insertV(ver);
      forward.setRedirect(false);
      forward.setPath("Prochal_detail.jsp");
      return forward;
   }

}