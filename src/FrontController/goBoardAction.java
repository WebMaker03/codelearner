package FrontController;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BoardDAO;
import DAO.ChallengesDAO;
import DTO.Challenges;
import DTO.Post;
import DTO.Users;

public class goBoardAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward= new ActionForward(); 
        
        int c_code = Integer.parseInt(request.getParameter("c_code"));
        System.out.println("c_Code"+ c_code);
      //	게시글 가져와서 request.Set해야됨.
        
        BoardDAO bdao =new BoardDAO(); // boardDao에서 해당유저가 해당 챌린지에 작성한 게시글 
        // u_code 랑  c_code 넘겨 줘야ㅏㅏㅏㅏ
      /*  HttpSession session =request.getSession();
        Users user = (Users)session.getAttribute("session_user");*/
        ArrayList<Post> post = bdao.c_b (c_code);
        request.setAttribute("post", post);
        
        request.setAttribute("c_code",c_code);
        
        
        forward.setRedirect(false); // 저장하는값이 있으면 false, 없으면 true 
        forward.setPath("Board_Chall.jsp");
        return forward;
	}

}
