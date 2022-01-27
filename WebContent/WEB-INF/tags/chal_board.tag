<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:forEach var="v" items="${post}" varStatus="status">

	<div class="card mb-2 w-100" id="style">
		<div class="card-header">
			<h6 class="card-title">

				<i class="fa fa-hand-o-right fa-2x mr-2 mt-0-20 pull-left" aria-hidden="true" style="color : blue"></i>
					<a href="postDetail.bo?p_code=${v.p_code}"><span id="p_title">${v.p_title}</span></a> 
				<a class="text-muted text-uppercase" data-toggle="collapse"	href="#question${status.index}" style="font-size: 25px;">
					<i class="fa fa-minus mr-2 text-slate pull-right" style="float: right;"></i></a>
					<c:if test="${v.u_code eq session_user.u_code}">
					<input
					type="button" class="btn btn-default disabled" value="삭제"
					style="float: right;"
					onClick="location.href='deletePost.bo?p_code=${v.p_code}'">
					</c:if>
					<%-- <input
					type="button" class="btn btn-default disabled" value="수정"
					style="float: right;"
					onClick="location.href='editPost.bo?c_code=${v.p_code}'"> --%>
			
			</h6>
		</div>

		<div id="question${status.index}" class="collapse" style="">
			<!-- 데이터 : //테이블에 제목값 , 챌린지내용, -for 시작-->

			<div class="card-body" id="font"><span id="p_text">${v.p_text} </span></div>
			<div class="card-footer bg-transparent d-sm-flex align-items-sm-center border-top-0 pt-0">
				<span class="text-muted">작성일</span>
			<!-- 	<ul class="list-inline text-nowrap mb-0 ml-auto mt-2 mt-sm-0">
					<li class="list-inline-item"><a href="#"
						class="text-primary mr-2" data-abc="true"><i
							class="fa fa-thumbs-up"></i></a> 3120</li>
					<li class="list-inline-item" id="black"><a href="#"
						class="text-muted mr-2" data-abc="true"><i
							class="fa fa-thumbs-down"></i></a> 114</li>
				</ul> -->
			</div>
		</div>
		<!-- 종료  -->
	</div>
</c:forEach>

