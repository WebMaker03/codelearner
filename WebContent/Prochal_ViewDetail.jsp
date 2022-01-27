<%@page import="DTO.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인증목록 상세보기</title>
<link rel="stylesheet" href="css/Prochal_ViewDetail.css">
<!-- responsive-->
<link rel="stylesheet" href="css/responsive.css">
<!-- bootstrap css -->
<link rel="stylesheet" href="css/bootstrap.min.css">


</head>
<body>
<jsp:include page="header.jsp"></jsp:include>

<div class="row d-flex justify-content-center">
    <div class="col-md-4" style="margin-top: 170px; margin-bottom: 10px " >
        <div class="main-card mb-3 card" id="prochal">
            <div class="card-header" id="pro" >${ver.v_date } <br>별점 : ${ver.rating } 
                
            </div>
            <div class="card-body" id="ca_body">
                <div class="tab-content">
                    <div class="tab-pane show active" id="tab-eg3-0" role="tabpanel">
                    ${ver.v_text }
                    </div>
                </div>
            </div>
            <div class="d-block text-right card-footer" id="proch"> <a class="btn-wide btn btn-success" id="proc" href="prochal_detail.ch?c_code=${ch.c_code}&&mc_code=${ver.mc_code}">확인</a> </div>

        </div>
    </div>
</div>

 <!-- footer start -->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>