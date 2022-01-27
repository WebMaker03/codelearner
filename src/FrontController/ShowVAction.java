package FrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.VerificationDAO;
import DTO.Verification;

public class ShowVAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward(); 
		VerificationDAO vdao = new VerificationDAO();
		int v_code = Integer.parseInt(request.getParameter("v_code"));
		Verification v = new Verification();
		
		v = vdao.showV(v_code);
		request.setAttribute("ver", v);
		forward.setRedirect(false);
        forward.setPath("Prochal_ViewDetail.jsp"); 
		return forward;
	}

}
