<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- responsive-->
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="css/Chall_Detail.css">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>
   <!--For Page-->

   <div class='container'>
      <div class="row">
         <div class="col scroll">
            <div class="card">
               <div class="card-title d-flex px-4">
                  <p class="challenge_title">${challenge.c_name}</p>

               </div>
               <div class="row">
                  <img id=challenge_img src= "images/${challenge.theme}/${challenge.img}" /><br>
                  <div class="col">
                     <div class="row">
                        <div class="card" id="chell_info">
                           <div class="row">
                              <i class="fa fa-thumbs-o-up fa-3x" aria-hidden="true"></i> <span
                                 id="chel_people"> 챌린지 가입자 수 : 100명</span>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="card" id="chell_info">
                           <div class="row">
                              <i class="fa fa-clock-o fa-3x" aria-hidden="true"></i> <span
                                 id="chel_people"> 챌린지 기간:&nbsp ${challenge.period} 일</span>
                           </div>
                        </div>
                     </div>
                     <div class="row">
                        <div class="card" id="chell_info">
                           <div class="row">
                              <i class="fa fa-star fa-3x" aria-hidden="true"></i> <span
                                 id="chel_people"> 챌린지 포인트 :&nbsp ${challenge.fee} 점</span>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
               <hr id="line">
               <div class="card-body">
                  <p class="text-muted">챌린지 정보</p>
                  <div class="challenge_info mb-3">${challenge.info}</div>

               </div>
               <hr id="line">
               <div class="buttons">
                  <a class="btn btn-primary" href="startchal.ch?c_code=${challenge.c_code}&u_code=${session_user.u_code}">참가하기</a>
                  <a class="btn btn-primary" href="#" onclick="history.go(-1)" role="button">Cancel</a>
               </div>
            </div>
         </div>
      </div>
   </div>


</body>
</html>