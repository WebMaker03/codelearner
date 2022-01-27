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
 * Servlet implementation class EtcController 화면 시작, 전환, 기타 작업 을 위한 Controller
 * 
 */
@WebServlet("*.etc")
public class EtcController extends HttpServlet {
   private static final long serialVersionUID = 1L;

   /**
    * @see HttpServlet#HttpServlet()
    */
   public EtcController() {
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

      if (action.equals("/start.etc")) {
         try {

            forward = new StartAction().execute(request, response);
         } catch (Exception e) {
            e.printStackTrace();
         }

      } else if (action.equals("/main.etc")) {
         try {

            forward = new MainAction().execute(request, response);
         } catch (Exception e) {
            e.printStackTrace();
         }
      }else if (action.equals("/showchal.etc")) {
         try {

            forward = new Show_chalAction().execute(request, response);
         } catch (Exception e) {
            e.printStackTrace();
         }
      }else if(action.equals("/mypage.etc")) {
    	  try {
              forward = new ShowMyPageAction().execute(request, response);
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