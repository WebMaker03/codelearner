package FrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;

import DTO.Users;
public class SignUpAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward= new ActionForward(); 
		
		UserDAO udao = new UserDAO();
		Users newUser = new Users();
		
		newUser.setUserid(request.getParameter("id"));
		newUser.setUserpw(request.getParameter("pw1"));
		newUser.setU_name(request.getParameter("userName"));
		newUser.setAge(Integer.parseInt(request.getParameter("userAge")));
		newUser.setEmail(request.getParameter("userEmail"));
		
		udao.SignUp(newUser);
		
		forward.setRedirect(true); 
		request.getSession().setAttribute("msg", "회원가입이 완료되었습니다.");
		forward.setPath("main.etc");


	/*	if(udao.SignUp(newUser)) {
			forward.setRedirect(false);
			request.getSession().setAttribute("msg", "회원가입 실패");
			forward.setPath("Main.jsp");
		}	else {
			forward.setRedirect(true); // true- 반환하는 객체 없음 / false-반환하는 객체가 있음을 의미
			request.getSession().setAttribute("msg", "회원가입을 축하합니다.");
			forward.setPath("Main.jsp");
			
			// 성공 메세지 출력??
			
		};*/

		return forward;
		
	}

}