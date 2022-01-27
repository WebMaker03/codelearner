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
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- Mypage css -->
<link rel="stylesheet" href="css/Mypage.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="theme">
		<div class="container" style="margin-top: 100px; margin-bottom: 30px;">
			<h2 style="font-size: 40px;">
				<i class="fa fa-heart" aria-hidden="true" style="color:red;"></i> <strong> 마이페이지</strong>
			</h2>
			<br>
			<div class="row">

				<div class="col-md-8">
					<div class="card text-center" id="board">
						<div class="row">
							<div class="col-md-7 border-right no-gutters">
								<div class="py-3" style="margin-top:40px">
									<img src="https://i.imgur.com/hczKIze.jpg" width="100"
										class="rounded-circle">
									<h4 class="text-secondary" id="uname">${session_user.u_name}</h4>
									<h4 class="text-secondary" id="ucase">회원등급 : <i class="fa fa-universal-access fa-2x" aria-hidden="true" id="beige"></i></h4>
									<hr>
									<div class="stats">
										<div class="mt-4">
										<span id="point">현재 포인트는 </span><span id="point_d">${session_user.point}</span><span id="point">P 입니다.</span>
											
										</div>
									</div>
								</div>
							</div>
							<div class="col-md-5">
								<div class="py-3">
									<div>
										<span class="d-block head">ID</span> <span class="bottom">${session_user.userid}</span>
									</div>
									<div class="mt-4">
										<span class="d-block head">Age</span> <span class="bottom">${session_user.age}</span>
									</div>
									<div class="mt-4">
										<span class="d-block head">Email</span> <span class="bottom">${session_user.email}</span>
									</div>
									<div class="mt-4">
										<div class="px-3">
											<!--  눌렀을 때 회원수정 페이지로 이동 -->
											<button type="button" class="btn btn-primary disabled btn-block" onclick="location.href='ChangeInfo.jsp'" style="font-size: 18px;">Change Info</button>
										</div>
									</div>
									<div class="mt-4">
										<div class="px-3">
											<!--  눌렀을 때 비밀번호 페이지로 이동 -->
											<button type="button" class="btn btn-primary disabled btn-block"
											onclick="location.href='ChangePw.jsp'"
												style="font-size: 18px;">Change Password</button>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
		<hr>
		<div class="container" style="margin-top: 30px;">
			<h2 style="font-size: 40px;">
				<i class="fa fa-hashtag" aria-hidden="true" style="color:blue"></i> <strong> 나의 챌린지 현황</strong>
			</h2>
			<div class="row">
				<div class="col-md-6">
					<table class="table" id="pro_table">
						<caption style="font-size: 25px; caption-side: top;">
							<strong>진행중인 챌린지 </strong><i class="fa fa-hourglass-start" aria-hidden="true"></i>
							<span style="font-size: 20px; margin-left:240px; color:red;">${ProChalCnt}개 진행중</span>
						</caption>
						<thead id="my">
							<tr>
								<th scope="col">No.</th>
								<th scope="col">Challenge Info</th>
								<th scope="col"></th>
							</tr>
						</thead>
						<tbody>
							<tag:pro_chal></tag:pro_chal>
						</tbody>
					</table>
				</div>
				
				<div class="col-md-6">
					<table class="table" id="finChal_Table">
						<caption style="font-size: 25px; caption-side: top;">
							<strong>종료된 챌린지  </strong><i class="fa fa-hourglass-end" aria-hidden="true"></i>
							<span style="font-size: 20px; margin-left:280px; color:red;">${finChalCnt}개 완료</span>
						</caption>

						<thead id="my">
							<tr>
								<th scope="col">no.</th>
								<th scope="col">Title</th>
								<th scope="col">progress</th>
							</tr>
						</thead>
						<tbody>
							<tag:End_chal></tag:End_chal>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>

	<!-- footer start -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>