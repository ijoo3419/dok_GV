<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</head>
	<body class="is-preload">
			
			<%@ include file="../common/headBar.jsp"%>
			
			<div id="wrapper" class="fade-in">
					
					<header id="header">
					</header>
			    
					<nav id="nav">
			<ul class="links">
				<li><a href="member.me">나의 독GV</a>
				<li><a href="editInfo.me">회원정보수정</a></li>
				<li class="active"><a href="bookingHist.me">예매확인/취소</a></li>
				<li><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me?mid=${ sessionScope.loginUser.mid }">위시리스트</a></li>
				<li><a href="reviews.me">내가 쓴 리뷰</a></li>
				<c:if test="${ sessionScope.loginUser.user_class eq 'BUYER'}">
				<li><a href="theaterAdd.me">영화관 등록</a></li>
				</c:if>
			</ul>
					</nav>

					<div id="main">

			<section class="post">
				<header class="major">
					<h3>예매 확인/취소</h3>
					<h6>예매하신 영화 내역과 취소 내역을 확인할 수 있습니다.</h6>
				</header>
			</section>
			
			<div class="table-wrapper">
										<table>
											<thead>
												<tr>
													<th>No</th>
													<th>예매번호</th>
													<th>영화명</th>
													<th>영화관</th>
													<th>상영일시</th>
													<th>예매일</th>
													<th>예매상태</th>
												</tr>
											</thead>
											
											<c:forEach items="${ bookingHist }" var="bk">
											
											<tbody>
												<tr>
													<td>[번호 ]</td>
													<td>[예매번호]</td>
													<td>[영화 제목 ]</td>
													<td>[영화관 이름 ]</td>
													<td>[날짜 ]</td>
													<td>[예매일 ]</td>
													<td>[예매확인/취소/리뷰]</td>
												</tr>
											</tbody>
											</c:forEach>
										</table>
									</div>
			
			
			
			
		</div>
					<div id="copyright">
						<ul><li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li></ul>
					</div>

			</div>

	<script src="${contextPath }/resources/js/jquery.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrollex.min.js"></script>
	<script src="${contextPath }/resources/js/jquery.scrolly.min.js"></script>
	<script src="${contextPath }/resources/js/browser.min.js"></script>
	<script src="${contextPath }/resources/js/breakpoints.min.js"></script>
	<script src="${contextPath }/resources/js/util.js"></script>
	<script src="${contextPath }/resources/js/main.js"></script>

	</body>
</html>