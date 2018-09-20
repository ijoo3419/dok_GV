
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.min.js"></script>
<style>
	input {
			margin-right:700px;
} 

     
          
</style>
<meta charset="UTF-8">
<title>Insert title here</title>

<title>Massively by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="${contextPath }/resources/css/main.css" />
	<link rel="stylesheet"
		href="${contextPath }/resources/css/noscript.css" />

</head>
<body class="is-preload">


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
				<li><a href="playManagePage.jsp"><font size="4">상영등록</font></a></li>
				<li class="active"><a href="theaterManagePage.jsp"><font size="4">영화관 등록</font></a></li>
				<li><a href="movieRoomManagePage.jsp"><font size="4">상영관 등록</font></a></li>
				<li><a href="statsManagePage.jsp"><font size="4">통계/관리</font></a></li>
				<li><a href="reservationManagePage.jsp"><font size="4">예매 현황</font></a></li>
				<li><a href="noticeManagePage.jsp"><font size="4">공지사항 등록</font></a></li>
				<li><a href="inquireManagePage.jsp"><font size="4">문의내역</font></a></li>

			</ul>

		</nav>

		<!-- Main -->
		<div id="main">

			<!-- Featured Post -->
			<article class="post featured">
				
				<!-- 영화관 정보 폼 -->

				<form action="insert.me" method="post" encType="multipart/form-data">




					<div class="row gtr-uniform">
						
						<div class="col-6 col-12-xsmall">
							<h2 align="left">1.영화관 이름</h2>
							<input type="text" name="demo-name" id="demo-name" value=""
								placeholder="영화관 이름을 입력하세요." />				
							</div>
						</div>
						<br><br>
						<h2 align="left">2.영화관 정보</h2>
							<!-- Break -->
						<div class="col-12">
							<textarea name="demo-message" id="demo-message"
								placeholder="영화관 정보를 입력해 주세요" rows="6"></textarea>
						</div>
						<br><br>
						<h2 align="left">3.찾아오는 길</h2>
							<!-- Break -->
						<div class="col-12">
							<textarea name="demo-message" id="demo-message"
								placeholder="찾아오는 길을 입력해 주세요" rows="6"></textarea>
						</div>
						<br><br>
						<h2 align="left">4.영화관 사진</h2>
						<div class="col-12">
					
						<input type="file"><br>
						<input type="file"><br>
						<input type="file">
						</div>
					</div>
				</form>

				<hr />



			</article>

		</div>

		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.scrollex.min.js"></script>
		<script src="assets/js/jquery.scrolly.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
</body>
</html>