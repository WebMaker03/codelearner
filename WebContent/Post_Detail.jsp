<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Post_Detail.css">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- responsive-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container_jonn" >
		
		<div class="d-flex justify-content-center row" >
			<div class="comment" style="margin-top: 200px">
				<div
					class="d-flex flex-row align-items-center text-left comment-top p-2 border-bottom px-4" id="po" >
					<div class="profile-image">
					 			<i class="fa fa-pencil-square fa-3x" aria-hidden="true" style="color:blue"></i>
					</div>
					<div class="d-flex flex-column ml-3">

						<div class="d-flex flex-row post-title" id="post">
							<h1 style="font-weight: bold;">제목 : &nbsp </h1>
							<h1 style="font-weight: bold;">${post.p_title}</h1>
							<span id="postname" class="ml-2">${writer.u_name}</span>
						</div>

					</div>
					<a href="goBoard.bo?c_code=${post.c_code}"><i class="fa fa-arrow-circle-left fa-2x" id="backicon" aria-hidden="true"></i><span id="back">이전 화면으로!</span></a>
				</div>
				<div class="coment-bottom bg-white p-2 px-4" style="height: 200px;">

					<p class="comment-text">${post.p_text}</p>
				</div>
				<div class="coment-bottom bg-white p-2 px-4">
					<div class="d-flex flex-row add-comment-section mt-4 mb-4">
						<form method = "post" action="addCmt.bo" id="cmtForm" >
						<input type = "hidden" name = "p_code" value ="${post.p_code}"> 
						<input	type="text" class="search" name="cm_text" style="
    font-size: 20px;
"
							placeholder="자신의 의견을 작성해보세요!">
						<button type="submit" form="cmtForm" class="btn btn-link" style="display: contents">완료!</button>
						</form>
					</div>
					<div class="collapsable-comment">
						<div
							class="d-flex flex-row justify-content-between align-items-center action-collapse p-2"
							data-toggle="collapse" aria-expanded="false"
							aria-controls="collapse-1" href="#collapse-1" id="post" style=" font-size: 17px; font-weight: bold;">
							<span>댓글 보기</span><i class="fa fa-chevron-down servicedrop"></i>
						</div>

						<div id="collapse-1" class="collapse" >

							<tag:cmt_show></tag:cmt_show>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	

</body>
<script	src=https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>
<script src="js/jquery.min.js"></script>
<script	src=https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js></script>
<script src="js/bootstrap.bundle.min.js"></script>

</html>