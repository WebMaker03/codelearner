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
            <div class="card-header" id="pro" >21.06.21 <br> 별점 : 5점 <div class="btn-actions-pane-right actions-icon-btn">
                    <div role="group" class="btn-group-sm nav btn-group"> <a data-toggle="tab" href="#tab-eg3-0" class="btn-shadow btn btn-dark show active" data-abc="true">Tab 1</a> <a data-toggle="tab" href="#tab-eg3-1" class="btn-shadow btn btn-dark show" data-abc="true">Tab 2</a> <a data-toggle="tab" href="#tab-eg3-2" class="btn-shadow btn btn-dark show" data-abc="true">Tab 3</a> </div>
                </div>
            </div>
            <div class="card-body" id="ca_body">
                <div class="tab-content">
                    <div class="tab-pane show active" id="tab-eg3-0" role="tabpanel">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
                    </div>
                    <div class="tab-pane show" id="tab-eg3-1" role="tabpanel">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sit amet mattis vulputate enim nulla aliquet porttitor lacus. Eros donec ac odio tempor orci dapibus ultrices in iaculis. Hac habitasse platea dictumst quisque sagittis purus sit amet. Non consectetur a erat nam at lectus urna duis convallis. Nec tincidunt praesent semper feugiat. Orci sagittis eu volutpat odio facilisis mauris sit. Velit aliquet sagittis id consectetur purus. Lacus luctus accumsan tortor posuere. At erat pellentesque adipiscing commodo elit.</p>
                    </div>
                    <div class="tab-pane show" id="tab-eg3-2" role="tabpanel">
                        <p>Vestibulum lorem sed risus ultricies tristique. Volutpat consequat mauris nunc congue nisi vitae suscipit. Pretium fusce id velit ut. Magna sit amet purus gravida quis blandit. Duis at tellus at urna condimentum mattis pellentesque id nibh. Metus vulputate eu scelerisque felis imperdiet proin. Libero enim sed faucibus turpis in eu mi bibendum neque. Aliquam eleifend mi in nulla posuere sollicitudin aliquam. Cras fermentum odio eu feugiat. Semper eget duis at tellus at urna condimentum mattis pellentesque. Eget mauris pharetra et ultrices neque ornare. Platea dictumst quisque sagittis purus sit amet volutpat consequat.</p>
                    </div>
                </div>
            </div>
            <div class="d-block text-right card-footer" id="proch"> <a class="btn-wide btn btn-success" id="proc" href="Prochal_detail.jsp">확인</a> </div>
        </div>
    </div>
</div>

 <!-- footer start -->
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>