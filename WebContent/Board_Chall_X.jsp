
<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="css/Board_Chall.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/responsive.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- style css -->
<link rel="stylesheet" href="css/style.css">
</head>
<body> 

	<jsp:include page="header.jsp"></jsp:include>
	
<div class="container rounded bg-white p-md-5" >
    <div class="h2 font-weight-bold" style="margin-top:200px">진행중 챌린지 게시판</div>
    <div class="table-responsive">
        <table class="table">
            <thead>
                <tr>
                    <th scope="col">날짜</th>
                    <th scope="col">글쓴이</th>
                    <th scope="col">테마</th>
                    <th scope="col">글제목</th>
                     <th scope="col">조회수</th>
                      <th scope="col">게시판 열람</th>
                </tr>
            </thead>
            <tbody>
                <tr class="bg-blue">
                    <td class="pt-2"> 
                         <div class="pl-lg-5 pl-md-3 pl-1 name">Emilia Kollette</div>
                    </td>
                    <td class="pt-3 mt-1">25 Sep 2020</td>
                    <td class="pt-3">11:00 AM</td>
                    <td class="pt-2"> 
                         <div class="pl-lg-5 pl-md-3 pl-1 name">Emilia Kollette</div>
                    </td>
                    <td class="pt-3"><span class="fa fa-check pl-3"></span></td>
                    <td class="pt-3"><span class="fa fa-ellipsis-v btn"></span></td>
                </tr>
                <tr id="spacing-row">
                    <td></td>
                </tr>
                <tr class="bg-blue">
                    <td class="pt-2"> 
                        <div class="pl-lg-5 pl-md-3 pl-1 name">Anny Adams</div>
                    </td>
                    <td class="pt-3">26 Sep 2020</td>
                    <td class="pt-3">11:00 AM</td>
                    <td class="pt-3"><span class="fa fa-check pl-3"></span></td>
                    <td class="pt-3"><span class="fa fa-ellipsis-v btn"></span></td>
                </tr>
                <tr id="spacing-row">
                    <td></td>
                </tr>
                <tr class="bg-blue">
                    <td class="pt-2"> 
                        <div class="pl-lg-5 pl-md-3 pl-1 name">Arnold Linn</div>
                    </td>
                    <td class="pt-3">26 Sep 2020</td>
                    <td class="pt-3">02:00 PM</td>
                    <td class="pt-3"><span class="fa fa-check pl-3"></span></td>
                    <td class="pt-3"><span class="fa fa-ellipsis-v btn"></span></td>
                </tr>
                <tr id="spacing-row">
                    <td></td>
                </tr>
                <tr class="bg-blue">
                    <td class="pt-2"> 
                        <div class="pl-lg-5 pl-md-3 pl-1 name">Josh Limosel</div>
                    </td>
                    <td class="pt-3">26 Sep 2020</td>
                    <td class="pt-3">04:00 PM</td>
                    <td class="pt-3"><span class="fa fa-minus pl-3"></span></td>
                    <td class="pt-3"><span class="fa fa-ellipsis-v btn"></span></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>

	<jsp:include page="footer.jsp"></jsp:include>
</body>
<script src=https://stackpath.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.bundle.min.js></script>
<script src=https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js></script>
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.bundle.min.js"></script>

</html>