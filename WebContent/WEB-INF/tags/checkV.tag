<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:choose>
   <c:when test="${Vcheck==true }">
   <button type="button" class="btn btn-danger"
                              data-toggle="modal" data-target="#modalBox">인증하기</button>
   </c:when>
   <c:otherwise>
   <button type="button"  class="btn btn-danger" data-toggle="modal" data-target="#modalBox" disabled>인증하기</button>
   </c:otherwise>
</c:choose>