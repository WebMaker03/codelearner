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

<div class="container_join">
		<div class="d-flex justify-content-center">
			<form class="sign-up" method="post" action="signup.do">
				<h2 class="heading mb-6" id="signupTitle">Sign Up</h2>
				<!--  ID -->
				<div class="form-group fone mt-5">
					<div class="input-group is-invalid">
						<div class="input-group-prepend">
							<span class="input-group-text" id="InputArea"
								style="width: 120px;">ID</span>
						</div>
						<input type="text" class="form-control is-invalid" maxlength="20"
							placeholder="ID를 입력하세요" aria-describedby="InputArea" required
							name="id">
							<!--  <input type="button" class="Idcheckbtn"
							style="margin-left: 6px; text-align: center;" value="중복확인 "> -->
					</div>

					<div class="check_font" id="id_check">
						<!--  alert -->
					</div>
				</div>
				<!--  PW -->
				<div class="form-group fone mt-4">
					<div class="input-group is-invalid">
						<div class="input-group-prepend">
							<span class="input-group-text" id="passwordArea"
								style="width: 120px;">비밀번호</span>
						</div>
						<input type="password" class="form-control is-invalid"
							maxlength="20" placeholder="비밀번호를 입력하세요"
							aria-describedby="passwordArea" required name="pw1">
					</div>
					<div class="check_font" id="pw_check">
						<!--  alert -->
					</div>
				</div>
				<!--  PW2 -->
				<div class="form-group fone mt-4">
					<div class="input-group is-invalid">
						<div class="input-group-prepend">
							<span class="input-group-text" id="passwordCheckArea"
								style="width: 120px;">비밀번호 확인</span>
						</div>
						<input type="password" class="form-control is-invalid"
							maxlength="20" placeholder="비밀번호를 입력하세요"
							aria-describedby="passwordCheckArea" required name="pw2">
					</div>
					<div class="check_font" id="pw2_check">
						<!--  alert -->
					</div>
				</div>
				<!--  name  -->
				<div class="form-group fone mt-4">
					<div class="input-group is-invalid">
						<div class="input-group-prepend">
							<span class="input-group-text" id="nameArea"
								style="width: 120px;">이름</span>
						</div>
						<input type="text" class="form-control is-invalid" maxlength="20"
							placeholder="이름을 입력하세요" aria-describedby="nameArea" required
							name="userName">
					</div>
					<div class="check_font" id="name_check">
						<!--  alert -->
					</div>
				</div>


				<!--  E-mail  -->
				<div class="form-group fone mt-4">
					<div class="input-group is-invalid">
						<div class="input-group-prepend">
							<span class="input-group-text" id="passwordArea"
								style="width: 120px;">이메일</span>
						</div>
						<input type="text" class="form-control is-invalid" maxlength="40"
							placeholder="이메일을 입력하세요" aria-describedby="passwordArea" required
							name="userEmail">
					</div>
					<div class="check_font" id="email_check">
						<!--  alert -->
					</div>
				</div>
				<!--  Age  -->
				<div class="form-group fone mt-4">
					<div class="input-group is-invalid">
						<div class="input-group-prepend">
							<span class="input-group-text" id="AgeArea"
								style="width: 120px;">나이</span>
						</div>
						<input type="text" class="form-control is-invalid" maxlength="40"
							placeholder="나이를 입력하세요" aria-describedby="AgeArea" required
							name="userAge">
					</div>
					<div class="check_font" id="age_check">
						<!--  alert -->
					</div>
				</div>
			

				<input type="checkbox" class="form-check-input ml-0"
					id="exampleCheck1">
					 <label class="form-check-label ml-4" for="exampleCheck1">
					 I agree to Stoke <u>Terms</u> and <u>Privacy Policy</u></label> <br> <br>
				<div id="signupbtn">
					<input type="submit" class="signupbtn" id="signup_btn" value="회원가입"
						onclick="button1_click();">
					<!-- onclick이랑 frm.submit() 부분 필요 -->
				</div>
				<p class="exist mt-2" style="text-align: center;">
					Existing user? <a href="login.jsp"><span>Log in</span></a>
				</p>
			</form>


		</div>

	</div>

</body>
</html>