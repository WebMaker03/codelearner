<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테마별 챌린지 상세페이지</title>


<link rel="stylesheet" href="css/theme.css">
<link rel="stylesheet" href="css/style.css">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- responsive-->
<link rel="stylesheet" href="css/responsive.css">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<!-- end portfolio -->
	<div class="we_doo">
		<div class="container" style="margin-top: 170px">
			<div class="row">
				<div class="col-md-12">
					<div class="titlepage text_align_center">
						<h2>${show_theme_name}</h2>
						<!-- foreach로 테마에 맞게 바뀌게 -->
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-md-12" style="margin-top: -100px">
					<div id="we1" class="carousel slide" data-ride="carousel"
						align="center">
						<ol class="carousel-indicators">
							<li data-target="#we1" data-slide-to="0" class="active"></li>
							<li data-target="#we1" data-slide-to="1"></li>
							<li data-target="#we1" data-slide-to="2"></li>
							<li data-target="#we1" data-slide-to="3"></li>
						</ol>
						<div class="carousel-inner">
										<tag:ch_show></tag:ch_show>
						</div>
						<a class="carousel-control-prev" href="#we1" role="button"
							data-slide="prev"> <i class="fa fa-angle-left"
							aria-hidden="true"></i> <span class="sr-only">Previous</span>
						</a> <a class="carousel-control-next" href="#we1" role="button"
							data-slide="next"> <i class="fa fa-angle-right"
							aria-hidden="true"></i> <span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end we_do -->
	<jsp:include page="footer.jsp"></jsp:include>
	<!-- Javascript files-->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
</body>
</html>