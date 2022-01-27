<%@page import="DTO.Post"%>
<%@page import="DTO.MyC"%>
<%@page import="DTO.Comments"%>
<%@page import="DAO.BoardDAO"%>
<%@page import="DTO.Challenges"%>
<%@page import="java.util.ArrayList"%>
<%@page import="DAO.ChallengesDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="DAO.UserDAO"%>
<%@page import="DTO.Users" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
/*
ChallengesDAO cdao = new ChallengesDAO();
MyC myc = new MyC();
myc.setU_code(1);
System.out.println(cdao.cntprochal(myc.getU_code()));
*/
BoardDAO bdao = new BoardDAO();
Post post = new Post();
post.setP_text("내용 수정");
bdao.updateP_text(post.getP_text(), 1);
System.out.println(post.getP_text());




/*
	BoardDAO bdao = new BoardDAO();
	Board boa = new Board();
	boa.setB_code(1);
	boa.setC_code(1);
	System.out.println(bdao.cntP(boa.getC_code()));
	*/
	/*
	BoardDAO bdao = new BoardDAO();
	Comments cm = new Comments();
	
	cm.setP_code(1);
	System.out.println(bdao.cntCM(cm.getP_code()));
	*/

//	UserDAO udao = new UserDAO();
//	Users us = new Users();
	/*
		us.setU_code(1);
		us.setId("wogus2");
		us.setPw("0640");
		us.setU_name("이재현");
		us.setEmail("z0640@naver.com");
		us.setAge(25);
		us.setPoint(5000);
		
		udao.SignUp(us);
		*/
	//	System.out.println(udao.checkId("wogus2"));
		
		/*
		ChallengesDAO cDAO = new ChallengesDAO();
		Challenges ch = new Challenges();
		String theme = "테마";
		
		ArrayList<Challenges> car=cDAO.theme_chal(theme);
		for(int i=0;i<car.size();i++){
		System.out.println(car.get(i).getC_name());
		
		ch.setC_code(1);
		ch.setC_name("돌봄");
		ch.setFee(5000);
		ch.setPeriod(50000);
		ch.setTheme("테마");
		
		cDAO.start_ch(ch);
		
		}
		ChallengesDAO chdao = new ChallengesDAO();
		System.out.println(chdao.byebyechallenge());
		*/
%>

</body>
</html>