<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.css">

<!-- responsive-->
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/SignUp.css">

<title>Insert title here</title>
</head>
<body>
	<div class="container_join">
		<div class="d-flex justify-content-center">
			<form class="sign-up" method="post" action="updateuser.do">
				<h2 class="heading mb-6" id="signupTitle">회원정보 수정</h2>

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
			

				 <br> <br>
				<div id="signupbtn">
					<input type="submit" class="signupbtn" id="signup_btn" value="수정완료"
						onclick="button1_click();">
					<!-- onclick이랑 frm.submit() 부분 필요 -->
					<button type="button" class="signupbtn" id="signup_btn"
						onclick="location.href='mypage.etc'">EXIT</button>
					<!-- onclick이랑 frm.submit() 부분 필요 -->
				</div>
				
			</form>


		</div>

	</div>

</body>
<script type="text/javascript" src="js/signUp.js"></script>
<script>
function button1_click() {
	console.log("버튼1을 누르셨습니다.");
	/*  frm.submit(); */
}
</script>

</html>