package FrontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VerificationController
 */
@WebServlet("*.ve")
public class VerificationController extends HttpServlet implements Servlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public VerificationController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 actionVe(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 actionVe(request, response);
	}
	  private void actionVe(HttpServletRequest request, HttpServletResponse response)
		         throws ServletException, IOException {
		      String uri = request.getRequestURI();
		      String cp = request.getContextPath();
		      String action = uri.substring(cp.length());
		      ActionForward forward = null;
		      if(action.equals("/submitVer.ve")) {
		    	  try {
		              forward = new submitVerificationAction().execute(request, response);
		           } catch (Exception e) {
		              e.printStackTrace();
		           }
		      }
		      else {
		          forward = new ActionForward();
		          forward.setRedirect(false);
		          forward.setPath("/error/error404.jsp");
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
