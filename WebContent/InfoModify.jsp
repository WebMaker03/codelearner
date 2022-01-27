<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<div></div>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/style.css">
<!-- responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- theme css -->
<link rel="stylesheet" href="css/theme.css">
<!-- Mypage css -->
<link rel="stylesheet" href="css/InfoModify.css">


</head>
<body>

	<jsp:include page="header.jsp"></jsp:include>

	<div class="theme">
		<div class="container1"
			style="margin-top: 100px; margin-bottom: 30px;">
			<h2 style="font-size: 40px;">
				<strong>회원정보 수정</strong>
			</h2>
			<br>
			<div class="padding container d-flex justify-content-center">
				<div class="col-md-10 col-md-offset-1">
					<form class="signup-form">
						<h2 class="text-center">Chage Information</h2>
						<hr>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Name"
								required="required">
						</div>
						<div class="form-group">
							<input type="email" class="form-control" placeholder="ID"
								required="required">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Password"
								required="required">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Age"
								required="required">
						</div>
						<div class="form-group">
							<input type="text" class="form-control" placeholder="Email"
								required="required">
						</div>
						<div class="row">
							<div class="col">
								<div class="form-group text-center" style="float:left;">
									<button type="button" class="btn btn-blue btn-block">회원탈퇴</button>
								</div>
							</div>
							<div class="col">
								<div class="form-group text-center" style="float: right;">
									<button type="submit" class="btn btn-blue btn-block">회원정보
										수정</button>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>




	<!-- footer start -->
	<jsp:include page="footer.jsp"></jsp:include>

</body>
</html>