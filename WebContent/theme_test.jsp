<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>테마 클릭 테스트 </h2>
	<%
		String theme = request.getParameter("theme");
		pageContext.setAttribute("theme",theme);
	%>
	선택된 테마 : ${theme}<br>
	선택된 테마 el : <c:out value="${theme}"></c:out>
	
</body>
</html>