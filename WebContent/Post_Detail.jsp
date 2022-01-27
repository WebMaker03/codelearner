<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Post_Detail.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="container_jonn" >
		
		<div class="d-flex justify-content-center row" >
			<div class="comment" style="margin-top: 200px" >
				<div
					class="d-flex flex-row align-items-center text-left comment-top p-2 bg-white border-bottom px-4">
					<div class="profile-image">
						<i class="fa fa-book" aria-hidden="true"></i>
					</div>
					<div class="d-flex flex-column ml-3">
						<div class="d-flex flex-row post-title">
							<h1>작성된 게시글 제목</h1>
							<span class="ml-2">(작성한 사람 이름)</span>
						</div>
						<div
							class="d-flex flex-row align-items-center align-content-center post-title">
							<span>작성된 시간(6 hours ago)</span>
						</div>

					</div>
				</div>
				<div class="coment-bottom bg-white p-2 px-4" style="height: 200px;">
					<p class="comment-text">Lorem ipsum dolor sit amet, consectetur
						adipiscing elit, sed do eiusmod tempor incididunt ut labore et
						dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
						exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat.</p>
				</div>
				<div class="coment-bottom bg-white p-2 px-4">
					<div class="d-flex flex-row add-comment-section mt-4 mb-4">
						<input
							type="text" class="search"
							placeholder="자신의 의견을 작성해보세요!">
						<button type="button" class="btn btn-link">완료!</button>
					</div>
					<div class="collapsable-comment">
						<div
							class="d-flex flex-row justify-content-between align-items-center action-collapse p-2"
							data-toggle="collapse" aria-expanded="false"
							aria-controls="collapse-1" href="#collapse-1">
							<span>댓글 보기</span><i class="fa fa-chevron-down servicedrop"></i>
						</div>
						<div id="collapse-1" class="collapse">
							<div class="commented-section mt-2">
								<div class="d-flex flex-row align-items-center commented-user">
									<h5 class="mr-2">작성자 1</h5>
									<span class="dot mb-1"></span><span class="mb-1 ml-2">4
										hours ago</span>
								</div>
								<div class="comment-text-sm">
									<span>Lorem ipsum dolor sit amet, consectetur adipiscing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua. Ut enim ad minim veniam, quis nostrud
										exercitation ullamco laboris nisi ut aliquip ex ea commodo
										consequat.</span>
								</div>
								<ul class="nav justify-content-end">
									<button type="button" class="btn btn-link">수정</button>
									<button type="button" class="btn btn-link">삭제</button>
								</ul>

							</div>
							<hr>
							<div class="commented-section mt-2">
								<div class="d-flex flex-row align-items-center commented-user">
									<h5 class="mr-2">작성자 2</h5>
									<span class="dot mb-1"></span><span class="mb-1 ml-2">5
										hours ago</span>
								</div>
								<div class="comment-text-sm">
									<span>Lorem ipsum dolor sit amet, consectetur adipiscing
										elit, sed do eiusmod tempor incididunt ut labore et dolore
										magna aliqua..</span>
								</div>
								<ul class="nav justify-content-end">
									<button type="button" class="btn btn-link">수정</button>
									<button type="button" class="btn btn-link">삭제</button>
								</ul>

							</div>
							<hr>
							<div class="commented-section mt-2">
								<div class="d-flex flex-row align-items-center commented-user">
									<h5 class="mr-2">작성자 3</h5>
									<span class="dot mb-1"></span><span class="mb-1 ml-2">10
										hours ago</span>
								</div>
								<div class="comment-text-sm">
									<span>Nunc sed id semper risus in hendrerit gravida
										rutrum. Non odio euismod lacinia at quis risus sed. Commodo
										ullamcorper a lacus vestibulum sed arcu non odio euismod. Enim
										facilisis gravida neque convallis a. In mollis nunc sed id.
										Adipiscing elit pellentesque habitant morbi tristique senectus
										et netus. Ultrices mi tempus imperdiet nulla malesuada
										pellentesque.</span>
								</div>
								
								<ul class="nav justify-content-end">
									<button type="button" class="btn btn-link">수정</button>
									<button type="button" class="btn btn-link">삭제</button>
								</ul>
							</div>
							<hr>
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