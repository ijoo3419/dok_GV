<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

	<!-- Wrapper -->
	<div id="wrapper" class="fade-in">

		<!-- Header -->

		<header id="header"> </header>

		<!-- Nav -->
		<nav id="nav">
			<ul class="links">
				<li><a href="member.me">나의 독GV</a>
				<li><a href="editInfo.me">회원정보수정</a></li>
				<li><a href="bookingHist.me">예매확인/취소</a></li>
				<li class="active"><a href="ask.me">문의내역</a></li>
				<li><a href="wishlist.me">위시리스트</a></li>
				<li><a href="reviews.me">내가 쓴 리뷰</a></li>
				<li><a href="theaterAdd.me">영화관 등록</a></li>
			</ul>
		</nav>

		<!-- Main -->
		<div id="main">


			<!-- Posts -->
			<section class="post">
				<header class="major">
					<h3>나의 문의 내역</h3>
					<h6>고객센터에서 남겨주신 문의내역을 모두 확인하실 수 있습니다.</h6>
				</header>
			</section>
			
			<div class="table-wrapper">
										<table>
											<thead>
												<tr>
													<th>No</th>
													<th>제목</th>
													<th>답변상태</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>[문의글번호]</td>
													<td>[말머리 + 문의 제목 + 누르면 해당 문의 게시판으로 이동 (가능할까?)]</td>
													<td>[답변상태 ]</td>
												</tr>
												<tr>
													<td>Item 2</td>
													<td>Vis ac commodo adipiscing arcu aliquet.</td>
													<td>19.99</td>
												</tr>
												<tr>
													<td>Item 3</td>
													<td> Morbi faucibus arcu accumsan lorem.</td>
													<td>29.99</td>
												</tr>
												<tr>
													<td>Item 4</td>
													<td>Vitae integer tempus condimentum.</td>
													<td>19.99</td>
												</tr>
												<tr>
													<td>Item 5</td>
													<td>Ante turpis integer aliquet porttitor.</td>
													<td>29.99</td>
												</tr>
											</tbody>
											<tfoot>
												<tr>
													<td colspan="2"></td>
													<td>100.00</td>
												</tr>
											</tfoot>
										</table>
									</div>
			
			
			
			
		</div>
		
		
		

		<!-- Copyright -->
		<div id="copyright">
			<ul>
				<li>&copy; Untitled</li>
				<li>Design: <a href="https://html5up.net">HTML5 UP</a></li>
			</ul>
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