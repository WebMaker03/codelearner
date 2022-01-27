<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- bootstrap css -->

<link rel="stylesheet" href="css/theme_detail_test.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>

<jsp:include page="header.jsp"></jsp:include>

<div class="container d-flex justify-content-center mt-40 mb-50" >
    <div class="w-100 overflow-auto order-2 order-md-1" style="margin-top: 170px">
        <div class="card-group-control card-group-control-right">
            <div class="card mb-2 w-100" style="border:#7BBBD6 solid 4px">
                <div class="card-header">
                    <h6 class="card-title"> <a class="text-muted text-uppercase" data-toggle="collapse" href="#question1" style="font-size:25px;"><i class="fa fa-hand-o-right mr-2 mt-0-20 pull-left" aria-hidden="true"></i>걷기<i class="fa fa-minus mr-2 text-slate pull-right"></i> </a> </h6>
                </div>
                
                <div id="question1" class="collapse show" style="">
                <!-- 데이터 : //테이블에 제목값 , 챌린지내용, -for 시작-->
                    <div class="card-body"> Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book </div>
                    <div class="card-footer bg-transparent d-sm-flex align-items-sm-center border-top-0 pt-0"> <span class="text-muted">Latest update: May 25, 2019</span>
                        <ul class="list-inline text-nowrap mb-0 ml-auto mt-2 mt-sm-0">
                            <li class="list-inline-item"><a href="#" class="text-primary mr-2" data-abc="true"><i class="fa fa-thumbs-up"></i></a> 3120</li>
                            <li class="list-inline-item"><a href="#" class="text-muted mr-2" data-abc="true"><i class="fa fa-thumbs-down"></i></a> 114</li>
                        </ul>
                    </div>
                </div>
                <!-- 종료  -->
            </div>
            <div class="card mb-2 w-100" style="border:#7BBBD6 solid 4px">
                <div class="card-header">
                    <h6 class="card-title"> <a class="text-muted text-uppercase" data-toggle="collapse" href="#question2" style="font-size:25px;"><i class="fa fa-hand-o-right mr-2 mt-0-20 pull-left" aria-hidden="true"></i>뛰기<i class="fa fa-minus mr-2 text-slate pull-right"></i> </a> </h6>
                </div>
                <div id="question2" class="collapse" style="">
                    <div class="card-body"> Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, </div>
                    <div class="card-footer bg-transparent d-sm-flex align-items-sm-center border-top-0 pt-0"> <span class="text-muted">Latest update: March 22, 2020</span>
                        <ul class="list-inline text-nowrap mb-0 ml-auto mt-2 mt-sm-0">
                            <li class="list-inline-item"><a href="#" class="text-primary mr-2" data-abc="true"><i class="fa fa-thumbs-up"></i></a> 3120</li>
                            <li class="list-inline-item"><a href="#" class="text-muted mr-2" data-abc="true"><i class="fa fa-thumbs-down"></i></a> 114</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="card mb-2 w-100" style="border:#7BBBD6 solid 4px">
                <div class="card-header">
                   <h6 class="card-title"> <a class="text-muted text-uppercase" data-toggle="collapse" href="#question3" style="font-size:25px;"><i class="fa fa-hand-o-right mr-2 mt-0-20 pull-left" aria-hidden="true"></i>농구<i class="fa fa-minus mr-2 text-slate pull-right"></i> </a> </h6>
                </div>
                <div id="question3" class="collapse" style="">
                    <div class="card-body"> There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum </div>
                    <div class="card-footer bg-transparent d-sm-flex align-items-sm-center border-top-0 pt-0"> <span class="text-muted">Latest update: March 25, 2020</span>
                        <ul class="list-inline text-nowrap mb-0 ml-auto mt-2 mt-sm-0">
                            <li class="list-inline-item"><a href="#" class="text-primary mr-2" data-abc="true"><i class="fa fa-thumbs-up"></i></a> 2220</li>
                            <li class="list-inline-item"><a href="#" class="text-muted mr-2" data-abc="true"><i class="fa fa-thumbs-down"></i></a> 114</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

    


</body>
<script src=https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js></script>
<script src=https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>
</html>