<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:forEach var="v" items="${cList}" varStatus="status">

							<div class="commented-section mt-2">
								<div class="d-flex flex-row align-items-center commented-user" id="post">
									<h5 class="mr-2" 
    style="font-size: 16px">${uList[status.index].u_name}</h5>
									<span class="dot mb-1" style="font-size: 16px"></span><span style="margin-left: 3px;"> 아이디  : ${uList[status.index].userid}</span>
								</div>
								<div class="comment-text-sm" id="comment" style="font-size: 16px; margin-top: 10px" >
									<span>${v.cm_text}</span>
								</div>
								
								<c:if test="${v.u_code eq session_user.u_code}">
									<ul class="nav justify-content-end">
										<button type="button" class="btn btn-link" onclick="location.href='delCmt.bo?cm_code=${v.cm_code}'">삭제</button>
										
									</ul>
								</c:if>
								
							</div>
							<hr>



	
</c:forEach>

