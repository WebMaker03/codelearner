package FrontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("*.bo")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		actionDo(request, response);
	}
	
	private void actionDo(HttpServletRequest request, HttpServletResponse response)
		         throws ServletException, IOException {
			String uri = request.getRequestURI();
	      String cp = request.getContextPath();
	      String action = uri.substring(cp.length());
	      ActionForward forward = null;
	      
	      if (action.equals("/goBoard.bo")) { 
	         try {
	        	System.out.println("챌린지 게시판 화면 전환");
	            forward = new goBoardAction().execute(request, response);
	         } catch (Exception e) {
	            e.printStackTrace();
	         }


	      }else if (action.equals("/editBoard.bo")) {
	    	  try {
	    		  System.out.println("게시판 수정");
	    		  forward = new EditBoardAction().execute(request, response);
	    	  }catch(Exception e) {
	    		  e.printStackTrace();
	    	  }
	      }else if (action.equals("/deleteBoard.bo")) {
	    	  try {
	    		  System.out.println("게시판 삭제");
	    		  forward = new DeleteBoardAction().execute(request, response);
	    		  
	    	  }catch(Exception e) {
	    		  e.printStackTrace();
	    	  }

	      } else if(action.equals("/newPost.bo")) {
	    	  try {
		        	System.out.println("새로운 게시글 등록");
		            forward = new newPostAction().execute(request, response);
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
	            RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath()); // request  삺 苑   젟
	            dispatcher.forward(request, response);
	         }
	      }
	   }
	
	}

