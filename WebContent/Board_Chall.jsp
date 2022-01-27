<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib tagdir="/WEB-INF/tags" prefix="tag"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap css -->

<link rel="stylesheet" href="css/theme_detail_test.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>


<div class="container d-flex justify-content-center mt-40 mb-50" >
    <div class="w-100 overflow-auto order-2 order-md-1" style="margin-top: 170px">
        <div class="card-group-control card-group-control-right">
            
           <tag:chal_board></tag:chal_board>
           
           <!-- 임시 게시글 등록 버튼 -->
           <input type="button" class="btn btn-primary disabled"value="게시글 등록" onClick="location.href='newPost.bo?c_code=${c_code}'">
      
        </div>
    </div>
</div>




</body>
<script
	src=https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js></script>
<script
	src=https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</html>