<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- basic -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- mobile metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="initial-scale=1, maximum-scale=1">
<!-- site metas -->
<title>Challenge Runner</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/style.css">
<!-- responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- awesome fontfamily -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
</head>
<!-- body -->
<body class="utmain-layo">


	<jsp:include page="header.jsp"></jsp:include>

	<!-- start slider section -->
	<div id="top_section" class="banner_main">
		<div class="container" style="margin-top: 80px">
			<div class="myCarouselSize">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
					</ol>

					<div class="carousel-inner">
						<div class="carousel-item active">
							<div class="container-fluid">
								<div class="carousel-caption relative">
									<div class="bluid">
										<h1 id="inslide_title">
										Welcome to<br>
											<span style="font-style: oblique; color: blue;">C</span>hallenge
											<span style="font-style: oblique; color: blue;">R</span>unner
										</h1>
										<hr>
										<p style="text-align: center; color: black; font-weight: bold; font-size: 18px;">
											챌린지 러너에 오신걸 환영합니다! <br>챌린지 러너를 통해서
											자신의 목표를 이뤄보세요!
											자세한 설명은 사이트 소개를 이용해보세요!
										</p>
									</div>
								</div>
							</div>
						</div>

						<div class="carousel-item">
							<div class="container-fluid">
								<div class="carousel-caption relative">
									<div class="bluid">
										<h1>
											Do With <br>
											<span style="font-style: oblique; color: blue;">C</span>hallenge
											<span style="font-style: oblique; color: blue;">R</span>unner
										</h1>
										<hr>
										<p style="font-weight: bold; text-align: center; font-size: 18px;">
											Challenge Runner supports your goals. <br>Join Challenge
											Runner right now! Please use the site introduction for more details.
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- end slider section -->


		<jsp:include page="footer.jsp"></jsp:include>

		<!-- end footer -->
		<!-- Javascript files-->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.bundle.min.js"></script>
		<script src="js/jquery-3.0.0.min.js"></script>
		<script src="js/custom.js"></script>
</body>
</html>