package FrontController;

import javax.servlet.http.HttpSession;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LogoutAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ActionForward forward =null;
		//���ǿ� ����ִ� ���� �ʱ�ȭ
		
		HttpSession session =request.getSession();
		session.invalidate(); // ���� ����, �޸� ������ ������ �ƴ϶� �ش� ���� ���� ��ȿȭ��� ������ ��Ȯ
		//session.removeAttribute("uid"); �̷��� �ص� ��. �̰� �Ӽ��� ����, ������ �������.
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('�α׾ƿ� �Ǿ����ϴ�!'); location.href='main.jsp';</script>");
		out.flush(); 
		
	/*	response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<script>alert('�α׾ƿ� �Ǿ����ϴ�.');</script>");*/
		
		return forward;
	}
	
}