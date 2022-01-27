

<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:forEach var="v" items="${pro_chalList_C}" varStatus="status">
     <tr>
                     <th scope="row">${status.count}</th>
                     <td>${v.c_name}</td>
                     <td>
                        <nav>
                           <ul class="pager" >
                              <li><a href="prochal_detail.ch?c_code=${v.c_code}&&mc_code=${pro_chalList[status.index].mc_code}" style="border: #7BBBD6 solid 3px;border-radius: 10px;background-color: #E1F2F9;
    color: black;">인증보러가기</a></li>
                           </ul>
                        </nav>
                     </td>
                  </tr>
</c:forEach>


                  