package FrontController;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ChallengesDAO;
import DTO.Challenges;

public class Show_chalAction implements Action {

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
   
         ActionForward forward= new ActionForward(); 
         
         int c_code = Integer.parseInt( request.getParameter("chalCode"));
         
         ChallengesDAO cdao = new ChallengesDAO();
         Challenges ch = cdao.getonechal(c_code);
         
         request.setAttribute("challenge",ch);
         forward.setRedirect(false); 
         forward.setPath("Chall_Detail.jsp");
         return forward;
   }

}