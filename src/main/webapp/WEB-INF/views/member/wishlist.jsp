<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li><a href="ask.me">문의내역</a></li>
				<li class="active"><a href="wishlist.me">위시리스트</a></li>
				<li><a href="reviews.me">내가 쓴 리뷰</a></li>
				<c:if test="${ sessionScope.loginUser.user_class eq 'BUYER'}">
				<li><a href="theaterAdd.me">영화관 등록</a></li>
				</c:if>
			</ul>

					</nav>

					<div id="main">
					
						<section class="post">
							<header class="major">
								<h3>위시리스트</h3>
								<h6>보고싶어 버튼을 누르신 영화의 목록이 표시됩니다.
									<br> (포스터 뜨고 클릭하면 영화 상세보기)
								</h6>
							</header>
						</section>
						
						
						<c:forEach items="${ wishlistView }" var="row">
					<div id="thumbnail">
						<${ row.file_src }>
					</div>
						</c:forEach>
						
						
									
									<!-- <div class="box alt">
										<div class="row gtr-50 gtr-uniform">
											<div class="col-4"><span class="image fit"><img src="images/pic02.jpg" alt="" /></span></div>
											<div class="col-4"><span class="image fit"><img src="images/pic03.jpg" alt="" /></span></div>
											<div class="col-4"><span class="image fit"><img src="images/pic04.jpg" alt="" /></span></div>
											Break
											<div class="col-4"><span class="image fit"><img src="images/pic04.jpg" alt="" /></span></div>
											<div class="col-4"><span class="image fit"><img src="images/pic02.jpg" alt="" /></span></div>
											<div class="col-4"><span class="image fit"><img src="images/pic03.jpg" alt="" /></span></div>
											Break
											<div class="col-4"><span class="image fit"><img src="images/pic03.jpg" alt="" /></span></div>
											<div class="col-4"><span class="image fit"><img src="images/pic04.jpg" alt="" /></span></div>
											<div class="col-4"><span class="image fit"><img src="images/pic02.jpg" alt="" /></span></div>
										</div>
									</div> -->         


				</div>


				<!-- Copyright -->
					<div id="copyright">
						<ul><li>&copy; Untitled</li><li>Design: <a href="https://html5up.net">HTML5 UP</a></li></ul>
					</div>

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