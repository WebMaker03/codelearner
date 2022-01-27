package FrontController;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BoardDAO;
import DTO.Comments;
import DTO.Post;
import DTO.Users;

public class PostDetailAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		ActionForward forward= new ActionForward();
		
		int p_code = Integer.parseInt(request.getParameter("p_code"));
		System.out.println("p_code"+ p_code);
		
		HttpSession session =request.getSession();
        Users user = (Users)session.getAttribute("session_user");
		
		// 게시글 정보 받아오기
		BoardDAO bdao = new BoardDAO();
		Post p = bdao.getOneP(p_code);
		
		request.setAttribute("post", p);
 
		// 게시글 별 댓글 정보 list로 받아오기
		ArrayList<Comments> cList = bdao.getAllcomments(p_code);
		ArrayList<Users> uList = bdao.getCwriters(cList);
		
		request.setAttribute("cList", cList);
		request.setAttribute("uList", uList);
		
		forward.setRedirect(false);
		forward.setPath("Post_Detail.jsp");
		
		return forward;
	}

}
