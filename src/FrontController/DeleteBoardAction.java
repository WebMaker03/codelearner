package FrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BoardDAO;

public class DeleteBoardAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		int p_code = Integer.parseInt(request.getParameter("p_code"));
		
		BoardDAO bdao = new BoardDAO();
		bdao.delP(p_code);
		
		request.setAttribute("p_code", p_code);
		
		forward.setRedirect(false);
		forward.setPath("Board_Chall.jsp");// 프론트랑 연결 필요!
		
		return forward;
	}

}
