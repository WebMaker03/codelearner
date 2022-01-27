<%@ tag language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<c:forEach var="v" items="${show_challenge}" varStatus="status">
	<c:choose>
		<c:when
			test="${status.first and status.count == fn:length(show_challenge)}">
			<!-- 개수가 1인 경우 (시작과 동시에 닫힘)-->
			<div class="carousel-item active">
				<div class="container-fluid">
					<div class="carousel-caption we1_do">
						<div class="row">
							<div class="col-md-4">
								<div id="bo_hoo" class="we_boxx text_align_left">
									<i><img src="images/${v.theme}/${v.img}" id="im" alt="#" /></i>
									<h3>${v.c_name}</h3>
									<p>${v.info }</p>
									<a class="read_moree" href="showchal.ch?chalCode=${v.c_code}">Read More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</c:when>
		<c:when test="${status.first}">
			<!--총 개수가 1이 아닌 시작! 오픈 -->
			<div class="carousel-item active">
				<div class="container-fluid">
					<div class="carousel-caption we1_do">
						<div class="row">
							<div class="col-md-4">
								<div id="bo_hoo" class="we_boxx text_align_left">
									<i><img src="images/${v.theme}/${v.img}" id="im" alt="#" /></i>
									<h3>${v.c_name}</h3>
									<p>${v.info }</p>
									<a class="read_moree" href="showchal.ch?chalCode=${v.c_code}">Read More</a>
								</div>
							</div>
		</c:when>
		<c:when test="${status.index %3 eq 0 and !status.last}">
			<!-- 다음창 열어야하는 경우 -->
			<div class="carousel-item">
				<div class="container-fluid">
					<div class="carousel-caption we1_do">
						<div class="row">
							<div class="col-md-4">
								<div id="bo_hoo" class="we_boxx text_align_left">
									<i><img src="images/${v.theme}/${v.img}" id="im" alt="#" /></i>
									<h3>${v.c_name}</h3>
									<p>${v.info }</p>
									<a class="read_moree" href="showchal.ch?chalCode=${v.c_code}">Read More</a>
								</div>
							</div>
		</c:when>
		<c:when test="${status.index%3 eq 0 and status.last}">
			<!-- 새로 시작했는데 마지막인 경우 -->
			<div class="carousel-item">
				<div class="container-fluid">
					<div class="carousel-caption we1_do">
						<div class="row">
							<div class="col-md-4">
								<div id="bo_hoo" class="we_boxx text_align_left">
									<i><img src="images/${v.theme}/${v.img}" id="im" alt="#" /></i>
									<h3>${v.c_name}</h3>
									<p>${v.info }</p>
									<a class="read_moree" href="showchal.ch?chalCode=${v.c_code}">Read More</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

		</c:when>
		<c:when test="${status.index %3 ne 2 and status.last}">
			<!--3개 다 안찼는데 마지막이 경우(닫아줘야함.)-->
			<div class="col-md-4">
				<div id="bo_hoo" class="we_boxx text_align_left">
					<i><img src="images/${v.theme}/${v.img}" id="im" alt="#" /></i>
					<h3>${v.c_name}</h3>
					<p>${v.info }</p>
					<a class="read_moree" href="showchal.ch?chalCode=${v.c_code}">Read More</a>
				</div>
			</div>
			</div>
			</div>
			</div>
			</div>
		</c:when>
		<c:when test="${status.index %3 ne 2}">
			<div class="col-md-4">
				<div id="bo_hoo" class="we_boxx text_align_left">
					<i><img src="images/${v.theme}/${v.img}" id="im" alt="#" /></i>
					<h3>${v.c_name}</h3>
					<p>${v.info }</p>
					<a class="read_moree" href="showchal.ch?chalCode=${v.c_code}">Read More</a>
				</div>
			</div>
		</c:when>
		<c:when test="${status.index %3 eq 2}">
			<!--  마지막인 경우-->
			<div class="col-md-4">
				<div id="bo_hoo" class="we_boxx text_align_left">
					<i><img src="images/${v.theme}/${v.img}" id="im" alt="#" /></i>
					<h3>${v.c_name}</h3>
					<p>${v.info}</p>
					<a class="read_moree" href="showchal.ch?chalCode=${v.c_code}">Read More</a>
				</div>
			</div>
			</div>
			</div>
			</div>
			</div>
		</c:when>

		<c:when test="${status.last}">
			<!-- 마지막인 경우-->
			</div>
			</div>
			</div>
			</div>
		</c:when>
	</c:choose>

</c:forEach>