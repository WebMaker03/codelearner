package FrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BoardDAO;
import DTO.Post;

public class EditBoardAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		String p_title = request.getParameter("p_title");
		int p_code = Integer.parseInt(request.getParameter("p_code"));
		 
		BoardDAO bDAO = new BoardDAO();
		
		bDAO.updateP_title(p_title, p_code);
		
		request.setAttribute("p_code", p_code);
		request.setAttribute("p_title", p_title);
        
		
        forward.setRedirect(false);
        forward.setPath("Board_Chall.jsp"); 
		return forward;
	}

}
