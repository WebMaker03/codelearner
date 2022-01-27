<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:forEach var="v" items="${vlist}" varStatus="status">
	<tr>
		<td>${v.v_date}</td>
		<td>${v.rating}</td>

		<td><button href="" type="button" class="badge badge-success"
				id="ca2_btn1">상세보기</button></td>

	</tr>
</c:forEach>