<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:forEach var="v" items="${post}" varStatus="status">
	<div class="card mb-2 w-100" style="border: #7BBBD6 solid 4px">
		<div class="card-header">
			<h6 class="card-title">
				<a class="text-muted text-uppercase" data-toggle="collapse"
					href="#question1" style="font-size: 25px;"><i
					class="fa fa-hand-o-right mr-2 mt-0-20 pull-left"
					aria-hidden="true"></i>${v.p_title} <i
					class="fa fa-minus mr-2 text-slate pull-right" style="float: right;"></i>
					<input
					type="button" class="btn btn-default disabled" value="삭제"
					style="float: right;"
					onClick="location.href='newPost.bo?c_code=${c_code}'">
					<input
					type="button" class="btn btn-default disabled" value="수정"
					style="float: right;"
					onClick="location.href='newPost.bo?c_code=${c_code}'">
				</a>
			</h6>
		</div>

		<div id="question1" class="collapse show" style="">
			<!-- 데이터 : //테이블에 제목값 , 챌린지내용, -for 시작-->
			<div class="card-body">${v.p_text}</div>
			<div
				class="card-footer bg-transparent d-sm-flex align-items-sm-center border-top-0 pt-0">
				<span class="text-muted">나알 짜</span>
				<ul class="list-inline text-nowrap mb-0 ml-auto mt-2 mt-sm-0">
					<li class="list-inline-item"><a href="#"
						class="text-primary mr-2" data-abc="true"><i
							class="fa fa-thumbs-up"></i></a> 3120</li>
					<li class="list-inline-item"><a href="#"
						class="text-muted mr-2" data-abc="true"><i
							class="fa fa-thumbs-down"></i></a> 114</li>
				</ul>
			</div>
		</div>
		<!-- 종료  -->
	</div>
</c:forEach>

