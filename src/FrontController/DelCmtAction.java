package FrontController;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BoardDAO;
import DTO.Comments;
import DTO.Post;

public class DelCmtAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		int cm_code = Integer.parseInt(request.getParameter("cm_code"));

		BoardDAO bdao = new BoardDAO();
		
		Comments cm = bdao.getOneCM(cm_code); 
	
		System.out.println("cmt delete Action");
		if(bdao.delCM(cm_code)) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('댓글 삭제 성공');location.href='postDetail.bo?p_code="+cm.getP_code()+"';</script>");
			out.flush();
			
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('댓글 삭제 실패');location.href='postDetail.bo?p_code="+cm.getP_code()+"';</script>");
			out.flush();
		}
				
		return forward;
		
		
	}

}
