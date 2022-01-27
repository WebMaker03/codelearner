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

public class goBoardAction implements Action{

   @Override
   public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
      ActionForward forward= new ActionForward(); 
        
        int c_code = Integer.parseInt(request.getParameter("c_code"));
        System.out.println("c_Code"+ c_code);
      
        
        BoardDAO bdao =new BoardDAO();  
        ChallengesDAO cdao= new ChallengesDAO();
        ArrayList<Post> post = bdao.c_b (c_code);
        request.setAttribute("post", post);
       
        Challenges chal = cdao.getonechal(c_code);
        request.setAttribute("c_code",c_code);
        request.setAttribute("chal",chal);
        
       HttpSession session = request.getSession();
       Users user= (Users)session.getAttribute("session_user");
             
        MyC myc= cdao.callMyC(user.getU_code(),c_code);
        request.setAttribute("mychal",myc);
        
        forward.setRedirect(false); 
        forward.setPath("Board_Chall.jsp");
        return forward;
   }

}