package FrontController;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BoardDAO;
import DAO.ChallengesDAO;
import DTO.Challenges;
import DTO.MyC;
import DTO.Post;
import DTO.Users;

public class newPostAction implements Action{

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      ActionForward forward= new ActionForward(); 
       
      int c_code = Integer.parseInt(request.getParameter("c_code"));
        System.out.println("c_Code"+ c_code);
        
//        int u_code = Integer.parseInt(request.getParameter("u_code"));
//        System.out.println("u_Code"+ u_code);
        
        HttpSession session =request.getSession();
        Users user = (Users)session.getAttribute("session_user");
        System.out.println("u_Code"+ user.getU_code());
        
        ChallengesDAO cdao = new ChallengesDAO();
        
        MyC mc = cdao.callMyC(user.getU_code(), c_code);
        request.setAttribute("MyC", mc); //MyC 객체 저장
        
        Challenges ch =cdao.getonechal(mc.getC_code());
        request.setAttribute("Chal", ch); //MyC 객체 저장
        
        forward.setRedirect(false);
        forward.setPath("Board_write.jsp");
        return forward;
   }

}