<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib tagdir="/WEB-INF/tags" prefix="tag" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- Mypage css -->
<link rel="stylesheet" href="css/Mypage.css">

</head>
<body>

   <jsp:include page="header.jsp"></jsp:include>

   <div class="theme">
      <div class="container1" style="margin-top: 80px; margin-bottom: 30px;">
         <h2 style="font-size: 40px;">
            <strong>마이페이지</strong>
         </h2>
         <br>
         <div class="row">
            <div class="col">
                        <div class="card p-2 text-center">
                           <div class="row">
                              <div class="col-md-7 border-right no-gutters">
                                 <div class="py-3">
                                    <img src="https://i.imgur.com/hczKIze.jpg" width="100" class="rounded-circle">
                                    <h4 class="text-secondary">${session_user.u_name}</h4>
                                    <div class="stats">
                                       <div class="mt-4">
                                          <div class="cardP">현재 포인트는 ${session_user.point}P입니다.</div>
                                          <div class="px-3">
                                             <button type="button" class="btn btn-light btn-block"
                                                style="margin-left: 35px; width: 350px; font-size: 20px;">Point
                                                recharge</button>
                                          </div>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                              <div class="col-md-5">
                                 <div class="py-3">
                                    <div>
                                       <span class="d-block head">ID</span> <span class="bottom">${session_user.userid}</span>
                                    </div>
                                    <div class="mt-4">
                                       <span class="d-block head">Age</span> <span class="bottom">${session_user.age}</span>
                                    </div>
                                    <div class="mt-4">
                                       <span class="d-block head">Email</span> <span
                                          class="bottom">${session_user.email}</span>
                                    </div>
                                    <div class="mt-4">
                                       <div class="px-3">
                                          <button type="button" class="btn btn-light btn-block"
                                             style="font-size: 18px;">Change Info</button>
                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </div>
            </div>
            <div class="col">

               <div class="card"
                  style="width: 300px; height: 355px; margin-left: 100px;">
                  <div class="card-body">
                     <a href="#" class="btn btn-light"
                        style="margin-top: 30px; margin-left: 40px;"> 작성한 게시글 & 댓글</a><br>
                     <a href="#" class="btn btn-light"
                        style="margin-top: 20px; margin-left: 40px;"> 게시글 저장 목록 </a> <br>
                     <a href="#" class="btn btn-light"
                        style="margin-top: 20px; margin-left: 40px;"> 인증현황 보러가기 </a>
                  </div>
               </div>
     
         </div>
      </div>
</div>
   <hr>
   <div class="container1" style="margin-top: 30px;">
      <h2 style="font-size: 40px;">
            <strong>나의 챌린지 현황</strong>
         </h2>
      <div class="row">
         <div class="col">
            <table class="table" style="width: 600px; margin-top: 30px; margin-bottom: 100px; color: black; text-align: center; background-color: white;">
               <caption style="font-size: 25px; caption-side: top;">
                  <strong>진행중인 챌린지</strong>
                  <div align="right" style="font-size: 18px;">___개 진행중</div>
               </caption>
               <thead>
                  <tr>
                     <th scope="col">no.</th>
                     <th scope="col">Title</th>
                     <th scope="col"></th>
                  </tr>
               </thead>
               <tbody>
                  <tag:pro_chal></tag:pro_chal>
               </tbody>
            </table>
         </div>
         <div class="col">
            <table class="table"
               style="width: 600px; margin-top: 30px; color: black; text-align: center; background-color: white;">
               <caption style="font-size: 25px; caption-side: top;">
                  <strong>종료된 챌린지</strong>
                  <div align="right" style="font-size: 18px;">___개 완료</div>
               </caption>

               <thead>
                  <tr>
                     <th scope="col">no.</th>
                     <th scope="col">Title</th>
                     <th scope="col">progress</th>
                  </tr>
               </thead>
               <tbody>
                 <tag:End_chal></tag:End_chal>
               </tbody>
            </table>
         </div>
      </div>
   </div>
   </div>

   <!-- footer start -->
   <jsp:include page="footer.jsp"></jsp:include>

</body>

</html>