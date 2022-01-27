<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>

	<c:when test="${Vcheck==true }">
	<button type="button" class="btn btn-danger"
                              data-toggle="modal" data-target="#modalBox" style=" border: #7BBBD6 solid 3px;
     border-radius: 10px; background-color:#E1F2F9; color:black;">인증하기</button>
	</c:when>
	<c:otherwise>
	<button type="button"  class="btn btn-danger" data-toggle="modal" data-target="#modalBox" disabled>인증하기</button>
	</c:otherwise>

</c:choose>