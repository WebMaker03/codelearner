
<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재 참가중인 챌린지 상세보기 화면 & 인증 파트</title>

<link rel="stylesheet" href="css/Prochal_detail.css">
<!-- responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">




</head>
<body>
   <jsp:include page="header.jsp"></jsp:include>
   <div class="theme">
      <div class="container_prochal"
         style="margin-top: 80px; margin-bottom: 30px;">
         <div class="row" style="margin-top: 30px; margin-left: 100px;">
            <div class="col-12 col-md-7">
               <h2 id="start_title">
                  <strong>[ 진행 중 챌린지 상세보기 ]</strong>
               </h2>
               <!-- 챌린지 상세보기 카드 -->
               <div class="card p-3" id="prochal_card">
                  <div class="row">
                     <div class="col-12 col-md-5">
                        <img id="img_show" src="images/health.jpg" alt="My Image">
                     </div>
                     <div class="col-12 col-md-7 py-2 px-3">
                        <span id="challenge_title"> <i class="fa fa-hashtag"
                           aria-hidden="true"></i></i> &nbsp ${pro_chal_D.c_name}
                        </span>
                        <p class="font-weight-bold my-2">June 26</p>
                        <h6>${pro_chal_D.info}</h6>
                      <!--   <h6 class="mb-3">Introducing iPhone XS, iPhone XS Max and
                           iPhone XR - Apple</h6>
                        <p>iPhone XS impresses with its screen - 5.8 inch OLED
                           display Super Retina opens new frontiers of the virtual world,
                           increased area, brightness and depth - this is...</p> -->
                        <div class="d-flex mt-2 mb-3">
                           <!-- <button class="btn">오늘 인증하기!</button> -->
                           <button type="button" class="btn btn-danger"
                              data-toggle="modal" data-target="#modalBox">인증하기</button>

                           <button type="button" class="btn btn-danger" onClick="location.href='goBoard.bo?c_code=${pro_chal_D.c_code}'" style="margin-left: 10px" id="btn_b">게시판가기</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

         <div class="row" style="margin-left: -50px;">
            <div class="col-lg-6 mb-4" style="margin-left: 100px;">
               <div class="card shadow mb-4" id="card2">
                  <div class="card-header py-3" id="card2_header">
                     <h6 class="m-0 font-weight-bold text-primary">인증 목록</h6>
                  </div>
                  <div class="center" id="card2_body">
                  
               <!-- 인증 목록 표 파트 -->
               <div class="center" id="page-content">
    <div class="row">
        <div class="row container d-flex justify-content-center">
            <div class="row" style="margin-left:10px">
                <div class="center"  style="width : 500px">
                    <div class="card-body">

                        <div class="table-responsive">
                            <table class="table table-hover" >
                                <thead>
                                    <tr>
                                        <th>날짜</th>
                                        <th>별점</th>
                                    <th>상세보기</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tag:showV></tag:showV>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

                  <!-- 인증 목록 표 파트 끝 -->
                     <!-- 인증 현황 body -->


                  </div>
               </div>
            </div>

            <!-- 인증 현황 파트  -->
            <div class="col-lg-3 mb-4">
               <div class="card shadow mb-4" id="card3">
                  <div class="card-header py-3" id="card3_header">
                     <h6 class="m-0 font-weight-bold text-primary">인증 현황</h6>
                  </div>
                  <div class="card-body" id="card3_body">
                     <h4 class="font-weight-bold">
                        별점 1 <span class="float-right">10%</span>
                     </h4>
                     <div class="progress mb-4">
                        <div class="progress-bar bg-danger" role="progressbar"
                           style="width: 10%" aria-valuenow="10" aria-valuemin="0"
                           aria-valuemax="100"></div>
                     </div>
                     <h4 class="font-weight-bold">
                        별점 2 <span class="float-right">20%</span>
                     </h4>
                     <div class="progress mb-4">
                        <div class="progress-bar bg-warning" role="progressbar"
                           style="width: 20%" aria-valuenow="20" aria-valuemin="0"
                           aria-valuemax="100"></div>
                     </div>
                     <h4 class="font-weight-bold">
                        별점 3 <span class="float-right">20%</span>
                     </h4>
                     <div class="progress mb-4">
                        <div class="progress-bar" role="progressbar" style="width: 20%"
                           aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
                     </div>
                     <h4 class=" font-weight-bold">
                        별점 4 <span class="float-right">40%</span>
                     </h4>
                     <div class="progress mb-4">
                        <div class="progress-bar bg-info" role="progressbar"
                           style="width: 40%" aria-valuenow="40" aria-valuemin="0"
                           aria-valuemax="100"></div>
                     </div>
                     <h4 class=" font-weight-bold">
                        별점 5 <span class="float-right">10%</span>
                     </h4>
                     <div class="progress">
                        <div class="progress-bar bg-success" role="progressbar"
                           style="width: 10%" aria-valuenow="10" aria-valuemin="0"
                           aria-valuemax="100"></div>
                     </div>
                  </div>
               </div>
            </div>
         </div>

      </div>

   </div>

   <!-- modal -->
   <div class="modal fade" id="modalBox" tabindex="-1" role="dialog"
      aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-dialog-centered" role="document">
         <div class="modal-content">
            <div class="text-right cross">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><i class="fa fa-times mr-2"></i></span></button>
            </div>
            <div class="card-body text-center">
               <img src=" https://i.imgur.com/d2dKtI7.png" height="100"
                  width="100">
               <div class="comment-box text-center">
                  <h4>오늘 하루 챌린지 도전 기록을 남겨보세요!</h4>
                  <div class="rating">
                     <input type="radio" name="rating" value="5" id="5"><label
                        for="5">☆</label> <input type="radio" name="rating" value="4"
                        id="4"><label for="4">☆</label> <input type="radio"
                        name="rating" value="3" id="3"><label for="3">☆</label>
                     <input type="radio" name="rating" value="2" id="2"><label
                        for="2">☆</label> <input type="radio" name="rating" value="1"
                        id="1"><label for="1">☆</label>
                  </div>
                  <div class="comment-area">
                     <textarea class="form-control" id="review" placeholder="what is your view?"
                        rows="4"></textarea>
                  </div>
                  <div class="text-center mt-4">
                     <button class="btn btn-success send px-5" id="submitBtn" >
                        등록하기 <i class="fa fa-long-arrow-right ml-1"></i>
                     </button>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <!--  form submit -->
         <form name="verSub" method="post" action="submitVer.ve">
      <input type="hidden" id="verRating" name="verRating" value="rating">
      <input type="hidden" id="verReview" name="verReview" value="review">
      </form>
   <jsp:include page="footer.jsp"></jsp:include>

</body>
<script type="text/javascript" src="js/modal.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="js/bootstrap.js"></script>

</html>