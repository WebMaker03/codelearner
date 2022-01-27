package FrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BoardDAO;
import DTO.Comments;
import DTO.Post;

public class DelCmtAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		int cm_code = Integer.parseInt(request.getParameter("cm_code"));

		BoardDAO bdao = new BoardDAO();
		
		Comments cm = bdao.getOneCM(cm_code);
		System.out.println("cmt delete Action");
		bdao.delCM(cm_code);
		
		request.setAttribute("cm_code", cm_code);
		
		forward.setRedirect(false);
		forward.setPath("");
		
		return forward;
	}

}
