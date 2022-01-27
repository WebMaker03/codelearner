
<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:forEach var="v" items="${pro_chalList_C}" varStatus="status">
     <tr>
                     <th scope="row">${status.count}</th>
                     <td>${v.c_name}</td>
                     <td>
                        <nav>
                           <ul class="pager" 
                              style="background-color: #6495ED; margin-left: 25%; width: 150px;">
                              <li><a href="prochal_detail.ch?c_code=${v.c_code}&&mc_code=${pro_chalList[status.index].mc_code}" style="color: white;">인증보러가기</a></li>
                           </ul>
                        </nav>
                     </td>
                  </tr>
</c:forEach>

<!--  <tr>
                     <th scope="row">1</th>
                     <td>challenge1</td>
                     <td>
                        <nav>
                           <ul class="pager"
                              style="background-color: #6495ED; margin-left: 25%; width: 150px;">
                              <li><a href="#" style="color: white;">인증보러가기</a></li>
                           </ul>
                        </nav>
                     </td>
                  </tr>
-->
                  