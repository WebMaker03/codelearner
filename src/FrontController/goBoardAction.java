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
      //	�Խñ� �����ͼ� request.Set�ؾߵ�.
        
        BoardDAO bdao =new BoardDAO(); // boardDao���� �ش������� �ش� ç������ �ۼ��� �Խñ� 
        // u_code ��  c_code �Ѱ� ��ߤ�������
      /*  HttpSession session =request.getSession();
        Users user = (Users)session.getAttribute("session_user");*/
        ArrayList<Post> post = bdao.c_b (c_code);
        request.setAttribute("post", post);
        
        request.setAttribute("c_code",c_code);
        
        
        forward.setRedirect(false); // �����ϴ°��� ������ false, ������ true 
        forward.setPath("Board_Chall.jsp");
        return forward;
	}

}
