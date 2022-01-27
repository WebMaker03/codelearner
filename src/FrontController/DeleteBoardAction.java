package FrontController;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BoardDAO;
import DTO.Post;

public class DeleteBoardAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = null;
		int p_code = Integer.parseInt(request.getParameter("p_code"));

		BoardDAO bdao = new BoardDAO();
		
		Post p = bdao.getOneP(p_code);
		System.out.println("delete Action");
		//bdao.delP(p_code);
		
		if(bdao.delP(p_code)) {			
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('게시글 삭제 성공');location.href='goBoard.bo?c_code="+p.getC_code()+"';</script>");
			out.flush();
		}else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('게시글 삭제 실패');location.href='goBoard.bo?c_code="+p.getC_code()+"';</script>");
			out.flush();
		}
		return forward;
		
	}

}
