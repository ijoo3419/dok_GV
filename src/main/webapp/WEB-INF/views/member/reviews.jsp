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
			
		<!-- Wrapper -->
			<div id="wrapper" class="fade-in">
				<!-- Intro -->
				
				
					<!-- <div id="intro">
						<h1>This is<br />
						Massively</h1>
						<p>A free, fully responsive HTML5 + CSS3 site template designed by <a href="https://twitter.com/ajlkn">@ajlkn</a> for <a href="https://html5up.net">HTML5 UP</a><br />
						and released for free under the <a href="https://html5up.net/license">Creative Commons license</a>.</p>
						<ul class="actions">
							<li><a href="#header" class="button icon solo fa-arrow-down scrolly">Continue</a></li>
						</ul> 
						
					</div>
			 -->
				<!-- Header -->
					
					<header id="header">
						<!-- <a href="index.html" class="logo">Massively</a> -->
					</header>
			    
				<!-- Nav -->
					<nav id="nav">
			<ul class="links">
				<li><a href="member.me">나의 독GV</a>
				<li><a href="editInfo.me">회원정보수정</a></li>
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me?mid=${ sessionScope.loginUser.mid }">위시리스트</a></li>
				<li class="active"><a href="reviews.me">내가 쓴 리뷰</a></li>
				<c:if test="${ sessionScope.loginUser.user_class eq 'BUYER'}">
				<li><a href="theaterAdd.me">영화관 등록</a></li>
				</c:if>
			</ul>
						<!--  <ul class="icons">
							<li><a href="#" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
							<li><a href="#" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="#" class="icon fa-instagram"><span class="label">Instagram</span></a></li>
							<li><a href="#" class="icon fa-github"><span class="label">GitHub</span></a></li>
						</ul>-->
					</nav>

				<!-- Main -->
					<div id="main">


						<!-- Posts -->
									<section class="post">
				<header class="major">
					<h3>나의 한줄평</h3>
					<h6></h6>
				</header>
			</section>
			
			<div class="table-wrapper">
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
													<td>[포스터 ]</td>
													<td>[영화제목]</td>
													<td>[별점 ]</td>
													<td>[한줄평 ]</td>
													<td>[한줄평 좋아요 + 날짜 ]</td>
													<td>[ 수정버튼 ]</td>
													<td>[ 삭제버튼 ]</td>
												</tr>

										</table>
									</div>
			
			
			
			
		</div>
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