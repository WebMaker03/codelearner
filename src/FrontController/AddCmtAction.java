package FrontController;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BoardDAO;
import DTO.Comments;
import DTO.Post;
import DTO.Users;

public class AddCmtAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward= null; 
		
		int p_code = Integer.parseInt(request.getParameter("p_code"));
		String cm_text = request.getParameter("cm_text");

		HttpSession session =request.getSession();
        Users user = (Users)session.getAttribute("session_user");
        
		BoardDAO bdao = new BoardDAO();
		Comments cm = new Comments();
		
		cm.setP_code(p_code);
		cm.setU_code(user.getU_code());
		cm.setCm_text(cm_text);

		if(bdao.insertCM(cm)) {			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();

			out.println("<script>alert('댓글 등록 성공');location.href='postDetail.bo?p_code="+p_code+"';</script>");
			

			out.flush();
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('댓글 등록 실패');location.href='postDetail.bo?p_code="+p_code+"';</script>");
			out.flush();
		}
		
        return forward;
	}

}
