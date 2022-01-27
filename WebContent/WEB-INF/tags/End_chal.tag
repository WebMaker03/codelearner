<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<c:forEach var="list1" items="${end_chalList}" varStatus="status">

	<tr>

		<th scope="row">${status.count}</th>
		<td>${end_chalList_D[status.index].c_name}</td>
		<td>
			<div class="progress">
				<div class="progress-bar" role="progressbar" aria-valuenow="${endPercent[status.index]}"
					aria-valuemin="0" aria-valuemax="100" style="width: ${endPercent[status.index]}%;">${endPercent[status.index]}%</div>
			</div>
		</td>
	</tr>
</c:forEach>



<!--   <tr>
                     <th scope="row">1</th>
                     <td>challenge1</td>
                     <td>
                        <div class="progress">
                           <div class="progress-bar" role="progressbar" aria-valuenow="80"
                              aria-valuemin="0" aria-valuemax="100" style="width: 80%;">80%</div>
                        </div>
                     </td>
                  </tr -->