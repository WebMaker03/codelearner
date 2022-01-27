<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<link rel="stylesheet" href="css/theme.css">
<link rel="stylesheet" href="css/style.css">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- responsive-->
<link rel="stylesheet" href="css/responsive.css">
</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>



	<div class="theme">
		<div class="container" style="margin-top: 70px">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage text_align_left">
						<h2>Challenge Theme</h2>
					</div>
					<h2 style="margin-bottom: 50px;">** 참가하고자 하는 챌린지 테마를 선택해주세요 **</h2>
				</div>

			</div>
			<div class="row">
				<div class="col-md-6 rounded">
					<div id="ho_nf" class="theme_main text_align_left">
						<figure>
							<img id="theme" src="images/health.jpg" alt="#" />
							<div class="theme_text">
								<div class="li_icon">

								<!-- 1 운동 -->
									<a href="calltheme.ch?theme=운동"><i

										class="fa fa-search" aria-hidden="true"></i></a>
									<!-- <a href="Javascript:void(0)"><i class="fa fa-link" aria-hidden="true"></i></a> -->
								</div>
								<h3>운동</h3>
								<p id="themeinfo">
									건강할 때 건강함을 지키는 것도 의외로 대단한 결단이 필요하다" 라는 말이 있습니다. <br> 우리 모두
									현재는 건강하더라도 지금의 건강이 영원할 수 있도록 도전합시다
								</p>
							</div>
						</figure>
					</div>
				</div>
				<div class="col-md-6">
					<div id="ho_nf" class="theme_main text_align_left">
						<figure>
							<img id="theme" src="images/life_cycle.jpg" alt="#" />
							<div class="theme_text">
								<div class="li_icon">

									<a href="calltheme.ch?theme=생활습관"><i

										class="fa fa-search" aria-hidden="true"></i></a>
									<!-- <a href="Javascript:void(0)"><i class="fa fa-link" aria-hidden="true"></i></a> -->
								</div>
								<h3>생활습관</h3>
								<p id="themeinfo">
									의식적으로 좋은 습관을 형성하려고 노력하지 않으면 자신도 모르는 사이 좋지 못한 습관을 지니게 됩니다.<br>
									평소에도 좋은 생활 습관을 유지할 수 있도록 주의를 기울여야 합니다.
								</p>
							</div>
						</figure>
					</div>
				</div>
				<div class="col-md-6">
					<div id="ho_nf" class="theme_main text_align_left">
						<figure>
							<img id="theme" src="images/Reading.png" alt="#" />
							<div class="theme_text">
								<div class="li_icon">

									<a href="calltheme.ch?theme=독서"><i

										class="fa fa-search" aria-hidden="true"></i></a>
									<!-- <a href="Javascript:void(0)"><i class="fa fa-link" aria-hidden="true"></i></a> -->
								</div>
								<h3>독서</h3>
								<p id="themeinfo">
									책은 글쓴이의 삶을 들여다 보는것과 같다라는 말이있습니다.<br>남이 고생하여 얻은지식을 쉽게 내 것으로
									만들수 있는 독서, 하루15분만 투자해도 연말에는 분명 그 변화가 느껴질 것 입니다.
								</p>
							</div>
						</figure>
					</div>
				</div>
				<div class="col-md-6">
					<div id="ho_nf" class="theme_main text_align_left">
						<figure>
							<img id="theme" src="images/study.png" alt="#" />
							<div class="theme_text">
								<div class="li_icon">

								<!-- 4 공부 -->
									<a href="calltheme.ch?theme=공부"><i class="fa fa-search"

										aria-hidden="true"></i></a>
									<!-- <a href="Javascript:void(0)"><i class="fa fa-link" aria-hidden="true"></i></a> -->
								</div>
								<h3>공부</h3>
								<p id="themeinfo">
									성공한 사람보다는 가치있는 사람이 되라.<br> 자신의 몸과 건강을 지키는 것도 좋지만 내 돌봄이 필요한
									사람을 돕는건 그것보다 더 값진일 이라고 생각합니다.<br>
								</p>
							</div>
						</figure>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end theme -->

	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>