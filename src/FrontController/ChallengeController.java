package FrontController;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ChallengeController
 */
@WebServlet("*.ch")
public class ChallengeController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#HttpServlet()
    */
   public ChallengeController() {
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
      System.out.println("action get");
	   actionDo(request, response);
      
   }

   /**
    * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
    *      response)
    */
   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      // TODO Auto-generated method stub
	   System.out.println("action post");
	   actionDo(request, response);
      
   }

   private void actionDo(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
      String uri = request.getRequestURI();
      String cp = request.getContextPath();
      String action = uri.substring(cp.length());
      ActionForward forward = null;
      response.setContentType("text/html;charset=UTF-8");
      
      if (action.equals("/calltheme.ch")) { 
         try {
            forward = new CallThemeAction().execute(request, response);
         } catch (Exception e) {
            e.printStackTrace();
         }

      }else if (action.equals("/showchal.ch")) { 
         try {
            System.out.println("test");
            forward = new Show_chalAction().execute(request, response);
         } catch (Exception e) {
            e.printStackTrace();
         }

      }else if(action.equals("/startchal.ch")) {
    	  try {
    		  System.out.println("start");
    		  forward = new StartChallengeAction().execute(request, response);
    	  } catch (Exception e) {
    		  e.printStackTrace();
    	  }
    	  
      }else if(action.equals("/prochal_detail.ch")) {
    	  try {
    		  System.out.println("진행중 챌린지 상세보기 페이지 전환");
    		  forward = new ProChal_DetailAction().execute(request, response);
    	  } catch (Exception e) {
    		  e.printStackTrace();
    	  }
    	  
      }else if(action.equals("/goBoard.ch")) {
    	  try {
    		  System.out.println("진행중 챌린지 게시판 페이지 전환");
    		  forward = new goBoardAction().execute(request, response);
    	  } catch (Exception e) {
    		  e.printStackTrace();
    	  }
    	  
      }else if(action.equals("/showV.ch")) {
    	  try {
    		  System.out.println("인증화면 상세보기");
    		  forward = new ShowVAction().execute(request, response);
    	  }catch(Exception e) {
    		  
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