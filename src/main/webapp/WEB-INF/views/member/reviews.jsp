<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
<body class="is-preload">

	<%@ include file="../common/headBar.jsp"%>


	<div id="wrapper" class="fade-in">

		<header id="header"> </header>

		<nav id="nav">
			<ul class="links">
				<li><a href="member.me">나의 독GV</a>
				<li><a href="editInfo.me">회원정보수정</a></li>
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me">위시리스트</a></li>
				<li class="active"><a href="reviews.me">내가 쓴 리뷰</a></li>
				<c:if test="${ sessionScope.loginUser.user_class eq 'BUYER'}">
					<li><a href="theaterAdd.me">판매자 등록</a></li>
				</c:if>
			</ul>

		</nav>


		<div id="main">

			<section class="post">
				<header class="major">
					<h3>나의 한줄평</h3>
					<h6></h6>
				</header>
			</section>
			
			<div class="table-wrapper">
			
			<h4> 영화 리뷰 </h4>
			
			<c:forEach items="${ movieReviews }" var="mv">
				<table>
					<thead>
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td><${ mv.file_src } style="width: auto; height:100px;"></td>
							<td>${ mv.movie_title }</td>
							<c:set var="grade" value="${ mv.grade_count }" />
							<c:choose>
								<c:when test="${ grade eq 0 }">
									<td>☆☆☆☆☆</td>
								</c:when>
								<c:when test="${ grade eq 1 }">
									<td>★☆☆☆☆</td>
								</c:when>
								<c:when test="${ grade eq 2 }">
									<td>★★☆☆☆</td>
								</c:when>
								<c:when test="${ grade eq 3 }">
									<td>★★★☆☆</td>
								</c:when>
								<c:when test="${ grade eq 4 }">
									<td>★★★★☆</td>
								</c:when>
								<c:when test="${ grade eq 5 }">
									<td>★★★★★</td>
								</c:when>
							</c:choose>
									<td><textarea readonly>[영화] ${ mv.rcontent }</textarea></td>
							<td><img src="${ contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;"> ${ mv.recommend_count } </td>
							<td>${ mv.rcreate_date }</td>
							<td><img src="${ contextPath }/resources/images/member/edit.png" width="20" height="20" style="margin-left:10px; margin-top:10px;"></td>
							<td><img src="${ contextPath }/resources/images/member/delete.png" width="20" height="20" style="margin-left:10px; margin-top:10px;"></td>
						</tr>
				</table>
				</c:forEach>
				
			<h4> 영화관 리뷰 </h4>
				
			<c:forEach items="${ cinemaReviews }" var="cr">
				<table>
					<thead>
						<tr>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>${ cr.theater_name }</td>
							<c:set var="grade" value="${ cr.grade_count }" />
							<c:choose>
								<c:when test="${ grade eq 0 }">
									<td>☆☆☆☆☆</td>
								</c:when>
								<c:when test="${ grade eq 1 }">
									<td>★☆☆☆☆</td>
								</c:when>
								<c:when test="${ grade eq 2 }">
									<td>★★☆☆☆</td>
								</c:when>
								<c:when test="${ grade eq 3 }">
									<td>★★★☆☆</td>
								</c:when>
								<c:when test="${ grade eq 4 }">
									<td>★★★★☆</td>
								</c:when>
								<c:when test="${ grade eq 5 }">
									<td>★★★★★</td>
								</c:when>
							</c:choose>
									<td>[영화관] ${ cr.rcontent }</td>
							<td><img src="${ contextPath }/resources/images/like.png" width="20" height="20" style="margin-left:10px; margin-top:10px;"> ${ cr.recommend_count } </td>
							<td>${ cr.rcreate_date }</td>
							<td><img src="${ contextPath }/resources/images/member/edit.png" width="20" height="20" style="margin-left:10px; margin-top:10px;"></td>
							<td><img src="${ contextPath }/resources/images/member/delete.png" width="20" height="20" style="margin-left:10px; margin-top:10px;"></td>
						</tr>
				</table>
				</c:forEach>	
				
				
				
			</div>
		</div>
	</div>


	<!-- Copyright -->
	<div id="copyright">
		<ul>
			<li>&copy; Untitled</li>
			<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
		</ul>
	</div>


	<!-- Scripts -->
	<script src="${contextPath }/resources/js/jquery.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrollex.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrolly.min.js"></script>
	<script src="${contextPath }/resources/js/browser.min.js"></script>
	<script src="${contextPath }/resources/js/breakpoints.min.js"></script>
	<script src="${contextPath }/resources/js/util.js"></script>
	<script src="${contextPath }/resources/js/main.js"></script>

</body>
</html>