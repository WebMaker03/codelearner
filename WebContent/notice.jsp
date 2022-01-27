<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>


<link rel="stylesheet" href="css/notice.css">



<meta charset="UTF-8">
<title>사이트 이용방법</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>

	<div class="container-fluid px-1 py-5 mx-auto">
		<div class="row d-flex justify-content-center text-center">
			<div class="col-lg-9 col-md-10" style="margin-top: 170px">
				<div class="center"
					style="border: #7BBBD6 solid 3px; box-shadow: 0px 0px 0px 0px; border-radius: 10px; background-color: #ffffff">
					<div class="row justify-content-center mx-auto step-container">
						<div class="col-md-12 col-4 step-box active" id="main1">
							<h6 class="step-title-0" style="margin-top: 10px">
								<span class="fa fa-circle" style="color: #C3EAF1"></span> <span
									class="break-line"></span> <span class="sstep-title"
									id="tkdlxm1">사이트 사용방법 안내</span>
							</h6>
						</div>

					</div>
					<div class="container main" style="margin-bottom: 170px">

						<div class="center">
							<div class="sec" id="section1">
								<span class="section">회원가입&회원정보 수정/확인/탈퇴 방법</span> <i
									class="fa fa-plus right" style="font-size: larger"></i>
							</div>
							<div id="colp1" class="collapsable">
								<div style="font-weight: bold; font-size: 20px;">회원가입</div>
								<br> 
								<img src="images/main1.png" style="width:600px; height:400px;"> <br>
								<br>	
								<i class="fa fa-hand-o-right mr-2 mt-0-20 pull-left">&nbsp;사이트
									상단에 sign up 페이지에서 개인 정보 입력 후 회원가입이 가능합니다.</i> <br>
									<br>	
								<img src="images/signup.png" style="width:600px; height:400px;"> <br>
								<br> <i class="fa fa-hand-o-right mr-2 mt-0-20 pull-left">&nbsp;PASSWORD는
									영문&숫자 4~12 자리로 입력할 수 있습니다.</i><br> ㄴ잘못 입력 시 입력칸 아래 경고 메세지가
								뜹니다. <br>
								<br> <i class="fa fa-hand-o-right mr-2 mt-0-20 pull-left">
									<span style="line-height: 1.5;"> 이름은 한글, 이메일은 이메일 형식에 맞게, 나이는 숫자로 입력한 뒤 회원가입 버튼을 누르면 회원가입이
									완료됩니다.</i><br> ㄴ 입력 오류 시 회원가입이 진행되지 않습니다. <br> </span>
								<br>
								<hr>
								<div style="font-weight: bold; font-size: 20px;">회원정보
									수정/확인/탈퇴</div><br>
								<img src="images/changinfo.png" style="width:600px; height:400px;"> <br>
								<br> 로그인 >> 마이페이지 >> 회원정보 수정/확인 버튼 클릭! <br>
								<br> <i class="fa fa-hand-o-right mr-2 mt-0-20 pull-left">&nbsp;회원정보
									확인</i><br> ㄴ 개인 정보 / 포인트 확인/내역 조회 가능합니다. <br>
									<br>
								<img src="images/pwchang.png" style="width:600px; height:400px;"> <br>
								<br> <i class="fa fa-hand-o-right mr-2 mt-0-20 pull-left">&nbsp;
									회원 탈퇴</i><br> ㄴ비밀번호 수정 페이지에서 회원 탈퇴가 가능합니다.
							</div>
							<div class="sec" id="section2">
								<span class="section">챌린지 이용 방법</span> <i
									class="fa fa-plus right" style="font-size: larger"></i>
							</div>
							<div id="colp2" class="collapsable">
							
								<div style="font-weight: bold; font-size: 20px;">챌린지 이용 방법</div><br> 
								
								<br> <i class="fa fa-hand-o-right mr-2 mt-0-20 pull-left">&nbsp;
									챌린지 신청</i><br> 테마별 챌린지 >> 원하는 테마 선택 >> 도전하고 싶은 챌린지 신청!<br>
								<br><br>
									<img src="images/theme1.PNG" style="width:600px; height:400px;"> <br>
									<br>
									<img src="images/theme2.PNG" style="width:600px; height:400px;"> <br>
								<br>
									<img src="images/theme3.PNG" style="width:600px; height:400px;"> <br>
									
									<br><br> ㄴ도전하고 싶은 챌린지 신청 후 실천 내용 기록과 인증이 가능합니다.
									<br>(단, 해당 챌린지 선결제 포인트보다 사용자의 보유 포인트가 적을 시 신청 불가합니다.)
									<br>
									<br>
									<span style="color:red;">** 도전하고 싶은 챌린지 신청 후 신청 내역은 마이페이지에서 조회 가능합니다 **</span>
									
								<br>
								<br> <i class="fa fa-hand-o-right mr-2 mt-0-20 pull-left">&nbsp;
									챌린지 조회</i><br> 
								 사용자의 챌린지 진행 / 종료 현황은 마이페이지에서 조회 가능합니다. <br><br>
								 <img src="images/mypage.PNG" style="width:600px; height:400px;"> <br>
								 <br>
								 
								 ㄴ진행중인 챌린지의 경우 해당 챌린지의 인증하기 버튼 클릭 시 해당 챌린지의 상세보기 및 1일1인증이 가능합니다
								<br> <br>ㄴ1일 1회 인증만 가능하며 인증 시 일정 포인트가 지급됩니다. 
								<br><br><span style="color:red;">( 100% 인증 완료 시 선결제 했던 포인트는 모두 반환됩니다!! )</span>
								<br><br> 챌린지 종료 시 해당 챌린지는 종료된 챌린지로 처리되며 인증이 불가합니다.<br><br>
								<br><br>
								<i class="fa fa-hand-o-right mr-2 mt-0-20 pull-left">&nbsp;
									게시판 사용방법</i><br> 해당 챌린지에 참가중인 여러 사용자들과 자유롭게 소통할 수 있는 공간입니다. <br>
									마이페이지 >> 진행중 챌린지 선택 >> 인증하기 >> 게시판 가기<br><br>
								 <img src="images/board_page.png" style="width:600px; height:400px;"> <br>
								<br>
								ㄴ해당 챌린지 게시판에 등록된 글을 열람할 수 있으며 게시글 작성 및 댓글 작성이 가능합니다. 
								<span style="color:red;">(** 욕설과 비방글은 신고 대상이 될 수 있습니다 **)</span>
								
								
							</div>
							<div class="sec" id="section3">
								<span class="section">챌린지 인증 현황/이전기록 확인 방법</span> <i
									class="fa fa-plus right" style="font-size: larger"></i>
							</div>
							<div id="colp3" class="collapsable">
								로그인 >> 마이페이지 >> 진행중 챌린지 현황 >> 보고싶은 챌린지 인증 보러가기 클릭!<br>
								<br> 진행중 챌린지 상세보기 페이지에서<br> 인증 목록/현황 확인과 기록이 가능 합니다.<br><br>
								<img src="images/verufi.png" style="width:600px; height:400px;"> <br>
								<br>
								<span style="color:blue; font-size:20px;">	챌린지 러너는 여러분들의 습관개선 및 목표달성을 응원합니다!<br>
									여러분 모두  챌린지 100% 성공에 도전해보세요!! </span>

							</div>
						</div>


						<button onclick="location.href='main.etc'" name="next" id="next1"
							class="button" style="margin-top: 70px">home</button>
					</div>
				</div>


			</div>
		</div>
	</div>



</body>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript" src="js/notice.js"></script>

</html>