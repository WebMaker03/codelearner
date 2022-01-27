<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="css/Board_write.css">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- responsive-->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container px-4 py-5 mx-auto">
		<h1 id="page_name">[ 게시글 작성하기 ]</h1>
		<div class="row d-flex justify-content-center">
			<div class="card" id="boa">
				<form method="post" action="addPost.bo">

				<div class="row px-3">
					<div class="flex-column">
						<h3 class="mb-0 font-weight-normal" id="writer_name" style="font-size: 30px">${Chal.c_name}</h3>

					</div>
					<div class="flex-column">
					<h2 class="mb-0 font-weight-normal" id="writer_theme" style="font-size: 20px; margin-top: 13px;"> 작성자 : ${session_user.u_name}</h2>
					</div>
				</div>
				<hr>
				<textarea class="form-control" id="form_c" required rows="1" name="p_title" placeholder="제목을 입력하세요!"></textarea>
				<div class="row px-3 form-group">
					<textarea class="text-muted bg-light mt-4 mb-3"
						placeholder="내용을 작성해주세요!!" name = "p_text"
						style="font-size: 20px; height: 500px;" ></textarea>
				</div>
				<input type="hidden" name= "c_code" value="${Chal.c_code}">
				<div class="row px-3">
				<input type="submit" id="submitbutton" class="btn btn-outline-primary" value="작성완료" />
				<!--  <button class="btn btn-success send px-5" id="submitBtn" > -->
				<!-- <button type="button" id="checkbutton" class="btn btn-outline-primary" onClick="location.href=">등록하기</button> 
				 -->
				<button type="button" id="backbutton" class="btn btn-outline-primary" onclick="history.go(-1)">취소하기</button>
				</div>
				</form>
				
			</div>
		</div>
	</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src=https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js></script>
<script src=https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</html>