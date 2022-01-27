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
			<form class="sign-up" method="post" action="updatepw.do">
				<h2 class="heading mb-6" id="signupTitle">비밀번호 변경</h2>
				<!--  ORIGINALPW -->
				<div class="form-group fone mt-4">
					<div class="input-group is-invalid">
						<div class="input-group-prepend">
							<span class="input-group-text" id="passwordArea"
								style="width: 120px;">이전 비밀번호</span>
						</div>
						<input type="hidden" name="userId" value="${session_user.userid}">
						<input type="password" class="form-control is-invalid"
							maxlength="20" placeholder="이전 비밀번호를 입력하세요"
							aria-describedby="passwordArea" required name="pw">
					</div>
					<div class="check_font" id="pwCheck">
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
							maxlength="20" placeholder="변경하실 비밀번호를 입력하세요"
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
							maxlength="20" placeholder="변경하실 비밀번호를 입력하세요"
							aria-describedby="passwordCheckArea" required name="pw2">
					</div>
					<div class="check_font" id="pw2_check">
						<!--  alert -->
					</div>
				</div>
				 <br> <br>
				<div id="signupbtn">
				<!--  비밀번호수정 -->
					<input type="submit" class="signupbtn" id="submit" value="수정완료"
						onclick="button1_click();">
				<!--  뒤로가기 -->
					<button type="button" class="signupbtn" id="cancel"
						onclick="location.href='mypage.etc'">EXIT</button>
				<!--  회원탈퇴버튼 -->
					<button type="button" class="signupbtn" id="delete"
						onclick="location.href='delete.do'">회원탈퇴</button>
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