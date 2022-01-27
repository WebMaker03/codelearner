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

<link rel="stylesheet" type="text/css"  href="css/board.css">
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
    	<div class="row">
    	<i class="fa fa-list-alt fa-3x" id="boardicon"  aria-hidden="true"></i>
    	<span id="board_t"> ${chal.c_name} 게시판!</span>
    	   <input type="button" class="btn btn-primary disabled" value="게시글 등록" id="addBtn" onClick="location.href='newPost.bo?c_code=${c_code}'">
           <button type="button" class="btn btn-info" id="backBtn" onClick="location.href='prochal_detail.ch?c_code=${c_code}&&mc_code=${mychal.mc_code}'">이전 페이지로!</button><!--진행중 챌린지 상세보기로 돌아감 c_code & mc_code -->
    	</div>
        <div class="card-group-control card-group-control-right">
            
           <tag:chal_board></tag:chal_board>
           
           <!-- 임시 게시글 등록 버튼 -->
        </div>
    </div>
</div>




</body>
<script
	src=https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>

<script src="js/jquery.min.js"></script>
<script
	src=https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js></script>
<script src="js/bootstrap.bundle.min.js"></script>
</html>