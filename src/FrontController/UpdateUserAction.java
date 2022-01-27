package FrontController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UserDAO;
import DTO.Users;

public class UpdateUserAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward= new ActionForward(); //��ü�� �̸� ����
		
		UserDAO udao = new UserDAO();
		Users newUser = new Users();
		Users loginUser = new Users();
		String pwCheck = "";
		if(loginUser.getUserpw()== pwCheck) {	
			newUser.setUserid(request.getParameter("updateName"));
			newUser.setUserpw(request.getParameter("updateEmail"));
			newUser.setAge(Integer.parseInt(request.getParameter("updateAge")));
			newUser.setUserid(loginUser.getUserid());
			
			if(udao.updateUser(newUser)) {
				forward.setRedirect(false);
				request.getSession().setAttribute("msg", "ȸ������ ���� ����");
				forward.setPath("Main.jsp");
			}	else {
				forward.setRedirect(true); // true- ��ȯ�ϴ� ��ü ���� / false-��ȯ�ϴ� ��ü�� ������ �ǹ�
				request.getSession().setAttribute("msg", "ȸ������ ���� �Ϸ�");
				forward.setPath("Main.jsp");
			};
			
		} else {
			request.getSession().setAttribute("msg", "��й�ȣ�� Ȯ�����ּ���.");
			// �����ϱ� �� �������� �̵�.
			//out.println("<script>history.go(-1);</script>");
		}
		return forward;
	}
}