<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/about.css">

<!-- responsive-->
<link rel="stylesheet" href="css/responsive.css">


<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!--  start header -->
	<jsp:include page="header.jsp"></jsp:include>

	<section id="team">
		<div class="container" style="margin-top: 150px">
			<div class="section-header" id="service">
				<h3> ★ Meet Our Service ★</h3>
				<hr>
				<!-- 명언 문구 -->
					<p style="font-size:20px; color:#000000; font-weight: bold; background-color: #D7F2F9;"><br><br>위대한 일을 위해서 <br>
					대단한 도전이 필요하지 않다.<br> 
단지 순간순간의 작은 도전이 모여<br>
위대한 일을 이루어 간다.<br><br> -모션 코치-</p>
				<br>
				
				<p style="margin-top: 30px; font-size: 20px; font-weight: bold; ">챌린지
					러너는 여러분들의 목표달성을 응원합니다! 
					</p>
				<p id="meetService" style="margin-top: 30px; font-size: 20px; font-weight: bold; ">
					챌린지 러너는 자신이 끝까지 못 이룰것 같을 때 찾아주시는 페이지 입니다!<br>
					<br>자신이 혼자 목표를 세워서 끝까지 이루는 사람은 별로 없을 것 입니다.<br>
					<br>매일 출석체크를 하고 게시글을 쓰고, 다른 사람들과 똑같은 목표를 같이 이뤄간다면 끝까지 할 수 있을 것 입니다.<br>
					<br>이런 것을 도와주는것이 챌린지 러너 페이지 입니다.<br>
				</p>
				
			</div>
		</div>

		<div class="container" style="margin-top: 20px">
			<div class="section-header">
				<h3>★ Meet Our Team ★</h3>
				<hr>
				<p style="margin-top: 30px">FrontEnd</p>
			</div>
			<div class="row justify-content-md-center">
				<div class="col-lg-3 col-md-6 wow fadeInUp"
					style="visibility: visible; animation-name: fadeInUp;">
					<div class="member">
						<img src="images/onyou.jpg" class="img-fluid"
							alt="">
						<div class="member-info">
							<div class="member-info-content">
								<h4>Kang On Yu</h4>
								<h4> 강 온 유 </h4>
								<span>Frontend Developer</span>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s"
					style="visibility: visible; animation-delay: 0.1s; animation-name: fadeInUp;">
					<div class="member">
						<img src="images/f_2.png" class="img-fluid"
							alt="">
						<div class="member-info">
							<div class="member-info-content">
								<h4> Yu Ae Rim </h4>
								<h4> 유 애 림 </h4>
								<span>Frontend Developer</span>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s"
					style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
					<div class="member">
						<img src="images/f_3.png" class="img-fluid"
							alt="">
						<div class="member-info">
							<div class="member-info-content">
								<h4> Yoon Su Jeong </h4>
								<h4> 윤 수 정 </h4>
								<span>Frontend Developer</span>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="section-header">
				<hr>
				<p style="margin-top: 30px">BackEnd</p>
			</div>


			<div class="row">
				<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s"
					style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
					<div class="member">
						<img src="images/sj.jpg" class="img-fluid"
							alt="">
						<div class="member-info">
							<div class="member-info-content">
								<h4> Kim Seung Joo</h4>
								<h4> 김 승 주 </h4>
								<span>Project Manager</span>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s"
					style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
					<div class="member">
						<img src="images/sj1.png" class="img-fluid"
							alt="">
						<div class="member-info">
							<div class="member-info-content">
								<h4> Lee Jae Hyun</h4>
								<h4> 이 재 현</h4>
								<span>BackEnd Developer</span>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s"
					style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
					<div class="member">
						<img src="images/sj2.jpeg" class="img-fluid"
							alt="">
						<div class="member-info">
							<div class="member-info-content">
								<h4> Jang Soo Hyun</h4>
								<h4> 장 수 현 </h4>
								<span>Backend Developer</span>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.2s"
					style="visibility: visible; animation-delay: 0.2s; animation-name: fadeInUp;">
					<div class="member">
						<img src="images/sj3.jpg" class="img-fluid"
							alt="">
						<div class="member-info">
							<div class="member-info-content">
								<h4> Hyun Seok Ho </h4>
								<h4>현 석 호 </h4>
								<span>Backend Developer</span>
								<div class="social">
									<a href=""><i class="fa fa-twitter"></i></a> <a href=""><i
										class="fa fa-facebook"></i></a> <a href=""><i
										class="fa fa-google-plus"></i></a> <a href=""><i
										class="fa fa-linkedin"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
	</section>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>