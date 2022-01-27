package FrontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import DAO.UserDAO;

/**
 * Servlet implementation class FrontController
 */
@WebServlet("*.do")
public class UserController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UserController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uri = request.getRequestURI();
		String cp = request.getContextPath();
		String action = uri.substring(cp.length());
		response.setContentType("text/html;charset=UTF-8");
		ActionForward forward = null;

		if (action.equals("/checkid.do")) {
			String userid = request.getParameter("userId");
			System.out.println(userid);

			JSONObject obj = new JSONObject();
			UserDAO udao = new UserDAO();

			if (udao.checkId(userid)) {
				obj.put("result", "0");
			} else {
				obj.put("result", "1");
			}
			response.getWriter().print(obj);
		} else if (action.equals("/signup.do")) { 

			try {
				forward = new SignUpAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (action.equals("/showuser.do")) { 
			try {
				forward = new ShowUserAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (action.equals("/updateuser.do")) {

			try {
				forward = new UpdateUserAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (action.equals("/updatepw.do")) {

			try {
				forward = new UpdateUserPasswordAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}  else if (action.equals("/login.do")) { 
			try {
				forward = new LoginAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (action.equals("/logout.do")) { 
			try {
				forward = new LogoutAction().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}

		else {

		
		}

		if (forward != null) {

			if (forward.isRedirect()) {

				response.sendRedirect(forward.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		}
	}
}