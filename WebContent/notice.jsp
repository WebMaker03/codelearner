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
				<div class="card b-0 rounded-0 show">
					<div class="row justify-content-center mx-auto step-container">
						<div class="col-md-12 col-4 step-box active" id="main1">
							<h6 class="step-title-0" style="margin-top:10px">
								<span class="fa fa-circle"></span> <span class="break-line"></span>
								<span class="step-title" id="tkdlxm1"  >사이트 사용 방법 안내</span>
							</h6>
						</div>

					</div>
					<div class="container main" style="margin-bottom: 170px">

						<div class="container">
							<div class="sec" id="section1">
								<span class="section">회원정보 수정/확인 방법</span> <i
									class="fa fa-plus right"></i>
							</div>
							<div id="colp1" class="collapsable">
							   로그인  >> 마이페이지  >> 회원정보 수정/확인 버튼 클릭! <br><br>
							  회원정보 확인 페이지<br>                          
                                     ㄴ포인트 확인/내역 조회 가능합니다.
							    </div>
							<div class="sec" id="section2">
								<span class="section">챌린지 이용 방법</span> <i
									class="fa fa-plus right"></i>
							</div>
							<div id="colp2" class="collapsable">테마별 챌린지  >> 원하는 테마 선택  >> 도전하고 싶은 챌린지 신청! 
							<br>
							<br>
							도전하고 싶은 챌린지 신청 후<br>
                            실천 내용 기록과 인증이 가능합니다.
							</div>
							<div class="sec" id="section3">
								<span class="section">챌린지 인증 현황/이전기록 확인 방법</span> <i
									class="fa fa-plus right"></i>
							</div>
							<div id="colp3" class="collapsable">로그인  >> 마이페이지  >> 챌린지 현황  >> 보고싶은 챌린지 인증 보러가기 클릭!<br><br>
							진행중 챌린지 상세보기 페이지에서<br>
인증 목록/현황 확인과 기록이 가 합니다.
							</div>
						</div>



						<button name="next" id="next1"
							class="btn btn-success rounded-0 mb-5 next"
							style="margin-top: 70px">home</button>
					</div>
				</div>


			</div>
		</div>
	</div>



</body>
<jsp:include page="footer.jsp"></jsp:include>
<script type="text/javascript" src="js/notice.js"></script>
</html>