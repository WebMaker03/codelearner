package FrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.ChallengesDAO;
import DAO.VerificationDAO;
import DTO.Challenges;
import DTO.MyC;
import DTO.Verification;

public class ShowVAction implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		ActionForward forward = new ActionForward(); 
		VerificationDAO vdao = new VerificationDAO();
		ChallengesDAO cdao = new ChallengesDAO();
		int v_code = Integer.parseInt(request.getParameter("v_code"));
		Verification v = new Verification();
		
		v = vdao.showV(v_code);
		MyC myc = cdao.callMyC(v.getMc_code());
		Challenges ch =cdao.getonechal(myc.getC_code());
		request.setAttribute("ch", ch);
		request.setAttribute("ver", v);
		forward.setRedirect(false);
        forward.setPath("Prochal_ViewDetail.jsp"); 
		return forward;
	}

}
